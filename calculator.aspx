<%@ Page Language="C#" ResponseEncoding="utf-8" ContentType="text/html; charset=utf-8" %>
<script runat="server">
    protected string calcResult = "";
    protected bool showCalcResult = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string num1Str = Request.Form["calcNum1"];
            string num2Str = Request.Form["calcNum2"];
            string operation = Request.Form["calcOperation"];

            double num1, num2;
            if (double.TryParse(num1Str, out num1) && double.TryParse(num2Str, out num2))
            {
                double result = 0;
                string opSymbol = "";
                bool valid = true;

                switch (operation)
                {
                    case "add":
                        result = num1 + num2;
                        opSymbol = "+";
                        break;
                    case "subtract":
                        result = num1 - num2;
                        opSymbol = "-";
                        break;
                    case "multiply":
                        result = num1 * num2;
                        opSymbol = "×";
                        break;
                    case "divide":
                        if (num2 != 0)
                        {
                            result = num1 / num2;
                            opSymbol = "÷";
                        }
                        else
                        {
                            calcResult = "<div class='calc-result error'>⚠️ ไม่สามารถหารด้วย 0 ได้</div>";
                            showCalcResult = true;
                            valid = false;
                        }
                        break;
                    case "modulo":
                        if (num2 != 0)
                        {
                            result = num1 % num2;
                            opSymbol = "%";
                        }
                        else
                        {
                            calcResult = "<div class='calc-result error'>⚠️ ไม่สามารถหารด้วย 0 ได้</div>";
                            showCalcResult = true;
                            valid = false;
                        }
                        break;
                    case "power":
                        result = Math.Pow(num1, num2);
                        opSymbol = "^";
                        break;
                    default:
                        valid = false;
                        break;
                }

                if (valid)
                {
                    calcResult = string.Format(
                        "<div class='calc-result success'>" +
                        "<div class='calc-expression'>{0:N2} {1} {2:N2}</div>" +
                        "<div class='calc-equals'>=</div>" +
                        "<div class='calc-answer'>{3:N4}</div>" +
                        "<div class='calc-timestamp'>คำนวณเมื่อ: {4}</div>" +
                        "</div>",
                        num1, opSymbol, num2, result,
                        DateTime.Now.ToString("dd MMMM yyyy HH:mm:ss", new System.Globalization.CultureInfo("th-TH"))
                    );
                    showCalcResult = true;
                }
            }
        }
    }
