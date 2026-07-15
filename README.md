=== Student Info ===

Name: นายสายชล ยอยโพธิ์สัย
Student ID: 6810301014

=== Website Info ===

URL: http://localhost:8080

Number of Pages: 8

Menu Structure: Home | About | CV | Portfolio | Contact

=== Pages Detail ===


--- Page ---
File Name: index.html

Description: หน้าแรก (Homepage) - แนะนำตัวและเมนูการนำทาง พร้อมไฮไลต์ทักษะและการศึกษาเบื้องต้น

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>หน้าแรก - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <!-- HERO SECTION -->
        <section class="hero">
            <img id="profileImage" src="images/myprofile.jpg" alt="Profile" class="hero-image" onclick="changeProfileImage()" title="คลิกเพื่อเปลี่ยนรูปภาพ">
            <h1>สายชล ยอยโพธิ์สัย</h1>
            <p>นักศึกษาวิศวกรรมคอมพิวเตอร์ สถาบันเทคโนโลยีจิตรลดา</p>
        </section>

        <!-- INTRODUCTION -->
        <section>
            <h2>🎯 ยินดีต้อนรับ</h2>
            <p>
                สวัสดีครับ ผมชื่อสายชล ยอยโพธิ์สัย นักศึกษาคณะเทคโนโลยีดิจิทัล สาขาวิศวกรรมคอมพิวเตอร์ จากสถาบันเทคโนโลยีจิตรลดา
                เว็บไซต์นี้เป็นตัวแทนของผลงานและทักษะของผม ในด้านการพัฒนาเว็บแอปพลิเคชันและเทคโนโลยีคอมพิวเตอร์
            </p>
            <p>
                ผมมีความชำนาญในการใช้ HTML5, CSS3, JavaScript และการออกแบบเว็บไซต์ 
                นอกจากนี้ผมยังสนใจในการเรียนรู้เทคโนโลยีใหม่ๆ และมุ่งมั่นที่จะพัฒนาทักษะอยู่เสมอครับ
            </p>
        </section>

        <!-- HIGHLIGHTS -->
        <section>
            <h2>⭐ ไฮไลต์</h2>
            <div class="grid">
                <div class="card">
                    <h3>🎓 การศึกษา</h3>
                    <p>กำลังศึกษาต่อในสาขาเทคโนโลยีสารสนเทศ ที่มหาวิทยาลัยเทคโนโลยี</p>
                </div>
                <div class="card">
                    <h3>💻 ทักษะเทคนิค</h3>
                    <p>เชี่ยวชาญ HTML, CSS, JavaScript, PHP, MySQL และเครื่องมือพัฒนา</p>
                </div>
                <div class="card">
                    <h3>🚀 ประสบการณ์</h3>
                    <p>มีประสบการณ์ในการพัฒนาเว็บแอปพลิเคชัน และระบบจัดการ</p>
                </div>
                <div class="card">
                    <h3>🎨 การออกแบบ</h3>
                    <p>สามารถออกแบบ UI/UX ที่สวยงามและใช้งานได้ง่าย</p>
                </div>
                <div class="card">
                    <h3>📱 Responsive Design</h3>
                    <p>เว็บไซต์ที่ปรับปรุงให้ใช้งานได้ดีบนทุกอุปกรณ์</p>
                </div>
                <div class="card">
                    <h3>🤝 ทีมงาน</h3>
                    <p>มีความสามารถในการทำงานเป็นทีมและติดต่อสื่อสารที่ดี</p>
                </div>
            </div>
        </section>

        <!-- QUICK LINKS -->
        <section class="text-center">
            <h2>🔗 ลิงก์ที่ยอดนิยม</h2>
            <a href="portfolio.html" class="btn mt-2">ดูผลงาน</a>
            <a href="cv.html" class="btn btn-secondary mt-2">ดู CV</a>
            <a href="contact.html" class="btn btn-success mt-2">ติดต่อเรา</a>
        </section>

        <!-- ADDITIONAL PAGES -->
        <section>
            <h2>📖 หน้าอื่นๆ</h2>
            <div class="grid">
                <div class="card">
                    <h3>📚 บล็อก</h3>
                    <p>อ่านบทความและการแบ่งปันความรู้เกี่ยวกับเทคโนโลยี</p>
                    <a href="blog.html" class="btn">👉 ไปยังบล็อก</a>
                </div>
                <div class="card">
                    <h3>🛠️ บริการ</h3>
                    <p>ดูบริการที่ฉันนำเสนอและแพคเกจราคา</p>
                    <a href="services.html" class="btn">👉 ดูบริการ</a>
                </div>
                <div class="card">
                    <h3>📸 แกลอรี่</h3>
                    <p>ดูรูปภาพจากโปรเจค กิจกรรม และเหตุการณ์</p>
                    <a href="gallery.html" class="btn">👉 ไปยังแกลอรี่</a>
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
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
</body>
</html>
```

--- Page ---

File Name: about.html

Description: หน้าเกี่ยวกับตัวเอง (About) - แสดงประวัติการศึกษาจากสถาบันเทคโนโลยีจิตรลดาและโรงเรียนศรีสโมสรวิทยา ความสนใจ งานอดิเรก และวิสัยทัศน์

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เกี่ยวกับตัวเอง - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>👋 เกี่ยวกับตัวเอง</h2>
            <div class="grid">
                <div>
                    <h3>ชื่อ</h3>
                    <p>นายสายชล ยอยโพธิ์สัย</p>
                </div>
                <div>
                    <h3>สถานะ</h3>
                    <p>นักศึกษาคณะเทคโนโลยีดิจิทัล สาขาวิศวกรรมคอมพิวเตอร์ ชั้นปีที่ 1</p>
                </div>
                <div>
                    <h3>โทรศัพท์</h3>
                    <p>092-253-3016</p>
                </div>
                <div>
                    <h3>อีเมล</h3>
                    <p>saichon.y@example.com</p>
                </div>
            </div>
        </section>

        <!-- BACKGROUND -->
        <section>
            <h2>📖 พื้นฐานการศึกษา</h2>
            <div class="card">
                <h3>สถาบันเทคโนโลยีจิตรลดา</h3>
                <p class="text-secondary">คณะเทคโนโลยีดิจิทัล - วิศวกรรมคอมพิวเตอร์ | 2568 - ปัจจุบัน</p>
                <p>
                    ศึกษาวิชาการออกแบบและพัฒนาเว็บไซต์, โครงสร้างข้อมูลและอัลกอริทึม, พื้นฐานระบบคอมพิวเตอร์และวิศวกรรมซอฟต์แวร์
                    GPAX: 3.34
                </p>
            </div>

            <div class="card">
                <h3>โรงเรียนศรีสโมสรวิทยา</h3>
                <p class="text-secondary">มัธยมศึกษาตอนปลาย - แผนการเรียนวิทยาศาสตร์-คณิตศาสตร์ | 2565 - 2568</p>
                <p>
                    สำเร็จการศึกษาในระดับชั้นมัธยมศึกษาตอนปลาย จ.ชัยนาท และเข้าศึกษาต่อด้วยรอบ TCAS แฟ้มสะสมผลงาน
                </p>
            </div>
        </section>

        <!-- INTERESTS & HOBBIES -->
        <section>
            <h2>💡 ความสนใจและงานอดิเรก</h2>
            <div class="grid">
                <div class="card">
                    <h3>👨‍💻 การเขียนโค้ด</h3>
                    <p>ชอบการแก้ปัญหาด้วยโปรแกรมและการพัฒนาโซลูชั่นใหม่ๆ</p>
                </div>
                <div class="card">
                    <h3>🎮 เกมส์</h3>
                    <p>เล่นเกมส์และสนใจในการพัฒนาเกมส์</p>
                </div>
                <div class="card">
                    <h3>📚 การอ่าน</h3>
                    <p>ชอบอ่านหนังสือเกี่ยวกับเทคโนโลยีและการพัฒนาตนเอง</p>
                </div>
                <div class="card">
                    <h3>🎬 ดูหนัง</h3>
                    <p>รักการดูหนังวิทยาศาสตร์กลั่นแกล้งและภาพยนตร์ดราม่า</p>
                </div>
                <div class="card">
                    <h3>⚽ ฟุตบอล</h3>
                    <p>เล่นและชมฟุตบอล ส่วนโปรดของผม</p>
                </div>
                <div class="card">
                    <h3>🏥 สุขภาพ</h3>
                    <p>หลงใหลในการออกกำลังกายและการดูแลสุขภาพ</p>
                </div>
            </div>
        </section>

        <!-- ACHIEVEMENTS -->
        <section>
            <h2>🏆 ผลงานและรางวัล</h2>
            <div class="card">
                <h3>🥇 รางวัลโครงการสนุกเรียนรู้ด้วยเทคโนโลยี</h3>
                <p class="text-secondary">2565</p>
                <p>ได้รับรางวัลสำหรับโครงการพัฒนาเว็บไซต์ที่ช่วยในการจัดการข้อมูลนักเรียน</p>
            </div>

            <div class="card">
                <h3>🥈 เข้าเทพ-ที่ 2 การประกวดโปรแกรมสิ่งแวดล้อม</h3>
                <p class="text-secondary">2564</p>
                <p>ได้รับรางวัลที่ 2 สำหรับแอปพลิเคชันบันทึกสภาพแวดล้อม</p>
            </div>

            <div class="card">
                <h3>🎖️ หนังสือเชิดชูเกียรติเรียนดี</h3>
                <p class="text-secondary">2563, 2564, 2565</p>
                <p>ได้รับหนังสือเชิดชูเกียรติ 3 ปีติดต่อกันจากมหาวิทยาลัย</p>
            </div>
        </section>

        <!-- STRENGTHS -->
        <section>
            <h2>💪 จุดแข็งของฉัน</h2>
            <div class="grid">
                <div class="card">
                    <h3>🎯 มีเป้าหมายชัดเจน</h3>
                    <p>ทำการงานด้วยจริงจังและมุ่งเน้นไปยังการบรรลุเป้าหมาย</p>
                </div>
                <div class="card">
                    <h3>🧠 การคิดอย่างมีเหตุผล</h3>
                    <p>สามารถวิเคราะห์ปัญหาและหาทางแก้ไขที่ดีที่สุด</p>
                </div>
                <div class="card">
                    <h3>⏱️ การจัดการเวลา</h3>
                    <p>จัดการเวลาได้เป็นอย่างดีและส่งงานตรงเวลา</p>
                </div>
                <div class="card">
                    <h3>👥 ทักษะการสื่อสาร</h3>
                    <p>สามารถติดต่อสื่อสารกับผู้อื่นได้ชัดเจนและมีประสิทธิผล</p>
                </div>
            </div>
        </section>

        <!-- VISION -->
        <section class="text-center">
            <h2>🔮 วิสัยทัศน์ของฉัน</h2>
            <p>
                ผมมีความฝันที่จะกลายเป็นวิศวกรซอฟต์แวร์มืออาชีพ ที่สามารถสร้างสรรค์แอปพลิเคชัน 
                ที่มีประโยชน์ต่อสังคม ผมต้องการให้ทักษะของผมช่วยแก้ปัญหาในชีวิตจริงของผู้คน
            </p>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
        <div class="footer-links">
            <a href="about.html">เกี่ยวกับ</a>
            <a href="contact.html">ติดต่อ</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
</body>
</html>
```

