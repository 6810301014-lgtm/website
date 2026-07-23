<%@ Page Language="C#" ResponseEncoding="utf-8" ContentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ข้อมูลเซิร์ฟเวอร์ - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* === Server Info Styles === */
        .info-hero {
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #00ff88;
            padding: 3rem 2rem;
            border-radius: 12px;
            text-align: center;
            margin-bottom: 2rem;
            font-family: 'Courier New', monospace;
        }

        .info-hero h1 {
            font-size: 2rem;
            margin-bottom: 1rem;
            color: #00ff88;
        }

        .info-hero .subtitle {
            color: #88ccff;
            font-size: 1.1rem;
        }

        .terminal-box {
            background: #1a1a2e;
            color: #00ff88;
            padding: 1.5rem;
            border-radius: 10px;
            font-family: 'Courier New', monospace;
            margin-bottom: 1.5rem;
            border: 1px solid #333;
            box-shadow: 0 0 20px rgba(0, 255, 136, 0.1);
        }

        .terminal-box .prompt {
            color: #00bfff;
        }

        .terminal-box .response {
            color: #00ff88;
            margin-left: 1rem;
        }

        .terminal-line {
            margin-bottom: 0.5rem;
            padding: 0.3rem 0;
            border-bottom: 1px solid rgba(255,255,255,0.05);
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .info-card {
            background: linear-gradient(145deg, #16213e, #1a1a2e);
            color: white;
            padding: 1.8rem;
            border-radius: 12px;
            border-left: 4px solid #00ff88;
            transition: all 0.3s ease;
        }

        .info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,255,136,0.15);
        }

        .info-card h3 {
            color: #00bfff;
            margin-bottom: 0.8rem;
        }

        .info-card p {
            color: #aab;
            line-height: 1.6;
        }

        .info-value {
            color: #00ff88;
            font-weight: bold;
            font-family: 'Courier New', monospace;
        }

        .toggle-section {
            cursor: pointer;
            user-select: none;
            padding: 1rem;
            background: linear-gradient(90deg, #2c3e50, #3498db);
            color: white;
            border-radius: 8px;
            margin-bottom: 0.5rem;
            transition: all 0.3s ease;
        }

        .toggle-section:hover {
            background: linear-gradient(90deg, #3498db, #2c3e50);
        }

        .toggle-content {
            display: none;
            padding: 1.5rem;
            background: #f8f9fa;
            border-radius: 0 0 8px 8px;
            margin-bottom: 1.5rem;
            animation: fadeInUp 0.3s ease;
        }

        .toggle-content.show {
            display: block;
        }

        .clock-display {
            font-size: 3rem;
            font-weight: bold;
            color: #00ff88;
            font-family: 'Courier New', monospace;
            text-align: center;
            padding: 2rem;
            background: #1a1a2e;
            border-radius: 12px;
            margin: 1rem 0;
            text-shadow: 0 0 10px rgba(0,255,136,0.5);
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(10px); }
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
        <div class="info-hero">
            <h1>🖥️ ข้อมูลเซิร์ฟเวอร์</h1>
            <p class="subtitle">หน้านี้แสดงข้อมูลทางเทคนิคของเซิร์ฟเวอร์และผู้เยี่ยมชม โดยใช้ ASP.NET (C#)</p>
        </div>

        <!-- REALTIME CLOCK -->
        <section>
            <h2>⏰ นาฬิกาเรียลไทม์</h2>
            <div class="clock-display" id="realtimeClock">กำลังโหลด...</div>
            <p class="text-center text-secondary">นาฬิกาอัปเดตทุกวินาทีด้วย JavaScript</p>
        </section>

        <!-- SERVER INFO - TERMINAL STYLE -->
        <section>
            <h2>🖥️ ข้อมูลจาก Server (ASP.NET)</h2>
            <div class="terminal-box">
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">DateTime.Now</span>
                    <div class="response">→ <%= DateTime.Now.ToString("dddd dd MMMM yyyy HH:mm:ss", new System.Globalization.CultureInfo("th-TH")) %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Request.UserHostAddress</span>
                    <div class="response">→ <%= Request.UserHostAddress %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Request.UserAgent</span>
                    <div class="response">→ <%= Request.UserAgent %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Request.HttpMethod</span>
                    <div class="response">→ <%= Request.HttpMethod %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Request.Url.Host</span>
                    <div class="response">→ <%= Request.Url.Host %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Request.Url.Port</span>
                    <div class="response">→ <%= Request.Url.Port %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Environment.MachineName</span>
                    <div class="response">→ <%= Environment.MachineName %></div>
                </div>
                <div class="terminal-line">
                    <span class="prompt">server$</span> <span style="color: #ffcc00;">Environment.OSVersion</span>
                    <div class="response">→ <%= Environment.OSVersion.ToString() %></div>
                </div>
            </div>
        </section>

        <!-- TOGGLE SECTIONS -->
        <section>
            <h2>📊 ข้อมูลเพิ่มเติม (คลิกเพื่อแสดง/ซ่อน)</h2>

            <div class="toggle-section" onclick="toggleInfo('browserInfo')">
                🌐 ข้อมูลเบราว์เซอร์ของคุณ (คลิกเพื่อดู)
            </div>
            <div id="browserInfo" class="toggle-content">
                <div class="info-grid">
                    <div class="card">
                        <h3>🖥️ Platform</h3>
                        <p id="browserPlatform">กำลังตรวจสอบ...</p>
                    </div>
                    <div class="card">
                        <h3>🌍 ภาษา</h3>
                        <p id="browserLanguage">กำลังตรวจสอบ...</p>
                    </div>
                    <div class="card">
                        <h3>📐 ขนาดหน้าจอ</h3>
                        <p id="screenSize">กำลังตรวจสอบ...</p>
                    </div>
                    <div class="card">
                        <h3>🔌 การเชื่อมต่อ</h3>
                        <p id="connectionInfo">กำลังตรวจสอบ...</p>
                    </div>
                </div>
            </div>

            <div class="toggle-section" onclick="toggleInfo('serverTech')">
                ⚙️ เทคโนโลยีที่ใช้ในเว็บไซต์นี้ (คลิกเพื่อดู)
            </div>
            <div id="serverTech" class="toggle-content">
                <div class="info-grid">
                    <div class="card">
                        <h3>🔧 Server-side</h3>
                        <p>ASP.NET (C#) บน IIS<br>Port: <%= Request.Url.Port %></p>
                    </div>
                    <div class="card">
                        <h3>🎨 Client-side</h3>
                        <p>HTML5, CSS3, JavaScript<br>Responsive Design</p>
                    </div>
                    <div class="card">
                        <h3>📝 ฟีเจอร์</h3>
                        <p>Guestbook, Form Validation<br>Dynamic Content, Real-time Clock</p>
                    </div>
                    <div class="card">
                        <h3>📅 อัปเดตล่าสุด</h3>
                        <p><%= DateTime.Now.ToString("dd MMMM yyyy", new System.Globalization.CultureInfo("th-TH")) %></p>
                    </div>
                </div>
            </div>

            <div class="toggle-section" onclick="toggleInfo('visitStats')">
                📈 สถิติการเยี่ยมชม (คลิกเพื่อดู)
            </div>
            <div id="visitStats" class="toggle-content">
                <div class="info-grid">
                    <div class="card">
                        <h3>📊 จำนวนหน้า</h3>
                        <p>เว็บไซต์นี้มีทั้งหมด 12 หน้า<br>ทั้ง HTML และ ASPX</p>
                    </div>
                    <div class="card">
                        <h3>🕐 เวลาที่คุณเข้าชม</h3>
                        <p><%= DateTime.Now.ToString("HH:mm:ss") %></p>
                    </div>
                    <div class="card">
                        <h3>📱 ขนาดหน้าจอ</h3>
                        <p id="visitScreenInfo">กำลังตรวจสอบ...</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- QUICK LINKS -->
        <section class="text-center">
            <h2>🔗 ลิงก์ที่เกี่ยวข้อง</h2>
            <a href="guestbook.aspx" class="btn mt-2">📝 สมุดเยี่ยมชม</a>
            <a href="feedback.aspx" class="btn btn-success mt-2">💬 ส่ง Feedback</a>
            <a href="calculator.aspx" class="btn btn-secondary mt-2">🔢 เครื่องคิดเลข</a>
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
        // JavaScript: Real-time Clock
        // =============================================
        function updateRealtimeClock() {
            const now = new Date();
            const hours = String(now.getHours()).padStart(2, '0');
            const minutes = String(now.getMinutes()).padStart(2, '0');
            const seconds = String(now.getSeconds()).padStart(2, '0');
            document.getElementById('realtimeClock').textContent = hours + ':' + minutes + ':' + seconds;
        }
        setInterval(updateRealtimeClock, 1000);
        updateRealtimeClock();

        // =============================================
        // JavaScript: Toggle show/hide sections
        // =============================================
        function toggleInfo(sectionId) {
            const section = document.getElementById(sectionId);
            if (section.classList.contains('show')) {
                section.classList.remove('show');
            } else {
                section.classList.add('show');
            }
        }

        // =============================================
        // JavaScript: Browser Info Detection
        // =============================================
        function detectBrowserInfo() {
            // Platform
            document.getElementById('browserPlatform').textContent = navigator.platform || 'ไม่ทราบ';

            // Language
            document.getElementById('browserLanguage').textContent = navigator.language || 'ไม่ทราบ';

            // Screen size
            document.getElementById('screenSize').textContent =
                screen.width + ' x ' + screen.height + ' px\n' +
                'Viewport: ' + window.innerWidth + ' x ' + window.innerHeight + ' px';

            // Connection
            if (navigator.connection) {
                document.getElementById('connectionInfo').textContent =
                    'ประเภท: ' + (navigator.connection.effectiveType || 'ไม่ทราบ') +
                    '\nDownlink: ' + (navigator.connection.downlink || 'ไม่ทราบ') + ' Mbps';
            } else {
                document.getElementById('connectionInfo').textContent = 'ไม่สามารถตรวจสอบได้';
            }

            // Visit screen info
            document.getElementById('visitScreenInfo').textContent =
                window.innerWidth + ' x ' + window.innerHeight + ' px';
        }

        document.addEventListener('DOMContentLoaded', detectBrowserInfo);

        // อัปเดตขนาดหน้าจอเมื่อปรับขนาด
        window.addEventListener('resize', function() {
            document.getElementById('screenSize').textContent =
                screen.width + ' x ' + screen.height + ' px\n' +
                'Viewport: ' + window.innerWidth + ' x ' + window.innerHeight + ' px';
            document.getElementById('visitScreenInfo').textContent =
                window.innerWidth + ' x ' + window.innerHeight + ' px';
        });
    </script>
</body>
</html>
