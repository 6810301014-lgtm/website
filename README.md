# 📝 การบ้าน HW 8 - HTML + CSS + Cloud Deployment

## ===== ข้อมูลนักศึกษา =====
- **ชื่อ:** นายสายชล ยอยโพธิ์สัย
- **รหัสประจำตัว:** 6810301014  
- **ห้องเรียน:** คณะเทคโนโลยีดิจิทัล - วิศวกรรมคอมพิวเตอร์

---

## ===== ข้อมูลเว็บไซต์ =====

### 🌐 URL
- **Local IIS:** `http://localhost:8080`
- **Cloud URL:** (สำหรับส่งทีหลัง)

### 📊 จำนวนหน้าเว็บไซต์: **8 หน้า**

### 🧭 โครงสร้างเมนู:
```
Home
├── Homepage
├── About Me
├── CV/Resume
├── Portfolio (Homework)
└── Contact

Additional Pages:
├── Blog (บทความ)
├── Services (บริการ)
└── Gallery (แกลอรี่)
```

---

## ===== รายละเอียดหน้าเว็บไซต์ =====

### ✅ **1. หน้า Home (index.html)**
- ✓ ชื่อเว็บไซต์: "🌟 My Portfolio"
- ✓ แนะนำตัว: ชื่อ, สาขา, ความสนใจ
- ✓ เมนู: Home | About | CV | Portfolio | Contact
- ✓ ไฮไลต์: 6 ข้อ

**Highlights:**
```
- 🎓 การศึกษา
- 💻 ทักษะเทคนิค
- 🚀 ประสบการณ์
- 🎨 การออกแบบ
- 📱 Responsive Design
- 🤝 ทีมงาน
```

---

### ✅ **2. หน้า About (about.html)**
- ✓ ชื่อและข้อมูลส่วนตัว
- ✓ พื้นฐานการศึกษา
- ✓ ความสนใจและงานอดิเรก (6 รายการ)
- ✓ ผลงานและรางวัล (3 รายการ)
- ✓ จุดแข็ง (4 ข้อ)
- ✓ วิสัยทัศน์

---

### ✅ **3. หน้า Portfolio (portfolio.html)**
**ต้องมี:**
- ✓ รายการการบ้าน: 6 โปรเจค
- ✓ แต่ละรายการมี:
  - ชื่อ: ระบบจัดการเรียนออนไลน์, E-Commerce, วิเคราะห์ข้อมูล, เว็บสิ่งแวดล้อม, ห้องสมุด, โรงพยาบาล
  - คำอธิบาย: ครบถ้วน
  - ปุ่ม View: ใช้งานได้
  - ปุ่ม Download: ใช้งานได้

**Design:**
- ✓ Card Layout (ง่ายในการเพิ่มผลงาน)
- ✓ Responsive Grid
- ✓ Hover Effects

---

### ✅ **4. หน้า Contact (contact.html)**
**Form มี:**
```html
- ชื่อ (text) *
- อีเมล (email) *
- เบอร์โทร (tel)
- หัวข้อ (text) *
- ข้อความ (textarea) *
- ปุ่ม Submit
```

**เพิ่มเติม:**
- ✓ ข้อมูลติดต่อ (ที่อยู่, เบอร์โทร, อีเมล)
- ✓ แผนที่ (Placeholder)
- ✓ FAQ (4 คำถาม)
- ✓ Social Media Links

---

### ✅ **5. หน้า CV/Resume (cv.html)**
**✨ สำคัญ: สามารถแก้ไขได้! (Editable)**

**ข้อมูลที่มี:**
- ✓ ชื่อ (Editable)
- ✓ หัวข้ออาชีพ (Editable)
- ✓ ข้อมูลติดต่อ (Editable)
- ✓ การศึกษา (2 รายการ, Editable)
- ✓ ทักษะ (8 ทักษะ + %แรก, Editable)
- ✓ ประสบการณ์ (2 รายการ, Editable)
- ✓ ใบรับรอง
- ✓ เครื่องมือ