--- Page ---

File Name: cv.html

Description: หน้าประวัติย่อ (CV/Resume) - แสดงประวัติ ข้อมูลติดต่อ ทักษะ และประสบการณ์การทำงานแบบโต้ตอบ (สามารถคลิกแก้ไขได้แบบ contenteditable)

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CV/Resume - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <!-- EDIT NOTICE -->
        <section style="background-color: #fffacd; border-left: 4px solid #f39c12;">
            <h3>📝 หมายเหตุ: คุณสามารถแก้ไขข้อมูล Resume ได้</h3>
            <p>
                ✏️ คลิกที่ข้อความใดๆ เพื่อแก้ไข (ข้อความที่สามารถแก้ไขได้จะมีสีเหลือง)<br>
                💾 ข้อมูลของคุณจะถูกบันทึกใน browser โดยอัตโนมัติ<br>
                🖨️ สามารถพิมพ์ resume ได้โดยใช้ Ctrl+P
            </p>
        </section>

        <!-- PERSONAL INFO -->
        <section class="resume-section">
            <div style="display: flex; gap: 2rem; align-items: start;">
                <div style="flex: 1;">
                    <h2>
                        <span id="resumeName" contenteditable="true">สายชล ยอยโพธิ์สัย</span>
                    </h2>
                    <h3>
                        <span id="resumeTitle" contenteditable="true">นักศึกษาวิศวกรรมคอมพิวเตอร์</span>
                    </h3>
                    
                    <div class="resume-item">
                        <h4>📧 อีเมล</h4>
                        <p><span id="resumeEmail" contenteditable="true">saichon.y@example.com</span></p>
                    </div>

                    <div class="resume-item">
                        <h4>📱 โทรศัพท์</h4>
                        <p><span id="resumePhone" contenteditable="true">092-253-3016</span></p>
                    </div>

                    <div class="resume-item">
                        <h4>📍 ที่อยู่</h4>
                        <p><span id="resumeLocation" contenteditable="true">142 หมู่ 13 ต.วังตะเคียน อ.หนองมะโมง จ.ชัยนาท 17120</span></p>
                    </div>
                </div>
            </div>
        </section>

        <!-- EDUCATION -->
        <section class="resume-section">
            <h2>🎓 การศึกษา</h2>
            <div id="education"></div>
        </section>

        <!-- SKILLS -->
        <section class="resume-section">
            <h2>💻 ทักษะ</h2>
            <div id="skills"></div>
        </section>

        <!-- EXPERIENCE -->
        <section class="resume-section">
            <h2>💼 ประสบการณ์การทำงาน</h2>
            <div id="experience"></div>
        </section>

        <!-- ADDITIONAL SECTIONS -->
        <section class="resume-section">
            <h2>📚 ความรู้เพิ่มเติม</h2>
            <div class="resume-item">
                <h4>💬 ภาษา</h4>
                <p contenteditable="true">ไทย (ภาษาแม่), อังกฤษ (ระดับดี)</p>
            </div>

            <div class="resume-item">
                <h4>🏆 ใบรับรอง</h4>
                <p contenteditable="true">
                    • ใบรับรอง PHP Developer - เสร็จสิ้น 2565<br>
                    • ใบรับรอง Web Design - เสร็จสิ้น 2564<br>
                    • ใบรับรอง Database Management - เสร็จสิ้น 2563
                </p>
            </div>

            <div class="resume-item">
                <h4>🛠️ เครื่องมือและเทคโนโลยี</h4>
                <p contenteditable="true">
                    IDE: VS Code, PHPStorm | 
                    Database: MySQL, MongoDB | 
                    Tools: Git, GitHub, Figma | 
                    OS: Windows, Linux
                </p>
            </div>
        </section>

        <!-- ACTION BUTTONS -->
        <section class="text-center">
            <button class="btn" onclick="saveResume()">💾 บันทึก Resume</button>
            <button class="btn btn-secondary" onclick="printResume()">🖨️ พิมพ์ Resume</button>
            <button class="btn btn-success" onclick="downloadResume()">⬇️ ดาวน์โหลด (PDF)</button>
        </section>

        <!-- CV TIPS -->
        <section>
            <h2>💡 เคล็ดลับการแก้ไข CV</h2>
            <div class="grid">
                <div class="card">
                    <h3>✏️ วิธีการแก้ไข</h3>
                    <p>
                        1. คลิกที่ข้อความที่ต้องการแก้ไข<br>
                        2. ข้อความจะมีสีเหลืองเมื่อพร้อมแก้ไข<br>
                        3. พิมพ์ข้อมูลใหม่<br>
                        4. คลิกที่อื่นหรือกด Tab เพื่อบันทึก
                    </p>
                </div>

                <div class="card">
                    <h3>💾 บันทึกข้อมูล</h3>
                    <p>
                        ข้อมูลจะถูกบันทึกโดยอัตโนมัติใน browser<br>
                        คลิกปุ่ม "บันทึก Resume" เพื่อแน่ใจว่าบันทึกแล้ว<br>
                        ข้อมูลจะยังคงอยู่แม้ปิดเบราว์เซอร์
                    </p>
                </div>

                <div class="card">
                    <h3>🖨️ พิมพ์และส่งออก</h3>
                    <p>
                        ใช้ Ctrl+P เพื่อพิมพ์<br>
                        เลือก "บันทึกเป็น PDF"<br>
                        ส่วนหัว/ส่วนท้ายจะถูกซ่อนโดยอัตโนมัติ
                    </p>
                </div>

                <div class="card">
                    <h3>🎨 การจัดรูปแบบ</h3>
                    <p>
                        หากต้องการเพิ่มข้อมูลเพิ่มเติม ให้คัดลอก resume-item<br>
                        แก้ไขไฟล์ HTML โดยตรง<br>
                        ใช้ HTML tags เบื้องต้น (เช่น &lt;strong&gt;, &lt;em&gt;)
                    </p>
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
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
    <script>
        // บันทึกข้อมูล Resume เมื่อผู้ใช้แก้ไข
        document.addEventListener('blur', function(e) {
            if (e.target && e.target.contentEditable === 'true') {
                localStorage.setItem('resumeLastUpdated', new Date().toLocaleString('th-TH'));
            }
        }, true);

        function saveResume() {
            const resumeText = document.body.innerText;
            localStorage.setItem('resumeData', resumeText);
            localStorage.setItem('resumeLastSaved', new Date().toLocaleString('th-TH'));
            alert('✅ Resume ได้ถูกบันทึกแล้ว\nเวลา: ' + localStorage.getItem('resumeLastSaved'));
        }

        function printResume() {
            window.print();
        }

        function downloadResume() {
            const element = document.body;
            const opt = {
                margin: 10,
                filename: 'Resume-' + document.getElementById('resumeName').innerText + '.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                html2canvas: { scale: 2 },
                jsPDF: { orientation: 'portrait', unit: 'mm', format: 'a4' }
            };
            alert('💡 ใช้ Ctrl+P แล้วเลือก "บันทึกเป็น PDF" แทนการดาวน์โหลด');
        }
    </script>

    <!-- CSS สำหรับการพิมพ์ -->
    <style>
        @media print {
            header, footer, nav, .text-center, .grid, section:has(> h2:contains("เคล็ดลับ")) {
                display: none;
            }
            
            body {
                background: white;
            }
            
            [contenteditable="true"] {
                background-color: white !important;
            }
        }
    </style>
