<%@ Page Language="C#" ResponseEncoding="utf-8" ContentType="text/html; charset=utf-8" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="System.Web.Script.Serialization" %>
<script runat="server">
    public class GuestMessage {
        public string Name { get; set; }
        public string Message { get; set; }
        public string Timestamp { get; set; }
        public string IP { get; set; }
    }

    private static string GetFilePath() {
        return HttpContext.Current.Server.MapPath("~/App_Data/guestbook.txt");
    }

    private static void EnsureFileExists(string filePath)
    {
        string dirPath = HttpContext.Current.Server.MapPath("~/App_Data");
        if (!Directory.Exists(dirPath)) {
            Directory.CreateDirectory(dirPath);
        }

        if (!File.Exists(filePath)) {
            File.Create(filePath).Close();
        }
    }

    private static List<GuestMessage> LoadMessagesFromDisk()
    {
        string filePath = GetFilePath();
        EnsureFileExists(filePath);

        List<GuestMessage> messages = new List<GuestMessage>();

        string[] lines = File.ReadAllLines(filePath, System.Text.Encoding.UTF8);
        foreach (string line in lines)
        {
            if (string.IsNullOrWhiteSpace(line)) continue;
            string[] parts = line.Split('|');
            if (parts.Length == 4) {
                messages.Add(new GuestMessage
                {
                    Name = parts[0],
                    Message = parts[1],
                    Timestamp = parts[2],
                    IP = parts[3]
                });
            }
        }

        return messages
            .OrderByDescending(x => {
                DateTime dt;
                return DateTime.TryParse(x.Timestamp, out dt) ? dt : DateTime.MinValue;
            })
            .ToList();
    }

    private List<GuestMessage> GetMessages()
    {
        return LoadMessagesFromDisk();
    }

    [WebMethod]
    public static List<GuestMessage> GetMessagesApi()
    {
        return LoadMessagesFromDisk();
    }

    [WebMethod]
    public static bool AddMessageApi(string name, string message)
    {
        if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(message)) {
            return false;
        }

        string filePath = GetFilePath();
        EnsureFileExists(filePath);

        string line =
            HttpContext.Current.Server.HtmlEncode(name) + "|" +
            HttpContext.Current.Server.HtmlEncode(message) + "|" +
            DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "|" +
            HttpContext.Current.Request.UserHostAddress;

        File.AppendAllText(filePath, line + Environment.NewLine, System.Text.Encoding.UTF8);
        return true;
    }

    [WebMethod]
    public static string GetRawLogApi()
    {
        string filePath = GetFilePath();
        EnsureFileExists(filePath);
        if (File.Exists(filePath)) {
            return File.ReadAllText(filePath, System.Text.Encoding.UTF8);
        }
        return "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["download"] == "log")
        {
            string filePath = GetFilePath();
            if (File.Exists(filePath))
            {
                Response.Clear();
                Response.ContentType = "text/plain; charset=utf-8";
                Response.AddHeader("Content-Disposition", "attachment; filename=guestbook_log.txt");
                Response.WriteFile(filePath);
                Response.End();
                return;
            }
            else
            {
                Response.Write("ยังไม่มีไฟล์ Log (guestbook.txt)");
                Response.End();
                return;
            }
        }

        if (IsPostBack) {
            string name = Request.Form["guestName"];
            string message = Request.Form["guestMessage"];

            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(message)) {
                AddMessageApi(name, message);
                Response.Redirect(Request.RawUrl);
            }
        }
    }