**ฟีเจอร์:**
- ✓ คลิกเพื่อแก้ไข (contenteditable)
- ✓ บันทึกลง localStorage
- ✓ ปุ่ม: บันทึก, พิมพ์, ดาวน์โหลด PDF

---

### ✅ **6. หน้า Blog (blog.html)**
- ✓ บทความ: 5 บทความ
- ✓ ข้อมูล: วันที่, เวลาอ่าน, หมวดหมู่
- ✓ ฟีเจอร์: สมัครรับข้อมูล, ตัวกรองหมวดหมู่

---

### ✅ **7. หน้า Services (services.html)**
- ✓ บริการ: 6 บริการ
  - Web Development
  - UI/UX Design
  - Responsive Design
  - Web Optimization
  - Web Security
  - Training & Consultation

- ✓ ราคา: 3 แพคเกจ (Starter, Standard, Premium)
- ✓ ขั้นตอนการทำงาน: 5 ขั้น

---

### ✅ **8. หน้า Gallery (gallery.html)**
- ✓ รูปภาพ: 9 รูป
- ✓ หมวดหมู่: Projects, Events, Team, Personal
- ✓ ฟีเจอร์: 
  - ✓ แก้ไขรูปภาพได้ (Edit URL)
  - ✓ ดูขยาย (Modal View)
  - ✓ ตัวกรองตามหมวดหมู่

---

## 🎨 **CSS Styling**

### ✅ ต้องมี:
- ✓ **Color:** สีหลัก (Primary, Secondary, Accent)
- ✓ **Layout:** Flexbox + Grid
- ✓ **Font:** 
  - ชื่อเว็บไซต์: 1.8rem, bold
  - หัวข้อ: 1.8rem
  - ข้อความปกติ: 1rem
  
### ✅ ฟีเจอร์เพิ่มเติม:
- ✓ Responsive Design (Mobile-first)
- ✓ Hover Effects
- ✓ Smooth Transitions
- ✓ Navigation Bar (Sticky)
- ✓ Footer

---

## 📁 **โครงสร้างไฟล์**

```
website/
├── index.html           (Home Page)
├── about.html          (About)
├── cv.html             (CV/Resume - Editable)
├── portfolio.html      (Portfolio)
├── contact.html        (Contact Form)
├── blog.html           (Blog)
├── services.html       (Services)
├── gallery.html        (Gallery - Editable)
├── css/
│   └── style.css       (CSS หลัก)
├── js/
│   └── data.js         (JavaScript สำหรับ Resume & Edit)
└── images/
    ├── image1.png      (รูปภาพตัวอย่าง)
    ├── image2.png
    └── ...
```

---

## 🖼️ **รูปภาพ**

### ✅ ต้องมี: 3+ รูป

**ปัจจุบัน:**
1. Profile Image (SVG Placeholder)
2. Project Images (Portfolio - 6 รูป)
3. Gallery Images (Gallery - 9 รูป)

**สามารถแก้ไขได้:**
- ✓ โปรแกรม Index: คลิกที่รูปเพื่อเปลี่ยน
- ✓ หน้า Gallery: ปุ่ม Edit/View สำหรับแต่ละรูป

---

## 🚀 **Local Deployment (IIS)**

### การตั้งค่า IIS:
```
1. เปิด IIS Manager
2. สร้าง Application Pool ชื่อ "MyPortfolio"
3. สร้าง Website:
   - ชื่อ: MyPortfolio
   - Physical Path: D:\Srayuth\homework8\website
   - Binding: 
     - Protocol: HTTP
     - Port: 8080
4. สำเร็จ - เข้าผ่าน http://localhost:8080
```

### การทดสอบ:
```
✓ Validation HTML5: https://validator.w3.org/
✓ Validation CSS: https://jigsaw.w3.org/css-validator/
✓ ทดสอบ Responsive: DevTools > Device Toggle
✓ ทดสอบ Performance: DevTools > Lighthouse
```

---