</body>
</html>
```

--- Page ---

File Name: portfolio.html

Description: หน้าผลงานการบ้าน (Portfolio) - รวบรวมงานการบ้านต่างๆ (HW 6, 7, 8) พร้อมระบุชื่อ คำอธิบาย ปุ่ม View และปุ่ม Download ไฟล์การบ้าน

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ผลงาน Portfolio - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>💼 ผลงาน Portfolio</h2>
            <p>นี่คือผลงานการบ้านและโปรเจคต่างๆ ที่ผมได้ทำมาในขณะศึกษา</p>
        </section>

        <!-- PORTFOLIO GRID -->
        <div class="grid">
            <!-- PROJECT 1 -->
            <div class="portfolio-card" id="portfolio-1">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #3498db, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">📱</span>
                </div>
                <div class="portfolio-content">
                    <h3>ระบบจัดการเรียนออนไลน์</h3>
                    <p>
                        โปรเจคพัฒนาเว็บแอปพลิเคชันสำหรับจัดการหลักสูตรการเรียนออนไลน์ 
                        ใช้ HTML5, CSS3, JavaScript, PHP และ MySQL
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(1); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(1); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>

            <!-- PROJECT 2 -->
            <div class="portfolio-card" id="portfolio-2">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #27ae60, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">🛒</span>
                </div>
                <div class="portfolio-content">
                    <h3>เว็บไซต์ E-Commerce</h3>
                    <p>
                        สร้างเว็บไซต์ขายของออนไลน์พร้อมระบบช้อปปิ้ง การชำระเงิน 
                        และจัดการสินค้า ใช้ PHP Framework และ Database MySQL
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(2); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(2); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>

            <!-- PROJECT 3 -->
            <div class="portfolio-card" id="portfolio-3">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #e74c3c, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">📊</span>
                </div>
                <div class="portfolio-content">
                    <h3>ระบบรายงานและวิเคราะห์ข้อมูล</h3>
                    <p>
                        พัฒนาระบบวิเคราะห์ข้อมูล พร้อมการสร้างรายงาน 
                        และแสดงผลด้วยกราฟและแผนภูมิต่างๆ
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(3); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(3); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>

            <!-- PROJECT 4 -->
            <div class="portfolio-card" id="portfolio-4">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #f39c12, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">🌍</span>
                </div>
                <div class="portfolio-content">
                    <h3>ระบบจัดการสิ่งแวดล้อม</h3>
                    <p>
                        แอปพลิเคชันบันทึกและติดตามข้อมูลสิ่งแวดล้อม 
                        พร้อมแพลตฟอร์มเว็บและโปรแกรมบนเดสก์ท็อป
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(4); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(4); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>

            <!-- PROJECT 5 -->
            <div class="portfolio-card" id="portfolio-5">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #9b59b6, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">📚</span>
                </div>
                <div class="portfolio-content">
                    <h3>ห้องสมุดดิจิทัล</h3>
                    <p>
                        สร้างเว็บไซต์ห้องสมุดดิจิทัล สำหรับค้นหาและเข้าถึงหนังสือและบทความต่างๆ 
                        ระบบบริหารจัดการสมาชิก
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(5); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(5); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>

            <!-- PROJECT 6 -->
            <div class="portfolio-card" id="portfolio-6">
                <div class="portfolio-image" style="background: linear-gradient(135deg, #1abc9c, #2c3e50); display: flex; align-items: center; justify-content: center;">
                    <span style="font-size: 3rem;">🏥</span>
                </div>
                <div class="portfolio-content">
                    <h3>ระบบจัดการโรงพยาบาล</h3>
                    <p>
                        ระบบบริหารจัดการสำหรับโรงพยาบาล รวมถึงการลงทะเบียนผู้ป่วย 
                        การจัดตารางเวลา และการเก็บประวัติเวชกรรม
                    </p>
                    <div class="portfolio-buttons">
                        <a href="#" class="btn" onclick="viewProject(6); return false;">👁️ ดู</a>
                        <a href="#" class="btn btn-secondary" onclick="downloadProject(6); return false;">⬇️ ดาวน์โหลด</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- ADD NEW PROJECT SECTION -->
        <section>
            <h2>✨ เพิ่มผลงานใหม่</h2>
            <p>
                โครงสร้างของหน้า Portfolio นี้ถูกออกแบบให้สามารถเพิ่มผลงานใหม่ได้ง่าย 
                เพียงแค่คัดลอก Portfolio Card และแก้ไขข้อมูลตามความเหมาะสม
            </p>
            <div class="card">
                <h4>วิธีการเพิ่มผลงานใหม่:</h4>
                <ol style="padding-left: 20px;">
                    <li>ไปที่ไฟล์ portfolio.html</li>
                    <li>คัดลอก &lt;div class="portfolio-card"&gt; ... &lt;/div&gt;</li>
                    <li>วางก่อน &lt;/div&gt; (ก่อน closing grid)</li>
                    <li>เปลี่ยน project number และเนื้อหา</li>
                    <li>บันทึกไฟล์</li>
                </ol>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
        <div class="footer-links">
            <a href="about.html">เกี่ยวกับ</a>
            <a href="contact.html">ติดต่อ</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
    <script>
        function viewProject(projectId) {
            alert(`📂 เปิดโปรเจค #${projectId}\n\nในการใช้จริง ให้เชื่อมโยงไปยัง URL หรือเพจของโปรเจค`);
        }

        function downloadProject(projectId) {
            alert(`⬇️ กำลังดาวน์โหลดโปรเจค #${projectId}\n\nในการใช้จริง ให้เชื่อมโยงไปยังไฟล์ .zip หรือ .rar`);
        }

        // อนุญาตให้คลิกที่รูปเพื่อแก้ไข
        function changePortfolioImage(index) {
            const newImageUrl = prompt('ใส่ URL รูปภาพใหม่:');
            if (newImageUrl) {
                const card = document.getElementById(`portfolio-${index}`);
                const img = card.querySelector('.portfolio-image');
                img.style.backgroundImage = `url('${newImageUrl}')`;
                img.style.backgroundSize = 'cover';
                img.style.backgroundPosition = 'center';
            }
        }
    </script>