</script>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เครื่องคิดเลข - สายชล ยอยโพธิ์สัย</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* === Calculator Styles === */
        .calc-hero {
            background: linear-gradient(135deg, #00b09b, #96c93d);
            color: white;
            padding: 3rem 2rem;
            border-radius: 12px;
            text-align: center;
            margin-bottom: 2rem;
        }

        .calc-hero h1 {
            font-size: 2rem;
            margin-bottom: 0.5rem;
        }

        .calculator-container {
            max-width: 600px;
            margin: 0 auto 2rem;
            background: linear-gradient(145deg, #1a1a2e, #16213e);
            border-radius: 16px;
            padding: 2.5rem;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
        }

        .calculator-container h2 {
            color: #00ff88;
            border-bottom-color: rgba(0,255,136,0.3);
        }

        .calculator-container label {
            color: #88ccff;
        }

        .calculator-container input,
        .calculator-container select {
            background: rgba(255,255,255,0.95);
            border: 2px solid rgba(255,255,255,0.2);
        }

        .calculator-container input:focus,
        .calculator-container select:focus {
            border-color: #00ff88;
            box-shadow: 0 0 10px rgba(0,255,136,0.3);
        }

        .calc-btn {
            background: linear-gradient(135deg, #00ff88, #00b09b);
            color: #1a1a2e;
            border: none;
            padding: 1rem 2.5rem;
            font-size: 1.1rem;
            font-weight: 700;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
        }

        .calc-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(0,255,136,0.4);
        }

        .calc-result {
            text-align: center;
            padding: 2rem;
            border-radius: 12px;
            margin-bottom: 2rem;
            animation: fadeInUp 0.5s ease;
        }

        .calc-result.success {
            background: linear-gradient(135deg, #1a1a2e, #16213e);
            color: white;
            border: 2px solid #00ff88;
        }

        .calc-result.error {
            background: linear-gradient(135deg, #c0392b, #e74c3c);
            color: white;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .calc-expression {
            font-size: 1.5rem;
            color: #88ccff;
            font-family: 'Courier New', monospace;
            margin-bottom: 0.5rem;
        }

        .calc-equals {
            font-size: 2rem;
            color: #ffd700;
            margin: 0.5rem 0;
        }

        .calc-answer {
            font-size: 3rem;
            color: #00ff88;
            font-weight: bold;
            font-family: 'Courier New', monospace;
            text-shadow: 0 0 10px rgba(0,255,136,0.5);
        }

        .calc-timestamp {
            font-size: 0.85rem;
            color: #888;
            margin-top: 1rem;
        }

        .js-calc-display {
            background: #111;
            color: #00ff88;
            font-family: 'Courier New', monospace;
            font-size: 2rem;
            padding: 1rem;
            border-radius: 8px;
            text-align: right;
            min-height: 60px;
            border: 2px solid #333;
            margin-bottom: 1rem;
            overflow: hidden;
        }

        .js-calc-buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 0.5rem;
        }

        .js-calc-btn {
            padding: 1rem;
            font-size: 1.3rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.2s ease;
            font-weight: bold;
        }

        .js-calc-btn:hover {
            transform: scale(1.05);
        }

        .js-calc-btn.number {
            background: #2c3e50;
            color: white;
        }

        .js-calc-btn.operator {
            background: #f39c12;
            color: white;
        }

        .js-calc-btn.equals {
            background: #00ff88;
            color: #1a1a2e;
            grid-column: span 2;
        }

        .js-calc-btn.clear {
            background: #e74c3c;
            color: white;
        }

        .server-info-strip {
            background: linear-gradient(90deg, #00b09b, #96c93d);
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

        .validation-error-calc {
            color: #e74c3c;
            font-size: 0.85rem;
            margin-top: 0.3rem;
            display: none;
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
        <div class="calc-hero">
            <h1>🔢 เครื่องคิดเลข</h1>
            <p>เครื่องคิดเลขที่ใช้ทั้ง ASP.NET (Server-side) และ JavaScript (Client-side)</p>
        </div>

        <!-- SERVER INFO -->
        <div class="server-info-strip">
            <span>🕐 เวลาเซิร์ฟเวอร์: <%= DateTime.Now.ToString("dd MMMM yyyy HH:mm:ss", new System.Globalization.CultureInfo("th-TH")) %></span>
            <span>🌐 IP: <%= Request.UserHostAddress %></span>
        </div>

        <!-- RESULT (if POST) -->
        <% if (showCalcResult) { %>
            <%= calcResult %>
        <% } %>

        <!-- SERVER-SIDE CALCULATOR (ASP.NET Form) -->
        <div class="calculator-container">
            <h2>⚙️ คำนวณด้วย Server (ASP.NET)</h2>
            <p style="color: #aab; margin-bottom: 1.5rem;">กรอกตัวเลขและเลือกการคำนวณ แล้วกดปุ่มคำนวณ ผลลัพธ์จะถูกคำนวณที่ฝั่ง Server ด้วย C#</p>

            <form id="serverCalcForm" method="post" action="calculator.aspx" onsubmit="return validateCalcForm()">
                <div class="form-group">
                    <label for="calcNum1">🔢 ตัวเลขที่ 1 *</label>
                    <input type="text" id="calcNum1" name="calcNum1" placeholder="กรอกตัวเลข เช่น 42">
                    <span id="num1Error" class="validation-error-calc">⚠️ กรุณากรอกตัวเลข</span>
                </div>

                <div class="form-group">
                    <label for="calcOperation">➗ เลือกการคำนวณ *</label>
                    <select id="calcOperation" name="calcOperation" style="background: white;">
                        <option value="add">➕ บวก (+)</option>
                        <option value="subtract">➖ ลบ (-)</option>
                        <option value="multiply">✖️ คูณ (×)</option>
                        <option value="divide">➗ หาร (÷)</option>
                        <option value="modulo">🔢 เศษ (%)</option>
                        <option value="power">⬆️ ยกกำลัง (^)</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="calcNum2">🔢 ตัวเลขที่ 2 *</label>
                    <input type="text" id="calcNum2" name="calcNum2" placeholder="กรอกตัวเลข เช่น 10">
                    <span id="num2Error" class="validation-error-calc">⚠️ กรุณากรอกตัวเลข</span>
                </div>

                <button type="submit" class="calc-btn">🖩 คำนวณ (Server-side)</button>
            </form>
        </div>

        <!-- CLIENT-SIDE CALCULATOR (JavaScript) -->
        <section>
            <h2>💻 เครื่องคิดเลข JavaScript (Client-side)</h2>
            <p style="margin-bottom: 1.5rem;">เครื่องคิดเลขนี้ทำงานด้วย JavaScript ที่ฝั่ง Client โดยไม่ต้องส่งข้อมูลไปยัง Server</p>

            <div style="max-width: 400px; margin: 0 auto;">
                <div class="js-calc-display" id="jsCalcDisplay">0</div>
                <div class="js-calc-buttons">
                    <button class="js-calc-btn clear" onclick="clearCalc()">C</button>
                    <button class="js-calc-btn clear" onclick="backspace()">⌫</button>
                    <button class="js-calc-btn operator" onclick="appendCalc('%')">%</button>
                    <button class="js-calc-btn operator" onclick="appendCalc('/')">÷</button>

                    <button class="js-calc-btn number" onclick="appendCalc('7')">7</button>
                    <button class="js-calc-btn number" onclick="appendCalc('8')">8</button>
                    <button class="js-calc-btn number" onclick="appendCalc('9')">9</button>
                    <button class="js-calc-btn operator" onclick="appendCalc('*')">×</button>

                    <button class="js-calc-btn number" onclick="appendCalc('4')">4</button>
                    <button class="js-calc-btn number" onclick="appendCalc('5')">5</button>
                    <button class="js-calc-btn number" onclick="appendCalc('6')">6</button>
                    <button class="js-calc-btn operator" onclick="appendCalc('-')">−</button>

                    <button class="js-calc-btn number" onclick="appendCalc('1')">1</button>
                    <button class="js-calc-btn number" onclick="appendCalc('2')">2</button>
                    <button class="js-calc-btn number" onclick="appendCalc('3')">3</button>
                    <button class="js-calc-btn operator" onclick="appendCalc('+')">+</button>

                    <button class="js-calc-btn number" onclick="appendCalc('0')">0</button>
                    <button class="js-calc-btn number" onclick="appendCalc('.')">.</button>
                    <button class="js-calc-btn equals" onclick="calculateJS()">=</button>
                </div>
            </div>
        </section>

        <!-- QUICK LINKS -->
        <section class="text-center">
            <h2>🔗 ลิงก์ที่เกี่ยวข้อง</h2>
            <a href="guestbook.aspx" class="btn mt-2">📝 สมุดเยี่ยมชม</a>
            <a href="feedback.aspx" class="btn btn-success mt-2">💬 ส่ง Feedback</a>
            <a href="serverinfo.aspx" class="btn btn-secondary mt-2">🖥️ ข้อมูลเซิร์ฟเวอร์</a>
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
        // JavaScript: Server-side Calc Form Validation
        // =============================================
        function validateCalcForm() {
            let isValid = true;
            const num1 = document.getElementById('calcNum1').value.trim();
            const num2 = document.getElementById('calcNum2').value.trim();

            // ซ่อน error ทั้งหมด
            document.getElementById('num1Error').style.display = 'none';
            document.getElementById('num2Error').style.display = 'none';

            // ตรวจตัวเลขที่ 1
            if (num1 === '' || isNaN(num1)) {
                document.getElementById('num1Error').style.display = 'block';
                if (num1 === '') {
                    alert('กรุณากรอกตัวเลขที่ 1');
                } else {
                    document.getElementById('num1Error').textContent = '⚠️ กรุณากรอกเฉพาะตัวเลข';
                    alert('กรุณากรอกเฉพาะตัวเลขที่ 1');
                }
                isValid = false;
            }

            // ตรวจตัวเลขที่ 2
            if (num2 === '' || isNaN(num2)) {
                document.getElementById('num2Error').style.display = 'block';
                if (num2 === '') {
                    if (isValid) alert('กรุณากรอกตัวเลขที่ 2');
                } else {
                    document.getElementById('num2Error').textContent = '⚠️ กรุณากรอกเฉพาะตัวเลข';
                    if (isValid) alert('กรุณากรอกเฉพาะตัวเลขที่ 2');
                }
                isValid = false;
            }

            // ตรวจการหารด้วย 0
            if (isValid) {
                const operation = document.getElementById('calcOperation').value;
                if ((operation === 'divide' || operation === 'modulo') && parseFloat(num2) === 0) {
                    alert('ไม่สามารถหารด้วย 0 ได้!');
                    isValid = false;
                }
            }

            return isValid;
        }

        // =============================================
        // JavaScript: Client-side Calculator
        // =============================================
        let calcDisplay = '0';
        let newNumber = true;

        function updateDisplay() {
            document.getElementById('jsCalcDisplay').textContent = calcDisplay;
        }

        function appendCalc(value) {
            if (newNumber && !isNaN(value)) {
                calcDisplay = value;
                newNumber = false;
            } else {
                if (calcDisplay === '0' && !isNaN(value) && value !== '.') {
                    calcDisplay = value;
                } else {
                    calcDisplay += value;
                }
            }
            newNumber = false;
            updateDisplay();
        }

        function clearCalc() {
            calcDisplay = '0';
            newNumber = true;
            updateDisplay();
        }

        function backspace() {
            if (calcDisplay.length > 1) {
                calcDisplay = calcDisplay.slice(0, -1);
            } else {
                calcDisplay = '0';
                newNumber = true;
            }
            updateDisplay();
        }

        function calculateJS() {
            try {
                // ใช้ Function constructor แทน eval เพื่อความปลอดภัย
                const sanitized = calcDisplay.replace(/[^0-9+\-*/.%()]/g, '');
                const result = new Function('return ' + sanitized)();

                if (isFinite(result)) {
                    calcDisplay = String(parseFloat(result.toFixed(8)));
                } else {
                    calcDisplay = 'Error';
                }
            } catch (e) {
                calcDisplay = 'Error';
            }
            newNumber = true;
            updateDisplay();
        }

        // Keyboard support
        document.addEventListener('keydown', function(e) {
            const key = e.key;
            if (!isNaN(key) || key === '.') {
                appendCalc(key);
            } else if (key === '+' || key === '-' || key === '*' || key === '/') {
                appendCalc(key);
            } else if (key === 'Enter' || key === '=') {
                e.preventDefault();
                calculateJS();
            } else if (key === 'Escape' || key === 'c' || key === 'C') {
                clearCalc();
            } else if (key === 'Backspace') {
                backspace();
            }
        });
    </script>
</body>
</html>