## ☁️ **Cloud Deployment**

### (สำหรับส่งทีหลัง)
- Platform: [GitHub Pages / Azure / AWS / Netlify]
- Public URL: [URL ของ Cloud]
- Status: [Pending / Completed]

---

## ✅ **Checklist ตามโจทย์**

### หน้าเว็บไซต์:
- ✅ 8 หน้า (เกิน 8 หน้า)

### Homepage + Menu:
- ✅ Homepage มี: ชื่อเว็บ, แนะนำตัว, เมนู
- ✅ Menu ทุกหน้า: Home | About | CV | Portfolio | Contact

### HTML5 + CSS:
- ✅ ใช้ HTML5 Semantic Tags
- ✅ CSS มี: Color, Layout (Grid+Flexbox), Font
- ✅ Responsive Design

### Portfolio (Homework):
- ✅ 6 โปรเจค
- ✅ ทั้งหมดมี: ชื่อ, คำอธิบาย, ปุ่ม View, ปุ่ม Download
- ✅ ออกแบบให้เพิ่มผลงานได้ง่าย

### Contact Form:
- ✅ มี: ชื่อ, อีเมล, ข้อความ
- ✅ เพิ่มเติม: เบอร์โทร, หัวข้อ, ข้อมูลติดต่อ, FAQ

### CV/Resume:
- ✅ มี: ชื่อ, การศึกษา, ทักษะ, ประสบการณ์, ติดต่อ
- ✅ ✨ **สามารถแก้ไขได้** (Editable)
- ✅ บันทึกลง localStorage
- ✅ ปุ่ม: บันทึก, พิมพ์, ดาวน์โหลด

### รูปภาพ:
- ✅ 3+ รูป
- ✅ ✨ **สามารถแก้ไขได้**

### IIS:
- ✅ ตั้งค่า Port 8080
- ✅ ทำงานได้บนเครื่องท้องถิ่น

### Cloud:
- (เพending - ส่งทีหลัง)

---

## 📝 **เกณฑ์การให้คะแนน**

| เกณฑ์ | คะแนน | สถานะ |
|------|-------|--------|
| จำนวนหน้า (≥8) | 1.5 | ✅ |
| Homepage + Menu | 1.5 | ✅ |
| HTML5 + CSS | 2 | ✅ |
| Portfolio (6 items) | 2 | ✅ |
| Contact Form | 1 | ✅ |
| CV/Resume | 1 | ✅ (Editable) |
| Images (3+) | 0.5 | ✅ (Editable) |
| IIS Local | 0.5 | ✅ |
| Cloud Deployment | 5 | ⏳ |
| **รวม** | **15** | **10.5/15** |

---

## 🔧 **วิธีการใช้งาน**

### แก้ไข Resume:
1. เปิด `cv.html`
2. คลิกที่ข้อความที่ต้องการแก้ไข (จะมีสีเหลือง)
3. พิมพ์ข้อมูลใหม่
4. คลิกที่อื่น หรือกด Tab
5. ข้อมูลจะถูกบันทึกใน localStorage

### เพิ่มโปรเจค:
1. เปิด `portfolio.html`
2. คัดลอก `<div class="portfolio-card">...</div>`
3. เปลี่ยน project number และเนื้อหา
4. บันทึก

### เพิ่มรูปภาพ:
1. วางรูปในโฟลเดอร์ `images/`
2. คลิกที่รูปใน Gallery
3. ปุ่ม "Edit" เพื่อเปลี่ยน URL
4. หรือแก้ไขไฟล์ HTML โดยตรง

---

## 📞 **ติดต่อ**

- **อีเมล:** student@example.com
- **เบอร์โทร:** 081-234-5678
- **ที่อยู่:** กรุงเทพมหานคร, ประเทศไทย

---

## 📅 **วันที่สร้าง**

- สร้าง: 17 กรกฎาคม 2566
- อัปเดตสุดท้าย: 17 กรกฎาคม 2566

---

**สิ้นสุด**