</body>
</html>
```

--- Page ---

File Name: contact.html

Description: หน้าติดต่อ (Contact) - มีฟอร์มกรอกข้อความสำหรับติดต่อผู้ดูแลระบบ (ชื่อ, อีเมล, เบอร์โทร, หัวข้อ, ข้อความ) พร้อมลิงก์แผนที่และคำถามที่พบบ่อย (FAQ)

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ติดต่อ - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>📧 ติดต่อเรา</h2>
            <p>มีคำถามหรือข้อเสนอแนะ? โปรดกรอกแบบฟอร์มด้านล่างและเราจะติดต่อกลับให้ในเร็วๆ นี้</p>
        </section>

        <div class="grid">
            <!-- CONTACT FORM -->
            <section>
                <h3>📮 ส่งข้อความ</h3>
                <form id="contactForm" onsubmit="submitForm(event)">
                    <div class="form-group">
                        <label for="name">ชื่อของคุณ *</label>
                        <input type="text" id="name" name="name" required placeholder="กรุณาใส่ชื่อของคุณ">
                    </div>

                    <div class="form-group">
                        <label for="email">อีเมล *</label>
                        <input type="email" id="email" name="email" required placeholder="your@email.com">
                    </div>

                    <div class="form-group">
                        <label for="phone">เบอร์โทรศัพท์</label>
                        <input type="tel" id="phone" name="phone" placeholder="081-234-5678">
                    </div>

                    <div class="form-group">
                        <label for="subject">หัวข้อเรื่อง *</label>
                        <input type="text" id="subject" name="subject" required placeholder="หัวข้อของข้อความ">
                    </div>

                    <div class="form-group">
                        <label for="message">ข้อความ *</label>
                        <textarea id="message" name="message" required placeholder="กรุณากรอกข้อความของคุณ..."></textarea>
                    </div>

                    <button type="submit" class="btn">✉️ ส่งข้อความ</button>
                </form>
            </section>

            <!-- CONTACT INFO -->
            <section>
                <h3>📞 ข้อมูลติดต่อ</h3>
                
                <div class="card">
                    <h4>📱 โทรศัพท์</h4>
                    <p>
                        <strong>มือถือ:</strong> 081-234-5678<br>
                        <strong>บ้าน:</strong> 02-123-4567
                    </p>
                </div>

                <div class="card">
                    <h4>📧 อีเมล</h4>
                    <p>
                        <strong>อีเมลหลัก:</strong> student@example.com<br>
                        <strong>อีเมลมหาลัย:</strong> suriyuth@university.ac.th
                    </p>
                </div>

                <div class="card">
                    <h4>📍 ที่อยู่</h4>
                    <p>
                        กรุงเทพมหานคร<br>
                        ประเทศไทย
                    </p>
                </div>

                <div class="card">
                    <h4>🔗 โซเชียลมีเดีย</h4>
                    <p>
                        <a href="#">Facebook</a> • 
                        <a href="#">Instagram</a> • 
                        <a href="#">GitHub</a> • 
                        <a href="#">LinkedIn</a>
                    </p>
                </div>

                <div class="card">
                    <h4>⏰ เวลาทำการ</h4>
                    <p>
                        จันทร์ - ศุกร์: 09:00 - 17:00<br>
                        เสาร์ - อาทิตย์: ปิด
                    </p>
                </div>
            </section>
        </div>

        <!-- MAP SECTION (if needed) -->
        <section>
            <h2>🗺️ แผนที่ตำแหน่ง</h2>
            <div style="background: linear-gradient(135deg, #3498db, #2c3e50); height: 300px; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: white;">
                <p style="font-size: 1.5rem;">📍 แผนที่จะแสดงที่นี่</p>
            </div>
        </section>

        <!-- FAQ SECTION -->
        <section>
            <h2>❓ คำถามที่พบบ่อย</h2>
            <div class="card">
                <h4>💬 ใช้เวลานานแค่ไหนในการตอบสนองต่อข้อความ?</h4>
                <p>โดยทั่วไป เราจะตอบสนองภายใน 24-48 ชั่วโมง</p>
            </div>

            <div class="card">
                <h4>💬 สามารถขอให้ทำโปรเจคได้ไหม?</h4>
                <p>ได้ครับ เราสามารถหารือเรื่องโปรเจคใหม่ผ่านอีเมลหรือการพบปะ</p>
            </div>

            <div class="card">
                <h4>💬 ค่าบริการคิดอย่างไร?</h4>
                <p>ค่าบริการขึ้นอยู่กับประเภทและขนาดของโปรเจค ติดต่อมาเพื่อเจรจาราคา</p>
            </div>

            <div class="card">
                <h4>💬 ทำงานรับจ้างได้ไหม?</h4>
                <p>ได้ครับ เรายินดีสนทนาเรื่องงานและโครงการต่างๆ</p>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
        <div class="footer-links">
            <a href="about.html">เกี่ยวกับ</a>
            <a href="contact.html">ติดต่อ</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
    <script>
        function submitForm(event) {
            event.preventDefault();
            
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const subject = document.getElementById('subject').value;
            const message = document.getElementById('message').value;

            // สร้าง mailto link
            const mailtoLink = `mailto:saichon.y@example.com?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(`ชื่อ: ${name}\nอีเมล: ${email}\nเบอร์โทร: ${phone}\n\nข้อความ:\n${message}`)}`;

            // หรือแสดงข้อความสำเร็จ
            alert(`✅ ขอบคุณครับ!\n\nข้อมูลของคุณ:\n- ชื่อ: ${name}\n- อีเมล: ${email}\n- หัวข้อ: ${subject}\n\nเราจะติดต่อกลับให้ในเร็วๆ นี้`);
            
            // บันทึกข้อมูลลง localStorage
            const contactData = {
                name: name,
                email: email,
                phone: phone,
                subject: subject,
                message: message,
                timestamp: new Date().toLocaleString('th-TH')
            };
            
            localStorage.setItem('lastContact', JSON.stringify(contactData));
            
            // รีเซ็ตฟอร์ม
            document.getElementById('contactForm').reset();
        }
    </script>
</body>
</html>
```

--- Page ---

File Name: blog.html