</script>
                <!DOCTYPE html>
                <html lang="th">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>สมุดเยี่ยมชม (Guestbook) - สายชล ยอยโพธิ์สัย</title>
                    <link rel="stylesheet" href="css/style.css">
                    <style>
                        /* === Guestbook Styles === */
                        .guestbook-form-section {
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            color: white;
                            border-radius: 12px;
                            padding: 2.5rem;
                            margin-bottom: 2rem;
                        }

                        .guestbook-form-section h2 {
                            color: white;
                            border-bottom-color: rgba(255, 255, 255, 0.3);
                        }

                        .guestbook-form-section label {
                            color: white;
                        }

                        .guestbook-form-section input,
                        .guestbook-form-section textarea {
                            background: rgba(255, 255, 255, 0.95);
                            border: 2px solid rgba(255, 255, 255, 0.3);
                        }

                        .guestbook-form-section input:focus,
                        .guestbook-form-section textarea:focus {
                            border-color: #ffd700;
                            background: white;
                            box-shadow: 0 0 10px rgba(255, 215, 0, 0.3);
                        }

                        .message-card {
                            background: white;
                            border-radius: 10px;
                            padding: 1.5rem;
                            margin-bottom: 1.2rem;
                            border-left: 4px solid #667eea;
                            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
                            transition: all 0.3s ease;
                            animation: fadeInUp 0.5s ease;
                        }

                        .message-card:hover {
                            transform: translateY(-3px);
                            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.12);
                        }

                        .message-header {
                            display: flex;
                            justify-content: space-between;
                            align-items: center;
                            margin-bottom: 0.8rem;
                            flex-wrap: wrap;
                            gap: 0.5rem;
                        }

                        .message-author {
                            font-weight: 700;
                            color: #2c3e50;
                            font-size: 1.1rem;
                        }

                        .message-time {
                            color: #95a5a6;
                            font-size: 0.85rem;
                        }

                        .message-text {
                            color: #555;
                            line-height: 1.7;
                        }

                        .message-count-badge {
                            display: inline-block;
                            background: linear-gradient(135deg, #667eea, #764ba2);
                            color: white;
                            padding: 0.3rem 1rem;
                            border-radius: 20px;
                            font-size: 0.9rem;
                            font-weight: 600;
                        }

                        .server-info-bar {
                            background: linear-gradient(90deg, #2c3e50, #3498db);
                            color: white;
                            padding: 1rem 1.5rem;
                            border-radius: 8px;
                            margin-bottom: 1.5rem;
                            display: flex;
                            justify-content: space-between;
                            flex-wrap: wrap;
                            gap: 1rem;
                            font-size: 0.9rem;
                        }

                        .validation-error {
                            color: #e74c3c;
                            font-size: 0.85rem;
                            margin-top: 0.3rem;
                            display: none;
                        }

                        .btn-submit-guestbook {
                            background: linear-gradient(135deg, #ffd700, #ffb347);
                            color: #2c3e50;
                            border: none;
                            padding: 1rem 2.5rem;
                            font-size: 1.1rem;
                            font-weight: 700;
                            border-radius: 8px;
                            cursor: pointer;
                            transition: all 0.3s ease;
                        }

                        .btn-submit-guestbook:hover {
                            transform: translateY(-2px);
                            box-shadow: 0 5px 15px rgba(255, 215, 0, 0.4);
                        }

                        .success-alert {
                            display: none;
                            background: linear-gradient(135deg, #27ae60, #2ecc71);
                            color: white;
                            padding: 1rem 1.5rem;
                            border-radius: 8px;
                            margin-bottom: 1.5rem;
                            font-weight: 600;
                            animation: fadeInUp 0.5s ease;
                        }

                        .log-section-box {
                            background: #1e1e2f;
                            color: #e0e0e0;
                            border-radius: 12px;
                            padding: 1.8rem;
                            margin-top: 2rem;
                            border: 1px solid rgba(255, 255, 255, 0.1);
                            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
                        }

                        .log-header {
                            display: flex;
                            justify-content: space-between;
                            align-items: center;
                            margin-bottom: 1rem;
                            flex-wrap: wrap;
                            gap: 0.8rem;
                        }

                        .log-terminal {
                            background: #0d1117;
                            color: #58a6ff;
                            font-family: 'Consolas', 'Courier New', monospace;
                            font-size: 0.88rem;
                            padding: 1.2rem;
                            border-radius: 8px;
                            max-height: 250px;
                            overflow-y: auto;
                            line-height: 1.6;
                            border: 1px solid #30363d;
                            white-space: pre-wrap;
                            box-shadow: inset 0 2px 8px rgba(0,0,0,0.5);
                        }

                        .log-entry {
                            margin-bottom: 0.4rem;
                            padding-bottom: 0.4rem;
                            border-bottom: 1px dashed rgba(255, 255, 255, 0.08);
                        }

                        .log-tag {
                            color: #79c0ff;
                            font-weight: bold;
                        }

                        .log-time {
                            color: #8b949e;
                        }

                        .log-success {
                            color: #7ee787;
                        }

                        .btn-download-log {
                            display: inline-flex;
                            align-items: center;
                            gap: 0.5rem;
                            background: linear-gradient(135deg, #2ea44f, #238636);
                            color: white;
                            padding: 0.6rem 1.4rem;
                            border-radius: 6px;
                            text-decoration: none;
                            font-weight: 600;
                            font-size: 0.9rem;
                            transition: all 0.2s ease;
                        }

                        .btn-download-log:hover {
                            background: linear-gradient(135deg, #3fb950, #2ea44f);
                            transform: translateY(-2px);
                            box-shadow: 0 4px 12px rgba(46, 164, 79, 0.4);
                        }
                    </style>
                </head>

                <body>
                    <!-- HEADER & NAVIGATION -->
                    <header>
                        <div class="header-container">
                            <a href="index.html" class="site-title">🌟 My Portfolio</a>
                            <nav>
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="cv.html">CV</a></li>
                                    <li><a href="portfolio.html">Portfolio</a></li>
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="guestbook.aspx">📝 Guestbook</a></li>
                                    <li><a href="feedback.aspx">⭐ Feedback</a></li>
                                    <li><a href="calculator.aspx">🧮 Calculator</a></li>
                                    <li><a href="serverinfo.aspx">🖥️ Server Info</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </header>

                    <!-- MAIN CONTENT -->
                    <main>
                        <!-- SERVER INFO BAR -->
                        <div class="server-info-bar">
                            <span>🕐 เวลาเซิร์ฟเวอร์: <%= DateTime.Now.ToString("dd MMMM yyyy HH:mm:ss", new
                                    System.Globalization.CultureInfo("th-TH")) %></span>
                            <span>🌐 IP ของคุณ: <%= Request.UserHostAddress %></span>
                            <span>💻 เบราว์เซอร์: <%= Request.UserAgent !=null ? Request.UserAgent.Substring(0,
                                    Math.Min(50, Request.UserAgent.Length)) + "..." : "ไม่ทราบ" %></span>
                        </div>

                        <!-- SUCCESS ALERT -->
                        <div id="successAlert" class="success-alert">
                            ✅ ส่งข้อความเรียบร้อยแล้ว! ขอบคุณที่เยี่ยมชมครับ
                        </div>

                        <!-- GUESTBOOK FORM -->
                        <section class="guestbook-form-section">
                            <h2>📝 สมุดเยี่ยมชม (Guestbook) <span style="font-size: 0.8rem; background: rgba(255,255,255,0.2); padding: 0.2rem 0.6rem; border-radius: 12px; margin-left: 10px; font-weight: normal; vertical-align: middle;">🔴 Real-time Live</span></h2>
                            <p style="margin-bottom: 1.5rem; opacity: 0.9;">
                                ยินดีต้อนรับสู่สมุดเยี่ยมชมของผม!
                                กรุณาเขียนข้อความเพื่อแสดงความคิดเห็นหรือให้กำลังใจได้เลยครับ
                            </p>

                            <form id="guestbookForm" onsubmit="return handleGuestbookSubmit(event)">
                                <div class="form-group">
                                    <label for="guestName">👤 ชื่อของคุณ *</label>
                                    <input type="text" id="guestName" name="guestName"
                                        placeholder="กรุณากรอกชื่อของคุณ">
                                    <span id="nameError" class="validation-error">⚠️ กรุณากรอกชื่อของคุณ</span>
                                </div>

                                <div class="form-group">
                                    <label for="guestMessage">💬 ข้อความ *</label>
                                    <textarea id="guestMessage" name="guestMessage"
                                        placeholder="เขียนข้อความของคุณที่นี่..." rows="4"></textarea>
                                    <span id="messageError" class="validation-error">⚠️ กรุณากรอกข้อความ</span>
                                </div>

                                <button type="submit" id="btnSubmit" class="btn-submit-guestbook">✉️ ส่งข้อความ</button>
                            </form>
                        </section>

                        <!-- MESSAGES DISPLAY -->
                        <section>
                            <h2>💌 ข้อความจากผู้เยี่ยมชม</h2>
                            <p style="margin-bottom: 1rem; display: flex; align-items: center; justify-content: space-between;">
                                <span class="message-count-badge" id="messageCountBadge">
                                    📊 ข้อความทั้งหมด: <%= GetMessages().Count %> ข้อความ
                                </span>
                                <span style="font-size: 0.85rem; color: #7f8c8d;">
                                    ⚡ อัปเดตแบบเรียลไทม์อัตโนมัติทุก 3 วินาที
                                </span>
                            </p>

                            <div id="messagesContainer">
                                <% List<GuestMessage> allMessages = GetMessages();
                                    if (allMessages.Count == 0)
                                    {
                                    %>
                                    <div class="card" style="text-align: center; padding: 3rem;">
                                        <h3>📭 ยังไม่มีข้อความ</h3>
                                        <p>เป็นคนแรกที่เขียนข้อความในสมุดเยี่ยมชม!</p>
                                    </div>
                                    <% } else { foreach (GuestMessage msg in allMessages) { %>
                                        <div class="message-card">
                                            <div class="message-header">
                                                <span class="message-author">👤 คุณ<%= msg.Name %></span>
                                                <span class="message-time">🕐 <%= msg.Timestamp %></span>
                                            </div>
                                            <p class="message-text">
                                                <%= msg.Message %>
                                            </p>
                                        </div>
                                        <% } } %>
                            </div>

                            <!-- REALTIME SYSTEM LOG SECTION -->
                            <div class="log-section-box">
                                <div class="log-header">
                                    <h3 style="color: #79c0ff; margin: 0; font-size: 1.1rem; display: flex; align-items: center; gap: 0.5rem;">
                                        📜 ประวัติการบันทึก Log ระบบ (System Activity Log)
                                    </h3>
                                    <div style="display: flex; gap: 0.5rem; align-items: center;">
                                        <a href="guestbook.aspx?download=log" class="btn-download-log" target="_blank">
                                            📥 ดาวน์โหลดไฟล์ Log (guestbook.txt)
                                        </a>
                                    </div>
                                </div>
                                <p style="font-size: 0.85rem; color: #8b949e; margin-bottom: 0.8rem;">
                                    💾 ข้อมูลทุกรายการถูกบันทึกลงในไฟล์ <code>App_Data/guestbook.txt</code> บนเซิร์ฟเวอร์แบบ Real-time
                                </p>
                                <div class="log-terminal" id="logTerminalDisplay">
                                    [System Log Initializing...]
                                </div>
                            </div>
                        </section>

                        <!-- GUESTBOOK INFO -->
                        <section>
                            <h2>ℹ️ เกี่ยวกับสมุดเยี่ยมชม</h2>
                            <div class="grid">
                                <div class="card">
                                    <h3>📋 วิธีการใช้งาน</h3>
                                    <p>กรอกชื่อและข้อความของคุณในแบบฟอร์มด้านบน แล้วกดปุ่ม "ส่งข้อความ"
                                        ข้อความของคุณจะแสดงด้านล่างทันทีครับ</p>
                                </div>
                                <div class="card">
                                    <h3>🔒 ความปลอดภัย</h3>
                                    <p>ระบบมีการตรวจสอบข้อมูลก่อนบันทึก เพื่อป้องกันข้อมูลที่ไม่เหมาะสม และใช้ HTML
                                        Encode เพื่อความปลอดภัยจาก XSS</p>
                                </div>
                                <div class="card">
                                    <h3>⚙️ เทคโนโลยี</h3>
                                    <p>พัฒนาด้วย ASP.NET (C#) WebMethods + AJAX Polling สำหรับ Real-time Update และ JavaScript Validation</p>
                                </div>
                            </div>
                        </section>
                    </main>

                    <!-- FOOTER -->
                    <footer>
                        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
                        <div class="footer-links">
                            <a href="about.html">เกี่ยวกับ</a>
                            <a href="contact.html">ติดต่อ</a>
                            <a href="guestbook.aspx">สมุดเยี่ยมชม</a>
                            <a href="serverinfo.aspx">ข้อมูลเซิร์ฟเวอร์</a>
                        </div>
                    </footer>

                    <script src="js/data.js"></script>
                    <script>
                            // =============================================
                            // Universal Real-time Guestbook System
                            // (Supports IIS WebMethod API & Hybrid LocalStorage/BroadcastChannel)
                            // =============================================

                            const REALTIME_CHANNEL = 'guestbook_realtime_channel';
                            const LOCAL_STORAGE_KEY = 'guestbook_local_messages';
                            let broadcastChannel = null;

                            if ('BroadcastChannel' in window) {
                                try {
                                    broadcastChannel = new BroadcastChannel(REALTIME_CHANNEL);
                                    broadcastChannel.onmessage = function (event) {
                                        if (event.data && event.data.type === 'NEW_MESSAGE') {
                                            loadAndRenderAllMessages();
                                        }
                                    };
                                } catch (e) { console.log('BroadcastChannel not supported'); }
                            }

                            window.addEventListener('storage', function(e) {
                                if (e.key === LOCAL_STORAGE_KEY) {
                                    loadAndRenderAllMessages();
                                }
                            });

                            function validateGuestbookForm() {
                                let isValid = true;
                                const name = document.getElementById('guestName').value.trim();
                                const message = document.getElementById('guestMessage').value.trim();

                                document.getElementById('nameError').style.display = 'none';
                                document.getElementById('messageError').style.display = 'none';

                                if (name === '') {
                                    document.getElementById('nameError').style.display = 'block';
                                    alert('กรุณากรอกชื่อของคุณ');
                                    isValid = false;
                                }

                                if (message === '') {
                                    document.getElementById('messageError').style.display = 'block';
                                    if (isValid) alert('กรุณากรอกข้อความ');
                                    isValid = false;
                                }

                                if (name.length > 0 && name.length < 2) {
                                    document.getElementById('nameError').textContent = '⚠️ ชื่อต้องมีอย่างน้อย 2 ตัวอักษร';
                                    document.getElementById('nameError').style.display = 'block';
                                    alert('ชื่อต้องมีอย่างน้อย 2 ตัวอักษร');
                                    isValid = false;
                                }

                                if (message.length > 0 && message.length < 5) {
                                    document.getElementById('messageError').textContent = '⚠️ ข้อความต้องมีอย่างน้อย 5 ตัวอักษร';
                                    document.getElementById('messageError').style.display = 'block';
                                    if (isValid) alert('ข้อความต้องมีอย่างน้อย 5 ตัวอักษร');
                                    isValid = false;
                                }

                                return isValid;
                            }

                            function renderMessages(messages) {
                                const container = document.getElementById('messagesContainer');
                                const badge = document.getElementById('messageCountBadge');

                                if (badge) {
                                    badge.textContent = '📊 ข้อความทั้งหมด: ' + messages.length + ' ข้อความ';
                                }

                                if (!messages || messages.length === 0) {
                                    container.innerHTML = `
                                        <div class="card" style="text-align: center; padding: 3rem;">
                                            <h3>📭 ยังไม่มีข้อความ</h3>
                                            <p>เป็นคนแรกที่เขียนข้อความในสมุดเยี่ยมชม!</p>
                                        </div>`;
                                    return;
                                }

                                const html = messages.map(msg => `
                                    <div class="message-card">
                                        <div class="message-header">
                                            <span class="message-author">👤 คุณ${escapeHtml(msg.Name)}</span>
                                            <span class="message-time">🕐 ${escapeHtml(msg.Timestamp)}</span>
                                        </div>
                                        <p class="message-text">${escapeHtml(msg.Message)}</p>
                                    </div>
                                `).join('');

                                container.innerHTML = html;
                            }

                            function escapeHtml(text) {
                                if (!text) return '';
                                const div = document.createElement('div');
                                div.textContent = text;
                                return div.innerHTML;
                            }

                            function getLocalMessages() {
                                try {
                                    const saved = localStorage.getItem(LOCAL_STORAGE_KEY);
                                    return saved ? JSON.parse(saved) : [];
                                } catch (e) {
                                    return [];
                                }
                            }

                            function saveLocalMessage(name, message) {
                                const now = new Date();
                                const timestamp = now.getFullYear() + '-' +
                                    String(now.getMonth() + 1).padStart(2, '0') + '-' +
                                    String(now.getDate()).padStart(2, '0') + ' ' +
                                    String(now.getHours()).padStart(2, '0') + ':' +
                                    String(now.getMinutes()).padStart(2, '0') + ':' +
                                    String(now.getSeconds()).padStart(2, '0');

                                const newMsg = {
                                    Name: name,
                                    Message: message,
                                    Timestamp: timestamp,
                                    IP: '127.0.0.1 (Local)'
                                };

                                const current = getLocalMessages();
                                current.unshift(newMsg);
                                localStorage.setItem(LOCAL_STORAGE_KEY, JSON.stringify(current));

                                if (broadcastChannel) {
                                    broadcastChannel.postMessage({ type: 'NEW_MESSAGE', data: newMsg });
                                }
                            }

                            function loadAndRenderLog() {
                                fetch('guestbook.aspx/GetRawLogApi', {
                                    method: 'POST',
                                    headers: { 'Content-Type': 'application/json; charset=utf-8' },
                                    body: JSON.stringify({})
                                })
                                .then(response => response.json())
                                .then(data => {
                                    if (data && typeof data.d === 'string') {
                                        renderLogTerminal(data.d);
                                    } else {
                                        renderLogTerminalFromLocal();
                                    }
                                })
                                .catch(err => {
                                    renderLogTerminalFromLocal();
                                });
                            }

                            function renderLogTerminal(rawLogText) {
                                const terminal = document.getElementById('logTerminalDisplay');
                                if (!terminal) return;

                                const lines = rawLogText ? rawLogText.trim().split('\n').filter(l => l.trim().length > 0) : [];

                                if (lines.length === 0) {
                                    terminal.innerHTML = '<div style="color: #8b949e; text-align: center; padding: 0.5rem;">[ยังไม่มีประวัติการบันทึก Log - รอข้อมูลจากการกรอกฟอร์ม]</div>';
                                    return;
                                }

                                const html = lines.map((line, index) => {
                                    const parts = line.split('|');
                                    if (parts.length >= 4) {
                                        const name = escapeHtml(parts[0].trim());
                                        const msg = escapeHtml(parts[1].trim());
                                        const time = escapeHtml(parts[2].trim());
                                        const ip = escapeHtml(parts[3].trim());
                                        return `<div class="log-entry">` +
                                            `<span class="log-tag">[LOG #${lines.length - index}]</span> ` +
                                            `<span class="log-time">[${time}]</span> ` +
                                            `<span class="log-success">SUCCESS</span> - ` +
                                            `<strong>${name}</strong> (${ip}): "${msg}"` +
                                            `</div>`;
                                    } else {
                                        return `<div class="log-entry">${escapeHtml(line)}</div>`;
                                    }
                                }).join('');

                                terminal.innerHTML = html;
                            }

                            function renderLogTerminalFromLocal() {
                                const localMsgs = getLocalMessages();
                                if (!localMsgs || localMsgs.length === 0) {
                                    const terminal = document.getElementById('logTerminalDisplay');
                                    if (terminal) terminal.innerHTML = '<div style="color: #8b949e; text-align: center; padding: 0.5rem;">[ยังไม่มีประวัติการบันทึก Log - รอข้อมูลจากการกรอกฟอร์ม]</div>';
                                    return;
                                }

                                const lines = localMsgs.map(m => `${m.Name}|${m.Message}|${m.Timestamp}|${m.IP || '127.0.0.1 (Local)'}`);
                                renderLogTerminal(lines.join('\n'));
                            }

                            function loadAndRenderAllMessages() {
                                fetch('guestbook.aspx/GetMessagesApi', {
                                    method: 'POST',
                                    headers: { 'Content-Type': 'application/json; charset=utf-8' },
                                    body: JSON.stringify({})
                                })
                                .then(response => response.json())
                                .then(data => {
                                    if (data && Array.isArray(data.d)) {
                                        renderMessages(data.d);
                                    } else {
                                        renderMessages(getLocalMessages());
                                    }
                                })
                                .catch(err => {
                                    renderMessages(getLocalMessages());
                                });

                                loadAndRenderLog();
                            }

                            function handleGuestbookSubmit(e) {
                                e.preventDefault();

                                if (!validateGuestbookForm()) {
                                    return false;
                                }

                                const name = document.getElementById('guestName').value.trim();
                                const message = document.getElementById('guestMessage').value.trim();

                                const confirmMsg = 'คุณต้องการส่งข้อความนี้ใช่ไหม?\n\n' +
                                    'ชื่อ: ' + name + '\n' +
                                    'ข้อความ: ' + message;
                                if (!confirm(confirmMsg)) {
                                    return false;
                                }

                                const btn = document.getElementById('btnSubmit');
                                btn.disabled = true;
                                btn.textContent = '⏳ กำลังส่งข้อความ...';

                                fetch('guestbook.aspx/AddMessageApi', {
                                    method: 'POST',
                                    headers: { 'Content-Type': 'application/json; charset=utf-8' },
                                    body: JSON.stringify({ name: name, message: message })
                                })
                                .then(res => res.json())
                                .then(data => {
                                    btn.disabled = false;
                                    btn.textContent = '✉️ ส่งข้อความ';

                                    saveLocalMessage(name, message);
                                    onPostSuccess();
                                })
                                .catch(err => {
                                    btn.disabled = false;
                                    btn.textContent = '✉️ ส่งข้อความ';
                                    saveLocalMessage(name, message);
                                    onPostSuccess();
                                });

                                return false;
                            }

                            function onPostSuccess() {
                                document.getElementById('guestName').value = '';
                                document.getElementById('guestMessage').value = '';
                                const countDisplay = document.getElementById('charCount');
                                if (countDisplay) countDisplay.textContent = '';

                                const successAlert = document.getElementById('successAlert');
                                successAlert.style.display = 'block';
                                setTimeout(() => { successAlert.style.display = 'none'; }, 5000);

                                loadAndRenderAllMessages();
                            }

                            // Real-time character count
                            document.getElementById('guestMessage').addEventListener('input', function () {
                                const charCount = this.value.length;
                                const maxChars = 500;
                                const remaining = maxChars - charCount;

                                let countDisplay = document.getElementById('charCount');
                                if (!countDisplay) {
                                    countDisplay = document.createElement('span');
                                    countDisplay.id = 'charCount';
                                    countDisplay.style.cssText = 'font-size: 0.8rem; color: rgba(255,255,255,0.7); margin-top: 0.3rem; display: block;';
                                    this.parentNode.appendChild(countDisplay);
                                }
                                countDisplay.textContent = '📝 ' + charCount + '/' + maxChars + ' ตัวอักษร';
                                if (remaining < 50) {
                                    countDisplay.style.color = '#e74c3c';
                                } else {
                                    countDisplay.style.color = 'rgba(255,255,255,0.7)';
                                }
                            });

                            // Clock
                            function updateClock() {
                                const now = new Date();
                                const options = {
                                    year: 'numeric', month: 'long', day: 'numeric',
                                    hour: '2-digit', minute: '2-digit', second: '2-digit',
                                    timeZone: 'Asia/Bangkok'
                                };
                                const timeStr = now.toLocaleDateString('th-TH', options);
                                const clockEl = document.querySelector('.server-info-bar span:first-child');
                                if (clockEl) {
                                    clockEl.textContent = '🕐 เวลาปัจจุบัน: ' + timeStr;
                                }
                            }
                            setInterval(updateClock, 1000);

                            // Initial load & Auto Polling 2 seconds
                            loadAndRenderAllMessages();
                            loadAndRenderLog();
                            setInterval(() => {
                                loadAndRenderAllMessages();
                            }, 2000);
                    </script>
                </body>

                </html>