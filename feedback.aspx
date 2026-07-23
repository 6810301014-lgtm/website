<%@ Page Language="C#" ResponseEncoding="utf-8" ContentType="text/html; charset=utf-8" %>
<script runat="server">
    protected string resultMessage = "";
    protected bool showResult = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        // กรณีผู้ใช้กดดาวน์โหลดไฟล์ feedback_log.txt
        if (Request.QueryString["download"] == "txt")
        {
            string logPath = Server.MapPath("~/feedback_log.txt");
            if (System.IO.File.Exists(logPath))
            {
                Response.Clear();
                Response.ContentType = "text/plain; charset=utf-8";
                Response.AddHeader("Content-Disposition", "attachment; filename=feedback_log.txt");
                Response.WriteFile(logPath);
                Response.End();
                return;
            }
            else
            {
                Response.Write("ยังไม่มีไฟล์ feedback_log.txt");
                Response.End();
                return;
            }
        }

        if (IsPostBack)
        {
            string name = Request.Form["feedbackName"];
            string email = Request.Form["feedbackEmail"];
            string rating = Request.Form["feedbackRating"];
            string category = Request.Form["feedbackCategory"];
            string message = Request.Form["feedbackMessage"];

            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(message))
            {
                string timestamp = DateTime.Now.ToString("dd MMMM yyyy HH:mm:ss", new System.Globalization.CultureInfo("th-TH"));
                string ip = Request.UserHostAddress;

                // 1. บันทึกลงไฟล์ feedback_log.txt บนเซิร์ฟเวอร์
                string logText = string.Format(
                    "===========================================\r\n" +
                    "📌 รายงาน Feedback จากผู้เยี่ยมชม\r\n" +
                    "===========================================\r\n" +
                    "🕐 เวลาส่ง: {0}\r\n" +
                    "👤 ชื่อ: {1}\r\n" +
                    "📧 อีเมล: {2}\r\n" +
                    "⭐ คะแนน: {3}/5\r\n" +
                    "📂 หมวดหมู่: {4}\r\n" +
                    "💬 ข้อความ: {5}\r\n" +
                    "🌐 IP Address: {6}\r\n" +
                    "===========================================\r\n\r\n",
                    timestamp, name, string.IsNullOrEmpty(email) ? "ไม่ระบุ" : email,
                    string.IsNullOrEmpty(rating) ? "ไม่ระบุ" : rating,
                    string.IsNullOrEmpty(category) ? "ไม่ระบุ" : category,
                    message, ip
                );

                try
                {
                    string filePath = Server.MapPath("~/feedback_log.txt");
                    System.IO.File.AppendAllText(filePath, logText, System.Text.Encoding.UTF8);
                }
                catch (Exception ex)
                {
                    // หากเกิดข้อผิดพลาดในการเขียนไฟล์ ให้ข้ามไป
                }

                showResult = true;
                resultMessage = string.Format(
                    "<div class='result-card'>" +
                    "<h3>✅ ขอบคุณสำหรับ Feedback ครับ! (บันทึกลงไฟล์ feedback_log.txt เรียบร้อยแล้ว)</h3>" +
                    "<div class='result-detail'>" +
                    "<p><strong>👤 ชื่อ:</strong> {0}</p>" +
                    "<p><strong>📧 อีเมล:</strong> {1}</p>" +
                    "<p><strong>⭐ คะแนน:</strong> {2}/5</p>" +
                    "<p><strong>📂 หมวดหมู่:</strong> {3}</p>" +
                    "<p><strong>💬 ข้อความ:</strong> {4}</p>" +
                    "<p><strong>🕐 เวลาส่ง:</strong> {5}</p>" +
                    "<p><strong>🌐 IP:</strong> {6}</p>" +
                    "<div style='margin-top: 1.5rem; display: flex; gap: 1rem; flex-wrap: wrap;'>" +
                    "<a href='feedback.aspx?download=txt' class='btn' style='background-color: #27ae60; border-color: #27ae60;'>📄 ดาวน์โหลดไฟล์ feedback_log.txt (รวมทั้งหมด)</a>" +
                    "<button type='button' class='btn btn-secondary' onclick='downloadSingleFeedbackTxt(\"{0}\", \"{1}\", \"{2}\", \"{3}\", \"{4}\", \"{5}\", \"{6}\")'>⬇️ ดาวน์โหลด Feedback นี้เป็น .txt</button>" +
                    "</div>" +
                    "</div></div>",
                    Server.HtmlEncode(name),
                    Server.HtmlEncode(string.IsNullOrEmpty(email) ? "ไม่ระบุ" : email),
                    Server.HtmlEncode(string.IsNullOrEmpty(rating) ? "ไม่ระบุ" : rating),
                    Server.HtmlEncode(string.IsNullOrEmpty(category) ? "ไม่ระบุ" : category),
                    Server.HtmlEncode(message).Replace("\n", "<br>"),
                    timestamp,
                    ip
                );
            }
        }
    }