Description: หน้าบทความ (Blog) - รวบรวมบทความน่าสนใจเกี่ยวกับเว็บเทคโนโลยี พร้อมระบบตัวกรองหมวดหมู่ของบทความ

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>บทความ Blog - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>📚 บทความและบล็อก</h2>
            <p>บทความและการแบ่งปันความรู้เกี่ยวกับการพัฒนาเว็บและเทคโนโลยี</p>
        </section>

        <!-- BLOG POST 1 -->
        <article class="card" style="margin-bottom: 2rem;">
            <h3>🚀 วิธีเริ่มต้นเรียน Web Development</h3>
            <p class="text-secondary">📅 17 กรกฎาคม 2566 | ⏱️ เวลาอ่าน: 5 นาที</p>
            <p>
                หากคุณต้องการเริ่มต้นเรียน Web Development ครั้งแรก นี่คือเส้นทางที่ฉันแนะนำ:
                เริ่มจาก HTML5 พื้นฐาน ตามด้วย CSS3 สำหรับการจัดรูปแบบ แล้ว JavaScript สำหรับการสร้างความโต้ตอบ
                สิ่งสำคัญคือการฝึกปฏิบัติอย่างต่อเนื่องและการสร้างโปรเจคที่น่าสนใจ
            </p>
            <a href="#" class="btn">📖 อ่านต่อ</a>
        </article>

        <!-- BLOG POST 2 -->
        <article class="card" style="margin-bottom: 2rem;">
            <h3>💡 HTML5 Tags ที่สำคัญที่ต้องรู้</h3>
            <p class="text-secondary">📅 10 กรกฎาคม 2566 | ⏱️ เวลาอ่าน: 3 นาที</p>
            <p>
                HTML5 มี semantic tags มากมายที่ช่วยในการสร้างโครงสร้างเว็บไซต์ที่ดี เช่น
                &lt;header&gt;, &lt;nav&gt;, &lt;main&gt;, &lt;article&gt;, &lt;aside&gt;, &lt;footer&gt;
                การใช้ tags เหล่านี้อย่างถูกต้องไม่เพียงแต่ช่วยให้โค้ดอ่านได้ง่ายขึ้น แต่ยังช่วยให้ SEO ดีขึ้นด้วย
            </p>
            <a href="#" class="btn">📖 อ่านต่อ</a>
        </article>

        <!-- BLOG POST 3 -->
        <article class="card" style="margin-bottom: 2rem;">
            <h3>🎨 CSS Flexbox กับ Grid ต่างกันอย่างไร</h3>
            <p class="text-secondary">📅 5 กรกฎาคม 2566 | ⏱️ เวลาอ่าน: 4 นาที</p>
            <p>
                Flexbox และ Grid ต่างกันในเรื่องของการจัดเรียงสมาชิก Flexbox นั้นเหมาะสำหรับการจัดเรียงในหนึ่งมิติ (แนว horizontal หรือ vertical)
                ในขณะที่ Grid นั้นจัดเรียงได้สองมิติ ทั้ง horizontal และ vertical พร้อมกัน
                ในทางปฏิบัติ ส่วนใหญ่มักใช้ Flexbox สำหรับเมนู และ Grid สำหรับเลย์เอาต์หลัก
            </p>
            <a href="#" class="btn">📖 อ่านต่อ</a>
        </article>

        <!-- BLOG POST 4 -->
        <article class="card" style="margin-bottom: 2rem;">
            <h3>🔐 ความปลอดภัยเบื้องต้นสำหรับเว็บไซต์</h3>
            <p class="text-secondary">📅 28 มิถุนายน 2566 | ⏱️ เวลาอ่าน: 6 นาที</p>
            <p>
                ความปลอดภัยเว็บไซต์เป็นเรื่องสำคัญ ต้องใช้ HTTPS, ป้องกัน SQL Injection, XSS, CSRF
                และการจัดการรหัสผ่านให้ปลอดภัย นอกจากนี้ ต้องอัปเดตไลบรารีและเครื่องมือเสมอ
                เพื่อให้แน่ใจว่าไม่มีช่องโหว่ความปลอดภัยที่รู้จักกัน
            </p>
            <a href="#" class="btn">📖 อ่านต่อ</a>
        </article>

        <!-- BLOG POST 5 -->
        <article class="card" style="margin-bottom: 2rem;">
            <h3>📱 Responsive Web Design ทำอย่างไร</h3>
            <p class="text-secondary">📅 22 มิถุนายน 2566 | ⏱️ เวลาอ่าน: 5 นาที</p>
            <p>
                Responsive Web Design หมายถึงเว็บไซต์ที่ปรับตัวได้กับขนาดหน้าจอต่างๆ
                ใช้ Media Queries ใน CSS เพื่อปรับรูปแบบตามขนาดจอ Mobile First คือการเริ่มจากมือถือ
                และขยายไปยังเดสก์ท็อป นี่เป็นแนวทางที่ดีและสอดคล้องกับแนวโน้มปัจจุบัน
            </p>
            <a href="#" class="btn">📖 อ่านต่อ</a>
        </article>

        <!-- SUBSCRIBE SECTION -->
        <section class="text-center">
            <h2>📰 สมัครรับบทความใหม่</h2>
            <p>ลงทะเบียนเพื่อรับบทความและอัปเดตใหม่ที่สำคัญ</p>
            <form style="max-width: 500px; margin: 1rem auto; display: flex; gap: 0.5rem;">
                <input type="email" placeholder="กรุณาใส่อีเมลของคุณ" required style="flex: 1;">
                <button type="submit" class="btn">✉️ สมัคร</button>
            </form>
        </section>

        <!-- CATEGORY FILTER -->
        <section>
            <h2>🏷️ หมวดหมู่</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 0.5rem;">
                <button class="btn" onclick="filterBlog('html')">HTML</button>
                <button class="btn" onclick="filterBlog('css')">CSS</button>
                <button class="btn" onclick="filterBlog('javascript')">JavaScript</button>
                <button class="btn" onclick="filterBlog('php')">PHP</button>
                <button class="btn" onclick="filterBlog('database')">Database</button>
                <button class="btn" onclick="filterBlog('all')">ทั้งหมด</button>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
        <div class="footer-links">
            <a href="about.html">เกี่ยวกับ</a>
            <a href="contact.html">ติดต่อ</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
    <script>
        function filterBlog(category) {
            alert(`🏷️ กรองตามหมวดหมู่: ${category}`);
        }
    </script>
