# 📖 คู่มือการใช้งาน (Usage Guide)

## 🎯 เริ่มต้นใช้งาน Personal Portfolio

---

## 1️⃣ **ตั้งค่าครั้งแรก**

### Step 1: เปิด Project
```
1. ไปที่โฟลเดอร์ D:\Srayuth\homework8\website
2. ดับเบิ้ลคลิก index.html
3. หรือคลิกขวา → Open with → Browser
```

### Step 2: ทดลองแต่ละหน้า
```
- Click "Home" → ดูหน้าแรก
- Click "About" → ดูข้อมูลส่วนตัว
- Click "CV" → ดูประวัติ (สามารถแก้ไข)
- Click "Portfolio" → ดูผลงาน
- Click "Contact" → ติดต่อเรา
```

---

## 2️⃣ **แก้ไข Resume (CV)**

### 📝 วิธีการแก้ไข

1. **ไปหน้า CV:**
   ```
   Menu → CV
   ```

2. **คลิกที่ข้อความ:**
   - ข้อความที่สามารถแก้ไขได้จะมีสีเหลือง
   - คลิกที่ส่วนใดก็ได้ (ชื่อ, อีเมล, ทักษะ, ฯลฯ)

3. **พิมพ์ข้อมูลใหม่:**
   ```
   ตัวอย่าง:
   - สุรยุทธ์ นักศึกษา → ชื่อของคุณ
   - 081-234-5678 → เบอร์ของคุณ
   - student@example.com → อีเมลของคุณ
   ```

4. **บันทึก:**
   - คลิกที่อื่น หรือกด Tab เพื่อบันทึก
   - ข้อมูลจะถูกบันทึกใน Browser โดยอัตโนมัติ

5. **ยืนยันการบันทึก:**
   - คลิกปุ่ม "💾 บันทึก Resume"
   - ข้อมูลจะคงไว้แม้ปิด Browser

---

### 🎯 ทักษะ (Skills)

**แก้ไขชื่อและระดับ:**
```
1. ไปหน้า CV → ส่วน ทักษะ
2. คลิกที่ชื่อทักษะ (เช่น "HTML5")
3. พิมพ์ชื่อใหม่ (เช่น "Python")
4. บันทึก

หลังการปรับปรุง Skill Bar จะปรับปรุงอัตโนมัติ
```

---

### 📚 การศึกษา (Education)

**เพิ่มหรือแก้ไข:**
```
1. ไปหน้า CV → ส่วน การศึกษา
2. คลิกที่:
   - ชื่อสถาบัน → แก้ไข
   - ระดับและปีการศึกษา → แก้ไข
3. บันทึก
```

---

### 💼 ประสบการณ์ (Experience)

**อัปเดตประสบการณ์การทำงาน:**
```
1. ไปหน้า CV → ส่วน ประสบการณ์
2. แก้ไข:
   - ตำแหน่งงาน
   - บริษัท/องค์กร
   - ระยะเวลา
   - คำอธิบายงาน
3. บันทึก
```

---

## 3️⃣ **เปลี่ยนรูปภาพ**

### 🖼️ รูปโปรไฟล์ (Profile Image)

**บน Homepage:**
```
1. ไปหน้า Home
2. คลิกที่รูปโปรไฟล์ (รูปวงกลมตรงกลาง)
3. ป้อน URL รูปภาพใหม่:
   https://example.com/image.jpg
4. คลิก OK
5. รูปจะเปลี่ยน
```

---

### 🏆 รูปโปรเจค (Portfolio Images)

**บน Portfolio Page:**
```
1. ไปหน้า Portfolio
2. Hover (เลื่อนเมาส์) บนโปรเจคที่ต้องการแก้ไข
3. ปุ่มจะปรากฏ: "✏️ แก้ไข" และ "👁️ ดู"
4. คลิก "✏️ แก้ไข"
5. ป้อน URL รูปใหม่
6. คลิก OK
7. รูปจะเปลี่ยน
```

---

### 📸 รูปแกลอรี่ (Gallery Images)

**บน Gallery Page:**
```
1. ไปหน้า Gallery
2. Hover บนรูปที่ต้องการเปลี่ยน
3. คลิก "✏️ แก้ไข"
4. ป้อน URL รูปใหม่
5. รูปจะเปลี่ยน

สามารถแก้ไขทั้ง 9 รูป
```

---

## 4️⃣ **เพิ่มผลงานใหม่**

### 📋 เพิ่มโปรเจคใน Portfolio

**วิธีการ:**
```
1. เปิดไฟล์ portfolio.html ด้วย Text Editor
   (Notepad, VS Code, ฯลฯ)

2. ค้นหาส่วน:
   <div class="grid">
   ...
   </div>

3. คัดลอก block นี้:
   <div class="portfolio-card" id="portfolio-1">
       <div class="portfolio-image">
           ...
       </div>
       <div class="portfolio-content">
           ...
       </div>
   </div>

4. วางก่อน </div> สุดท้ายของ grid

5. แก้ไข:
   - id="portfolio-1" → id="portfolio-7"
   - ชื่อโปรเจค
   - คำอธิบาย
   - icon/color

6. บันทึกไฟล์
7. Refresh Browser
```

---

### 📝 เพิ่มบทความใน Blog