</script>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>แบบประเมินผล (Feedback) - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* === Feedback Styles === */
        .feedback-hero {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            color: white;
            padding: 3rem 2rem;
            border-radius: 12px;
            text-align: center;
            margin-bottom: 2rem;
        }

        .feedback-hero h1 {
            font-size: 2rem;
            margin-bottom: 0.5rem;
        }

        .star-rating {
            display: flex;
            gap: 0.5rem;
            font-size: 2rem;
            cursor: pointer;
            margin: 0.5rem 0;
        }

        .star-rating .star {
            color: #ddd;
            transition: all 0.2s ease;
            cursor: pointer;
        }

        .star-rating .star:hover,
        .star-rating .star.active {
            color: #ffd700;
            transform: scale(1.2);
        }

        .form-feedback-section {
            background: white;
            border-radius: 12px;
            padding: 2.5rem;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
        }

        .result-card {
            background: linear-gradient(135deg, #d4fc79 0%, #96e6a1 100%);
            padding: 2rem;
            border-radius: 12px;
            margin-bottom: 2rem;
            animation: fadeInUp 0.5s ease;
        }

        .result-card h3 {
            color: #2c3e50;
            margin-bottom: 1rem;
        }

        .result-detail {
            background: rgba(255,255,255,0.8);
            padding: 1.5rem;
            border-radius: 8px;
        }

        .result-detail p {
            margin-bottom: 0.5rem;
            color: #333;
        }

        .validation-error-fb {
            color: #e74c3c;
            font-size: 0.85rem;
            margin-top: 0.3rem;
            display: none;
        }

        .category-select {
            padding: 0.8rem;
            border: 2px solid #ecf0f1;
            border-radius: 5px;
            font-size: 1rem;
            font-family: inherit;
            width: 100%;
            transition: all 0.3s ease;
        }

        .category-select:focus {
            outline: none;
            border-color: #f5576c;
        }

        .server-timestamp {
            background: linear-gradient(90deg, #2c3e50, #f5576c);
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.5rem;
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
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
        <!-- HERO -->
        <div class="feedback-hero">
            <h1>💬 แบบประเมินผลเว็บไซต์</h1>
            <p>กรุณาให้คะแนนและแสดงความคิดเห็นเกี่ยวกับเว็บไซต์ของผม เพื่อนำไปปรับปรุงให้ดียิ่งขึ้นครับ</p>
        </div>

        <!-- SERVER TIMESTAMP -->
        <div class="server-timestamp">
            <span>🕐 เวลาเซิร์ฟเวอร์: <%= DateTime.Now.ToString("dd MMMM yyyy HH:mm:ss", new System.Globalization.CultureInfo("th-TH")) %></span>
            <span>🌐 IP: <%= Request.UserHostAddress %></span>
        </div>

        <!-- RESULT (if POST) -->
        <% if (showResult) { %>
            <%= resultMessage %>
        <% } %>

        <!-- FEEDBACK FORM -->
        <section class="form-feedback-section">
            <h2>📝 กรอกแบบประเมิน</h2>
            <form id="feedbackForm" method="post" action="feedback.aspx" onsubmit="return validateFeedbackForm()">
                <div class="form-group">
                    <label for="feedbackName">👤 ชื่อของคุณ *</label>
                    <input type="text" id="feedbackName" name="feedbackName" placeholder="กรุณากรอกชื่อของคุณ">
                    <span id="fbNameError" class="validation-error-fb">⚠️ กรุณากรอกชื่อ</span>
                </div>

                <div class="form-group">
                    <label for="feedbackEmail">📧 อีเมล</label>
                    <input type="email" id="feedbackEmail" name="feedbackEmail" placeholder="email@example.com (ไม่บังคับ)">
                    <span id="fbEmailError" class="validation-error-fb">⚠️ รูปแบบอีเมลไม่ถูกต้อง</span>
                </div>

                <div class="form-group">
                    <label>⭐ ให้คะแนนเว็บไซต์ *</label>
                    <div class="star-rating" id="starRating">
                        <span class="star" data-value="1" onclick="setRating(1)">☆</span>
                        <span class="star" data-value="2" onclick="setRating(2)">☆</span>
                        <span class="star" data-value="3" onclick="setRating(3)">☆</span>
                        <span class="star" data-value="4" onclick="setRating(4)">☆</span>
                        <span class="star" data-value="5" onclick="setRating(5)">☆</span>
                    </div>
                    <input type="hidden" id="feedbackRating" name="feedbackRating" value="">
                    <span id="ratingText" style="color: #999; font-size: 0.9rem;">กรุณาคลิกดาวเพื่อให้คะแนน</span>
                    <span id="fbRatingError" class="validation-error-fb">⚠️ กรุณาให้คะแนน</span>
                </div>

                <div class="form-group">
                    <label for="feedbackCategory">📂 หมวดหมู่</label>
                    <select id="feedbackCategory" name="feedbackCategory" class="category-select">
                        <option value="">-- เลือกหมวดหมู่ --</option>
                        <option value="การออกแบบ">🎨 การออกแบบ (Design)</option>
                        <option value="เนื้อหา">📝 เนื้อหา (Content)</option>
                        <option value="การใช้งาน">⚙️ การใช้งาน (Usability)</option>
                        <option value="ความเร็ว">⚡ ความเร็ว (Performance)</option>
                        <option value="อื่นๆ">💬 อื่นๆ (Others)</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="feedbackMessage">💬 ความคิดเห็น *</label>
                    <textarea id="feedbackMessage" name="feedbackMessage" placeholder="กรุณาเขียนความคิดเห็นของคุณ..." rows="5"></textarea>
                    <span id="fbMessageError" class="validation-error-fb">⚠️ กรุณากรอกความคิดเห็น</span>
                </div>

                <button type="submit" class="btn" style="background: linear-gradient(135deg, #f093fb, #f5576c); border: none; font-size: 1.1rem; padding: 1rem 2.5rem;">
                    📤 ส่งแบบประเมิน
                </button>
            </form>
        </section>

        <!-- INFO SECTION -->
        <section>
            <h2>ℹ️ เกี่ยวกับแบบประเมิน</h2>
            <div class="grid">
                <div class="card">
                    <h3>🎯 วัตถุประสงค์</h3>
                    <p>แบบประเมินนี้ใช้เพื่อรวบรวมความคิดเห็นของผู้เยี่ยมชม เพื่อนำไปปรับปรุงและพัฒนาเว็บไซต์ให้ดียิ่งขึ้น</p>
                </div>
                <div class="card">
                    <h3>🔧 เทคโนโลยี</h3>
                    <p>แบบฟอร์มนี้ใช้ HTML Form ที่ส่งข้อมูลไปยัง ASP.NET (feedback.aspx) เพื่อประมวลผลที่ฝั่ง Server พร้อม JavaScript Validation</p>
                </div>
                <div class="card">
                    <h3>🔒 ข้อมูลส่วนตัว</h3>
                    <p>ข้อมูลที่กรอกจะใช้เพื่อการพัฒนาเว็บไซต์เท่านั้น ไม่มีการนำไปเผยแพร่หรือใช้เพื่อวัตถุประสงค์อื่น</p>
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
        // JavaScript: Star Rating System
        // =============================================
        let currentRating = 0;

        function setRating(value) {
            currentRating = value;
            document.getElementById('feedbackRating').value = value;

            const stars = document.querySelectorAll('.star');
            const ratingLabels = ['', 'แย่มาก 😞', 'แย่ 😐', 'ปานกลาง 😊', 'ดี 😃', 'ยอดเยี่ยม 🤩'];

            stars.forEach(function(star, index) {
                if (index < value) {
                    star.textContent = '★';
                    star.classList.add('active');
                } else {
                    star.textContent = '☆';
                    star.classList.remove('active');
                }
            });

            document.getElementById('ratingText').textContent = 'คุณให้คะแนน: ' + value + '/5 - ' + ratingLabels[value];
            document.getElementById('ratingText').style.color = '#f5576c';
        }

        // Hover effect for stars
        document.querySelectorAll('.star').forEach(function(star) {
            star.addEventListener('mouseenter', function() {
                const hoverValue = parseInt(this.getAttribute('data-value'));
                document.querySelectorAll('.star').forEach(function(s, i) {
                    if (i < hoverValue) {
                        s.textContent = '★';
                    } else if (i >= currentRating) {
                        s.textContent = '☆';
                    }
                });
            });

            star.addEventListener('mouseleave', function() {
                document.querySelectorAll('.star').forEach(function(s, i) {
                    if (i < currentRating) {
                        s.textContent = '★';
                    } else {
                        s.textContent = '☆';
                    }
                });
            });
        });

        // =============================================
        // JavaScript: Form Validation
        // =============================================
        function validateFeedbackForm() {
            let isValid = true;
            const name = document.getElementById('feedbackName').value.trim();
            const email = document.getElementById('feedbackEmail').value.trim();
            const rating = document.getElementById('feedbackRating').value;
            const message = document.getElementById('feedbackMessage').value.trim();

            // ซ่อน error ทั้งหมด
            document.querySelectorAll('.validation-error-fb').forEach(function(el) {
                el.style.display = 'none';
            });

            // ตรวจชื่อ
            if (name === '') {
                document.getElementById('fbNameError').style.display = 'block';
                alert('กรุณากรอกชื่อของคุณ');
                isValid = false;
            }

            // ตรวจอีเมล (ถ้ากรอก)
            if (email !== '') {
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailPattern.test(email)) {
                    document.getElementById('fbEmailError').style.display = 'block';
                    if (isValid) alert('รูปแบบอีเมลไม่ถูกต้อง');
                    isValid = false;
                }
            }

            // ตรวจคะแนน
            if (rating === '' || rating === '0') {
                document.getElementById('fbRatingError').style.display = 'block';
                if (isValid) alert('กรุณาให้คะแนนเว็บไซต์');
                isValid = false;
            }

            // ตรวจข้อความ
            if (message === '') {
                document.getElementById('fbMessageError').style.display = 'block';
                if (isValid) alert('กรุณากรอกความคิดเห็น');
                isValid = false;
            }

            if (isValid) {
                const confirmMsg = 'คุณต้องการส่งแบบประเมินนี้ใช่ไหม?\n\n' +
                    'ชื่อ: ' + name + '\n' +
                    'คะแนน: ' + rating + '/5\n' +
                    'ข้อความ: ' + message;
                if (!confirm(confirmMsg)) {
                    return false;
                }
            }

            return isValid;
        }

        // =============================================
        // JavaScript: Download Feedback as .txt File
        // =============================================
        function downloadSingleFeedbackTxt(name, email, rating, category, message, timestamp, ip) {
            const content = `===========================================
📌 รายงาน Feedback จากผู้เยี่ยมชม
===========================================
🕐 เวลาส่ง: ${timestamp}
👤 ชื่อ: ${name}
📧 อีเมล: ${email}
⭐ คะแนน: ${rating}/5
📂 หมวดหมู่: ${category}
💬 ข้อความ: ${message}
🌐 IP Address: ${ip}
===========================================`;

            const blob = new Blob([content], { type: 'text/plain;charset=utf-8' });
            const link = document.createElement('a');
            link.href = URL.createObjectURL(blob);
            link.download = `feedback-${name.replace(/[^a-zA-Z0-9ก-๙]/g, '_')}.txt`;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    </script>
</body>
</html>