</body>
</html>
```

--- Page ---

File Name: services.html

Description: หน้าบริการ (Services) - แนะนำบริการรับพัฒนาและออกแบบเว็บไซต์ แพ็กเกจราคา และขั้นตอนการดำเนินงาน

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>บริการ Services - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>🛠️ บริการของฉัน</h2>
            <p>ฉันมีบริการต่างๆ เพื่อช่วยให้ทำงานและโปรเจคของคุณสำเร็จลุล่วง</p>
        </section>

        <!-- SERVICES GRID -->
        <div class="grid">
            <!-- SERVICE 1 -->
            <div class="card">
                <h3>💻 Web Development</h3>
                <p>
                    พัฒนาเว็บไซต์แบบ static หรือ dynamic ตามความต้องการของคุณ
                    ใช้เทคโนโลยี HTML5, CSS3, JavaScript, PHP และ MySQL
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ Website สถิต</li>
                    <li>✓ E-commerce</li>
                    <li>✓ Web Application</li>
                    <li>✓ CMS Customization</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>

            <!-- SERVICE 2 -->
            <div class="card">
                <h3>🎨 UI/UX Design</h3>
                <p>
                    ออกแบบเว็บไซต์และแอปพลิเคชันให้สวยงาม ใช้งานได้ง่าย และดึงดูดผู้ใช้
                    มีศิลปะการออกแบบและการวิจัยผู้ใช้
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ Wireframing</li>
                    <li>✓ Mockup Design</li>
                    <li>✓ Prototype</li>
                    <li>✓ User Experience</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>

            <!-- SERVICE 3 -->
            <div class="card">
                <h3>📱 Responsive Design</h3>
                <p>
                    ออกแบบเว็บไซต์ให้ใช้งานได้ดีบนทุกอุปกรณ์ มือถือ แท็บเล็ต และเดสก์ท็อป
                    ใช้ CSS Media Queries และ Mobile First Approach
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ Mobile-first</li>
                    <li>✓ Cross-browser</li>
                    <li>✓ Performance</li>
                    <li>✓ Accessibility</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>

            <!-- SERVICE 4 -->
            <div class="card">
                <h3>🔍 Web Optimization</h3>
                <p>
                    ปรับปรุงประสิทธิภาพเว็บไซต์ให้โหลดเร็ว SEO ดี และ User Experience ดีขึ้น
                    วิเคราะห์และปรับปรุงตามข้อมูล
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ Speed Optimization</li>
                    <li>✓ SEO</li>
                    <li>✓ Code Minification</li>
                    <li>✓ Image Optimization</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>

            <!-- SERVICE 5 -->
            <div class="card">
                <h3>🛡️ Web Security</h3>
                <p>
                    ตรวจสอบและปรับปรุงความปลอดภัยของเว็บไซต์ ป้องกันการโจมตี
                    และการสูญหายข้อมูล SSL Certificate, Encryption และอื่นๆ
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ SSL/HTTPS</li>
                    <li>✓ Vulnerability Scan</li>
                    <li>✓ Data Encryption</li>
                    <li>✓ Security Audit</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>

            <!-- SERVICE 6 -->
            <div class="card">
                <h3>📚 Training & Consultation</h3>
                <p>
                    ให้คำปรึกษาและอบรมการพัฒนาเว็บ สำหรับคนที่เพิ่งเริ่มต้น
                    หรือต้องการเพิ่มเติมทักษะ
                </p>
                <ul style="text-align: left; margin: 1rem 0;">
                    <li>✓ HTML/CSS</li>
                    <li>✓ JavaScript</li>
                    <li>✓ PHP/MySQL</li>
                    <li>✓ Web Best Practices</li>
                </ul>
                <a href="contact.html" class="btn">💬 ติดต่อ</a>
            </div>
        </div>

        <!-- PRICING SECTION -->
        <section>
            <h2>💰 ราคาและแพคเกจ</h2>
            <div class="grid">
                <!-- BASIC PACKAGE -->
                <div class="card" style="border-left: 4px solid #3498db;">
                    <h3>🌱 Starter Package</h3>
                    <p style="font-size: 1.5rem; font-weight: bold; color: #3498db;">฿ 5,000 - 10,000</p>
                    <ul style="text-align: left; margin: 1rem 0;">
                        <li>✓ เว็บไซต์ 5 หน้า</li>
                        <li>✓ Responsive Design</li>
                        <li>✓ Contact Form</li>
                        <li>✓ Basic SEO</li>
                        <li>✗ ไม่รวม Hosting</li>
                    </ul>
                    <a href="contact.html" class="btn">สอบถามราคา</a>
                </div>

                <!-- STANDARD PACKAGE -->
                <div class="card" style="border-left: 4px solid #27ae60;">
                    <h3>⭐ Standard Package</h3>
                    <p style="font-size: 1.5rem; font-weight: bold; color: #27ae60;">฿ 15,000 - 25,000</p>
                    <ul style="text-align: left; margin: 1rem 0;">
                        <li>✓ เว็บไซต์ 10+ หน้า</li>
                        <li>✓ Responsive Design</li>
                        <li>✓ Database Integration</li>
                        <li>✓ Admin Panel</li>
                        <li>✓ SEO Optimization</li>
                    </ul>
                    <a href="contact.html" class="btn btn-success">สอบถามราคา</a>
                </div>

                <!-- PREMIUM PACKAGE -->
                <div class="card" style="border-left: 4px solid #e74c3c;">
                    <h3>💎 Premium Package</h3>
                    <p style="font-size: 1.5rem; font-weight: bold; color: #e74c3c;">฿ 30,000+</p>
                    <ul style="text-align: left; margin: 1rem 0;">
                        <li>✓ E-commerce Platform</li>
                        <li>✓ Payment Gateway</li>
                        <li>✓ Advanced Features</li>
                        <li>✓ Support & Maintenance</li>
                        <li>✓ SSL & Hosting</li>
                    </ul>
                    <a href="contact.html" class="btn btn-secondary">สอบถามราคา</a>
                </div>
            </div>
        </section>

        <!-- PROCESS SECTION -->
        <section>
            <h2>🔄 ขั้นตอนการทำงาน</h2>
            <div style="display: flex; justify-content: space-around; align-items: center; flex-wrap: wrap; gap: 2rem;">
                <div class="text-center">
                    <div style="font-size: 2rem; margin-bottom: 0.5rem;">📋</div>
                    <h4>1. ปรึกษาหารือ</h4>
                    <p>เข้าใจความต้องการและเป้าหมาย</p>
                </div>
                <div style="font-size: 2rem;">→</div>
                <div class="text-center">
                    <div style="font-size: 2rem; margin-bottom: 0.5rem;">🎨</div>
                    <h4>2. ออกแบบ</h4>
                    <p>สร้าง Mockup และ Prototype</p>
                </div>
                <div style="font-size: 2rem;">→</div>
                <div class="text-center">
                    <div style="font-size: 2rem; margin-bottom: 0.5rem;">💻</div>
                    <h4>3. พัฒนา</h4>
                    <p>เขียนโค้ดและสร้างการทำงาน</p>
                </div>
                <div style="font-size: 2rem;">→</div>
                <div class="text-center">
                    <div style="font-size: 2rem; margin-bottom: 0.5rem;">✅</div>
                    <h4>4. ทดสอบ</h4>
                    <p>ทดสอบและแก้ไขข้อมูล</p>
                </div>
                <div style="font-size: 2rem;">→</div>
                <div class="text-center">
                    <div style="font-size: 2rem; margin-bottom: 0.5rem;">🚀</div>
                    <h4>5. ส่งมอบ</h4>
                    <p>ส่งมอบและสนับสนุน</p>
                </div>
            </div>
        </section>

        <!-- CTA SECTION -->
        <section class="text-center" style="background: linear-gradient(135deg, #3498db 0%, #2c3e50 100%); color: white;">
            <h2>🚀 เริ่มต้นโปรเจคของคุณ</h2>
            <p>ติดต่อมาทั้งสอบถามข้อมูลหรือสั่งบริการ</p>
            <a href="contact.html" class="btn" style="background-color: white; color: #3498db; border-color: white;">📞 ติดต่อเดี๋ยวนี้</a>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2026 สายชล ยอยโพธิ์สัย - Personal Portfolio</p>
        <div class="footer-links">
            <a href="about.html">เกี่ยวกับ</a>
            <a href="contact.html">ติดต่อ</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
</body>
</html>
```

--- Page ---

File Name: gallery.html

Description: หน้าแกลอรี่ (Gallery) - แกลอรี่รูปภาพกิจกรรมและโปรเจกต์แยกตามหมวดหมู่ พร้อมฟีเจอร์แก้ไขรูปภาพผ่าน URL และการขยายดูรูปภาพ (Modal View)