**ขั้นตอน:**
```
1. เปิดไฟล์ blog.html

2. คัดลอก:
   <article class="card">
       <h3>หัวข้อ</h3>
       <p class="text-secondary">วันที่ | เวลา</p>
       <p>เนื้อหา...</p>
       <a href="#" class="btn">อ่านต่อ</a>
   </article>

3. วางตรงต้นใน <section> หรือสุดท้าย

4. แก้ไข:
   - หัวข้อบทความ
   - วันที่
   - เนื้อหา

5. บันทึก
```

---

## 5️⃣ **ใช้ Contact Form**

### 📧 ส่งข้อความ

**วิธีการ:**
```
1. ไปหน้า Contact
2. กรอกแบบฟอร์ม:
   - ชื่อ: สุรยุทธ์
   - อีเมล: your@email.com
   - เบอร์โทร: 081-xxx-xxxx (optional)
   - หัวข้อ: ส่วนหัวของข้อความ
   - ข้อความ: ข้อความของคุณ

3. คลิก "✉️ ส่งข้อความ"
4. ข้อมูลจะถูกบันทึก
```

---

## 6️⃣ **พิมพ์ Resume**

### 🖨️ พิมพ์เป็น PDF

**ขั้นตอน:**
```
1. ไปหน้า CV
2. ปุ่มบน: "🖨️ พิมพ์ Resume"
   หรือกด Ctrl+P

3. ตั้งค่า:
   - Destination: "Save as PDF"
   - Margins: Minimal
   - Uncheck "Headers and footers"

4. Save PDF
```

---

## 7️⃣ **ฟิลเตอร์ (Filter)**

### 🏷️ Blog Filters

```
1. ไปหน้า Blog
2. คลิกปุ่มหมวดหมู่:
   - HTML, CSS, JavaScript, PHP, Database
   - ทั้งหมด

3. บทความจะถูกกรอง
```

---

### 🏷️ Gallery Filters

```
1. ไปหน้า Gallery
2. คลิกปุ่มหมวดหมู่:
   - ทั้งหมด, โปรเจค, กิจกรรม, ทีมงาน, ส่วนตัว

3. รูปจะถูกกรอง
```

---

## 8️⃣ **ทดสอบ Responsive**

### 📱 ทดสอบบนมือถือ

**วิธีการ 1: DevTools**
```
1. กด F12 (เปิด DevTools)
2. กด Ctrl+Shift+M (Toggle Device)
3. เลือก Device:
   - iPhone 12
   - iPad
   - หรือขนาดที่กำหนดเอง
```

**วิธีการ 2: Browser URL**
```
1. ค้นหา Responsive Design Tester ออนไลน์
2. ป้อน URL ของเว็บไซต์
3. ทดสอบหลายขนาด
```

---

## 🎯 **Tips & Tricks**

### 💡 ลดเวลา:

1. **Keyboard Shortcuts:**
   - Ctrl+S = บันทึกไฟล์ (ใน Editor)
   - F5 = Refresh Page
   - F12 = Open DevTools
   - Ctrl+P = Print

2. **Multiple Edits:**
   - ลอง Edit Resume ทั้งครั้ง
   - ข้อมูลจะบันทึกอัตโนมัติ

3. **Browser Extensions:**
   - Wappalyzer (ตรวจ Tech Stack)
   - ColorPicker (เลือกสี)

---

## ⚠️ **ข้อควรระวัง**

### ❌ ห้ามทำ:

1. **ลบไฟล์สำคัญ:**
   - index.html, cv.html, style.css

2. **เปลี่ยน Folder Structure:**
   - css/ ต้องมี style.css
   - js/ ต้องมี data.js

3. **ใช้ URL รูปที่ไม่ถูกต้อง:**
   - ตรวจสอบ URL ความถูกต้อง

4. **ลบ localStorage ไม่ตั้งใจ:**
   - DevTools → Application → Clear Site Data

---

## 🆘 **แก้ไขปัญหา**

### ❓ รูปไม่แสดง

**วิธีแก้:**
```
1. ตรวจสอบ URL ถูกต้อง
2. ตรวจสอบ Firewall (ถ้า local)
3. ลองใช้รูปอื่น
4. ตรวจสอบ Console (F12)
```

---

### ❓ Resume ไม่บันทึก

**วิธีแก้:**
```
1. ตรวจสอบ Browser ไม่ได้ Delete Storage
2. ลองเปลี่ยน Browser อื่น
3. ตรวจสอบ localStorage:
   - DevTools → Application → Storage → localStorage
```

---

### ❓ Form ไม่ส่ง

**วิธีแก้:**
```
1. ตรวจสอบ Field ครบ (*)
2. ตรวจสอบ Email Format ถูกต้อง
3. คลิกปุ่ม Submit ตรง
4. ตรวจสอบ Console Error
```

---

## 🌐 **ลิงก์ที่เป็นประโยชน์**

```
HTML Validator: https://validator.w3.org/
CSS Validator: https://jigsaw.w3.org/css-validator/
Color Picker: https://htmlcolorcodes.com/
Image URL: https://unsplash.com/
Icons: https://www.flaticon.com/
```

---

## 📞 **ต้องการช่วยเหลือเพิ่มเติม?**

```
1. อ่าน README.md
2. อ่าน FEATURES.md
3. ตรวจ SUBMISSION_CHECKLIST.md
4. ติดต่อ: student@example.com
```

---

**ขอให้สนุกกับการใช้งาน! 🎉**

Happy Coding! 💻