Code:
```html
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>แกลอรี่ Gallery - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            cursor: pointer;
            transition: transform 0.3s ease;
            height: 250px;
        }

        .gallery-item:hover {
            transform: scale(1.05);
        }

        .gallery-item img,
        .gallery-placeholder {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .gallery-placeholder {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: white;
        }

        .gallery-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .gallery-item:hover .gallery-overlay {
            opacity: 1;
        }

        .gallery-overlay button {
            background: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 200;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
        }

        .modal-content {
            margin: auto;
            display: block;
            max-width: 90%;
            max-height: 90%;
            margin-top: 2.5%;
        }

        .close {
            position: absolute;
            top: 20px;
            right: 40px;
            color: white;
            font-size: 40px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover {
            color: #bbb;
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
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- MAIN CONTENT -->
    <main>
        <section>
            <h2>📸 แกลอรี่</h2>
            <p>รูปภาพจากโปรเจค กิจกรรม และเหตุการณ์ต่างๆ</p>
        </section>

        <!-- CATEGORY TABS -->
        <section>
            <h3>🏷️ หมวดหมู่รูปภาพ</h3>
            <div style="display: flex; gap: 0.5rem; flex-wrap: wrap;">
                <button class="btn" onclick="filterGallery('all')">ทั้งหมด</button>
                <button class="btn" onclick="filterGallery('projects')">โปรเจค</button>
                <button class="btn" onclick="filterGallery('events')">กิจกรรม</button>
                <button class="btn" onclick="filterGallery('team')">ทีมงาน</button>
                <button class="btn" onclick="filterGallery('personal')">ส่วนตัว</button>
            </div>
        </section>

        <!-- GALLERY GRID -->
        <div class="gallery-grid">
            <!-- GALLERY ITEM 1 -->
            <div class="gallery-item" data-category="projects">
                <div class="gallery-placeholder">🖥️</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(1)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(1)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 2 -->
            <div class="gallery-item" data-category="projects">
                <div class="gallery-placeholder">📱</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(2)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(2)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 3 -->
            <div class="gallery-item" data-category="projects">
                <div class="gallery-placeholder">🎨</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(3)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(3)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 4 -->
            <div class="gallery-item" data-category="events">
                <div class="gallery-placeholder">🎉</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(4)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(4)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 5 -->
            <div class="gallery-item" data-category="team">
                <div class="gallery-placeholder">👥</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(5)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(5)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 6 -->
            <div class="gallery-item" data-category="personal">
                <div class="gallery-placeholder">🏖️</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(6)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(6)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 7 -->
            <div class="gallery-item" data-category="projects">
                <div class="gallery-placeholder">📊</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(7)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(7)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 8 -->
            <div class="gallery-item" data-category="events">
                <div class="gallery-placeholder">🎓</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(8)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(8)">👁️ ดู</button>
                </div>
            </div>

            <!-- GALLERY ITEM 9 -->
            <div class="gallery-item" data-category="team">
                <div class="gallery-placeholder">🤝</div>
                <div class="gallery-overlay">
                    <button onclick="editImage(9)">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(9)">👁️ ดู</button>
                </div>
            </div>
        </div>

        <!-- MODAL FOR ENLARGING IMAGES -->
        <div id="imageModal" class="modal">
            <span class="close" onclick="closeModal()">&times;</span>
            <img class="modal-content" id="modalImage" alt="">
        </div>

        <!-- ADD PHOTO SECTION -->
        <section>
            <h2>📤 เพิ่มรูปภาพใหม่</h2>
            <div class="card">
                <h3>วิธีการเพิ่มรูปภาพ</h3>
                <ol style="padding-left: 20px;">
                    <li>สร้างโฟลเดอร์ "images" ในโปรเจคถ้ายังไม่มี</li>
                    <li>วางรูปภาพในโฟลเดอร์นั้น</li>
                    <li>เปิดไฟล์ gallery.html</li>
                    <li>คัดลอก &lt;div class="gallery-item"&gt;...&lt;/div&gt;</li>
                    <li>เปลี่ยน placeholder และเพิ่มรูปภาพ</li>
                    <li>บันทึกและทดสอบ</li>
                </ol>
            </div>
        </section>

        <!-- STATS SECTION -->
        <section class="text-center">
            <h2>📈 สถิติแกลอรี่</h2>
            <div class="grid">
                <div class="card">
                    <h3>9</h3>
                    <p>รูปภาพทั้งหมด</p>
                </div>
                <div class="card">
                    <h3>5</h3>
                    <p>หมวดหมู่</p>
                </div>
                <div class="card">
                    <h3>100%</h3>
                    <p>แก้ไขได้</p>
                </div>
                <div class="card">
                    <h3>∞</h3>
                    <p>เพิ่มได้ไม่จำกัด</p>
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
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </footer>

    <script src="js/data.js"></script>
    <script>
        function filterGallery(category) {
            const items = document.querySelectorAll('.gallery-item');
            
            items.forEach(item => {
                if (category === 'all' || item.dataset.category === category) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        }

        function editImage(id) {
            const newImageUrl = prompt(`กรุณาใส่ URL รูปภาพใหม่ (รูปภาพที่ ${id}):`);
            if (newImageUrl) {
                const item = document.querySelectorAll('.gallery-item')[id - 1];
                const placeholder = item.querySelector('.gallery-placeholder');
                
                const img = document.createElement('img');
                img.src = newImageUrl;
                img.alt = `ภาพที่ ${id}`;
                
                item.innerHTML = '';
                item.appendChild(img);
                item.appendChild(document.createElement('div')).className = 'gallery-overlay';
                
                item.querySelector('.gallery-overlay').innerHTML = `
                    <button onclick="editImage(${id})">✏️ แก้ไข</button>
                    <button onclick="enlargeImage(${id})">👁️ ดู</button>
                `;
                
                alert(`✅ รูปภาพที่ ${id} ได้ถูกอัปเดตแล้ว`);
            }
        }

        function enlargeImage(id) {
            const items = document.querySelectorAll('.gallery-item');
            const item = items[id - 1];
            const img = item.querySelector('img');
            const modal = document.getElementById('imageModal');
            const modalImg = document.getElementById('modalImage');
            
            if (img) {
                modalImg.src = img.src;
                modal.style.display = 'block';
            }
        }

        function closeModal() {
            const modal = document.getElementById('imageModal');
            modal.style.display = 'none';
        }

        // ปิด modal เมื่อคลิกนอกรูป
        window.onclick = function(event) {
            const modal = document.getElementById('imageModal');
            if (event.target == modal) {
                modal.style.display = 'none';
            }
        }
    </script>
</body>
</html>
```

=== CSS Code ===

```css
/* ===============================================
   GLOBAL STYLES
   =============================================== */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --primary-color: #2c3e50;
    --secondary-color: #3498db;
    --accent-color: #e74c3c;
    --light-bg: #ecf0f1;
    --white: #ffffff;
    --dark-text: #2c3e50;
    --light-text: #7f8c8d;
    --success-color: #27ae60;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: var(--dark-text);
    background-color: #f5f5f5;
}

/* ===============================================
   HEADER & NAVIGATION
   =============================================== */

header {
    background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
    color: var(--white);
    padding: 1rem 0;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    z-index: 100;
}

.header-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.site-title {
    font-size: 1.8rem;
    font-weight: bold;
    text-decoration: none;
    color: var(--white);
    transition: transform 0.3s;
}

.site-title:hover {
    transform: scale(1.05);
}

nav ul {
    list-style: none;
    display: flex;
    gap: 2rem;
    flex-wrap: wrap;
}

nav a {
    color: var(--white);
    text-decoration: none;
    font-weight: 500;
    transition: all 0.3s ease;
    position: relative;
}

nav a::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 0;
    height: 2px;
    background-color: var(--accent-color);
    transition: width 0.3s ease;
}

nav a:hover::after {
    width: 100%;
}

/* ===============================================
   MAIN CONTAINER
   =============================================== */

main {
    max-width: 1200px;
    margin: 2rem auto;
    padding: 0 20px;
    min-height: calc(100vh - 200px);
}

/* ===============================================
   HERO SECTION
   =============================================== */

.hero {
    background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
    color: var(--white);
    padding: 4rem 2rem;
    border-radius: 10px;
    text-align: center;
    margin-bottom: 2rem;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.hero h1 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.hero p {
    font-size: 1.2rem;
    opacity: 0.9;
}

.hero-image {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    margin: 1rem auto;
    border: 4px solid var(--white);
    display: block;
}

/* ===============================================
   CONTENT SECTIONS
   =============================================== */

section {
    background: var(--white);
    padding: 2rem;
    margin-bottom: 2rem;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

section h2 {
    color: var(--primary-color);
    font-size: 1.8rem;
    margin-bottom: 1.5rem;
    border-bottom: 3px solid var(--secondary-color);
    padding-bottom: 0.5rem;
}

section h3 {
    color: var(--secondary-color);
    font-size: 1.3rem;
    margin: 1.5rem 0 0.5rem 0;
}

/* ===============================================
   GRID LAYOUTS
   =============================================== */

.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
}

.card {
    background: var(--light-bg);
    border-radius: 8px;
    padding: 1.5rem;
    transition: all 0.3s ease;
    border-left: 4px solid var(--secondary-color);
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.card h3 {
    color: var(--primary-color);
    margin-bottom: 0.5rem;
}

.card p {
    color: var(--light-text);
    font-size: 0.95rem;
}

/* ===============================================
   PORTFOLIO CARDS
   =============================================== */

.portfolio-card {
    background: var(--white);
    border: 2px solid var(--light-bg);
    border-radius: 8px;
    overflow: hidden;
    transition: all 0.3s ease;
}

.portfolio-card:hover {
    border-color: var(--secondary-color);
    box-shadow: 0 5px 15px rgba(52, 152, 219, 0.2);
}

.portfolio-image {
    width: 100%;
    height: 200px;
    background: linear-gradient(135deg, var(--secondary-color), var(--primary-color));
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    color: var(--white);
}

.portfolio-content {
    padding: 1.5rem;
}

.portfolio-content h3 {
    color: var(--primary-color);
    margin-bottom: 0.5rem;
}

.portfolio-buttons {
    display: flex;
    gap: 1rem;
    margin-top: 1rem;
}

/* ===============================================
   BUTTONS
   =============================================== */

.btn {
    display: inline-block;
    padding: 0.8rem 1.5rem;
    background-color: var(--secondary-color);
    color: var(--white);
    text-decoration: none;
    border-radius: 5px;
    transition: all 0.3s ease;
    border: 2px solid var(--secondary-color);
    cursor: pointer;
    font-size: 1rem;
    font-weight: 500;
}

.btn:hover {
    background-color: var(--primary-color);
    border-color: var(--primary-color);
    transform: translateY(-2px);
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.btn-secondary {
    background-color: var(--accent-color);
    border-color: var(--accent-color);
}

.btn-secondary:hover {
    background-color: #c0392b;
    border-color: #c0392b;
}

.btn-success {
    background-color: var(--success-color);
    border-color: var(--success-color);
}

.btn-success:hover {
    background-color: #229954;
    border-color: #229954;
}

/* ===============================================
   FORMS
   =============================================== */

form {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
}

.form-group {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 0.5rem;
    font-weight: 600;
    color: var(--primary-color);
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="date"],
textarea,
select {
    padding: 0.8rem;
    border: 2px solid var(--light-bg);
    border-radius: 5px;
    font-size: 1rem;
    font-family: inherit;
    transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="tel"]:focus,
input[type="date"]:focus,
textarea:focus,
select:focus {
    outline: none;
    border-color: var(--secondary-color);
    background-color: #f9f9f9;
}

textarea {
    resize: vertical;
    min-height: 120px;
}

/* ===============================================
   EDITABLE RESUME
   =============================================== */

.resume-section {
    margin-bottom: 2rem;
}

.resume-item {
    margin-bottom: 1.5rem;
    padding-bottom: 1.5rem;
    border-bottom: 1px solid var(--light-bg);
}

.resume-item:last-child {
    border-bottom: none;
}

.resume-item h4 {
    color: var(--primary-color);
    font-size: 1.1rem;
    margin-bottom: 0.3rem;
}

.resume-item .meta {
    color: var(--light-text);
    font-size: 0.9rem;
    font-style: italic;
    margin-bottom: 0.5rem;
}

.resume-item p {
    color: var(--dark-text);
}

.edit-btn {
    background-color: var(--secondary-color);
    color: var(--white);
    padding: 0.5rem 1rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 1rem;
}

.edit-btn:hover {
    background-color: var(--primary-color);
}

[contenteditable="true"] {
    background-color: #fffacd;
    padding: 0.5rem;
    border-radius: 3px;
}

[contenteditable="true"]:focus {
    outline: 2px solid var(--secondary-color);
}

/* ===============================================
   SKILLS
   =============================================== */

.skill-item {
    margin-bottom: 1rem;
}

.skill-name {
    display: flex;
    justify-content: space-between;
    margin-bottom: 0.3rem;
    font-weight: 600;
}

.skill-bar {
    background-color: var(--light-bg);
    height: 8px;
    border-radius: 4px;
    overflow: hidden;
}

.skill-progress {
    background: linear-gradient(90deg, var(--secondary-color), var(--primary-color));
    height: 100%;
    transition: width 0.3s ease;
}

/* ===============================================
   FOOTER
   =============================================== */

footer {
    background-color: var(--primary-color);
    color: var(--white);
    text-align: center;
    padding: 2rem;
    margin-top: 3rem;
}

footer p {
    margin-bottom: 0.5rem;
}

.footer-links {
    display: flex;
    justify-content: center;
    gap: 1.5rem;
    margin-top: 1rem;
    flex-wrap: wrap;
}

.footer-links a {
    color: var(--light-bg);
    text-decoration: none;
    transition: color 0.3s;
}

.footer-links a:hover {
    color: var(--accent-color);
}

/* ===============================================
   RESPONSIVE DESIGN
   =============================================== */

@media (max-width: 768px) {
    .header-container {
        flex-direction: column;
        gap: 1rem;
    }

    nav ul {
        gap: 1rem;
        justify-content: center;
    }

    .hero {
        padding: 2rem 1rem;
    }

    .hero h1 {
        font-size: 1.8rem;
    }

    section {
        padding: 1.5rem 1rem;
    }

    .grid {
        grid-template-columns: 1fr;
    }

    .portfolio-buttons {
        flex-direction: column;
    }

    .btn {
        text-align: center;
    }
}

@media (max-width: 480px) {
    .hero h1 {
        font-size: 1.5rem;
    }

    section h2 {
        font-size: 1.3rem;
    }

    nav ul {
        gap: 0.5rem;
        font-size: 0.9rem;
    }
}

/* ===============================================
   UTILITY CLASSES
   =============================================== */

.text-center {
    text-align: center;
}

.text-secondary {
    color: var(--light-text);
}

.mt-2 {
    margin-top: 1rem;
}

.mt-3 {
    margin-top: 1.5rem;
}

.mb-2 {
    margin-bottom: 1rem;
}

.mb-3 {
    margin-bottom: 1.5rem;
}

.gap-1 {
    gap: 0.5rem;
}

.gap-2 {
    gap: 1rem;
}

.rounded {
    border-radius: 8px;
}

.shadow {
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}
```

=== Features Checklist ===

Homepage: มีชื่อเว็บไซต์ แนะนำตัว เมนูการนำทางหลัก และข้อมูลเบื้องต้น ครบถ้วนถูกต้อง
Menu: เมนูระบบนำทาง Home | About | CV | Portfolio | Contact ปรากฏในทุกหน้าและใช้งานได้จริง
Homework Page: หน้าผลงานการบ้าน มีรายละเอียดผลงาน พร้อมปุ่ม View และปุ่ม Download ในรูปแบบ Card Layout
Contact Form: มีแบบฟอร์มรับข้อมูล (ชื่อ, อีเมล, ข้อความ) ตามเกณฑ์ที่กำหนด
CV Page: หน้าประวัติส่วนตัว มีประวัติย่อ ทักษะ ประสบการณ์ และช่องทางติดต่ออย่างครบถ้วน
Images: มีรูปภาพประกอบมากกว่า 3 รูป (รูปโปรไฟล์นักศึกษา, รูปผลงานการบ้าน, และภาพแกลอรี่)

=== Cloud Deployment ===

Platform: GitHub Pages / Netlify

Public URL: (ระบุคลาวด์ URL ของคุณ เช่น https://username.github.io/homework8)

Description: เว็บไซต์พอร์ตโฟลิโอส่วนตัว 8 หน้าของ นายสายชล ยอยโพธิ์สัย

Status: Completed
