# ✅ Checklist for Submission

## 📋 **เตรียมส่งงาน HW8**

### ✨ **ก่อนส่ง ตรวจสอบ:**

#### **เอกสาร & ไฟล์**
- [ ] โฟลเดอร์ `website` มีทั้งหมด
- [ ] `index.html` อยู่ใน root
- [ ] `css/style.css` อยู่ที่ถูกต้อง
- [ ] `js/data.js` อยู่ที่ถูกต้อง
- [ ] `README.md` ให้ความชัดเจน
- [ ] `IIS_SETUP_GUIDE.md` ใช้ได้
- [ ] `CLOUD_DEPLOYMENT_GUIDE.md` มี
- [ ] `FEATURES.md` อธิบายครบ

#### **ไฟล์ HTML (8 หน้า)**
- [ ] `index.html` (Home) - เสร็จ
- [ ] `about.html` (About) - เสร็จ
- [ ] `cv.html` (CV/Resume) - สามารถแก้ไขได้
- [ ] `portfolio.html` (Portfolio) - 6 โปรเจค
- [ ] `contact.html` (Contact) - มี Form
- [ ] `blog.html` (Blog) - 5 บทความ
- [ ] `services.html` (Services) - 6 บริการ
- [ ] `gallery.html` (Gallery) - 9 รูป

#### **ทั้งหน้า HTML**
- [ ] มี Navigation Menu ที่ถูกต้อง
- [ ] มี Footer ทุกหน้า
- [ ] Semantic HTML5 Tags
- [ ] Meta Tags ครบ
- [ ] ไม่มี Console Errors
- [ ] ไม่มี Broken Links

#### **CSS (style.css)**
- [ ] Colors ใช้ CSS Variables
- [ ] Layout ใช้ Grid + Flexbox
- [ ] Responsive บน 3 breakpoints
- [ ] Font ที่อ่านได้ (> 16px body)
- [ ] Contrast Ratio >= 4.5:1
- [ ] ไม่มี CSS Errors
- [ ] สามารถ Validate ใน jigsaw.w3.org

#### **JavaScript (data.js)**
- [ ] loadResumeData() ทำงาน
- [ ] saveResume() ทำงาน
- [ ] changeProfileImage() ทำงาน
- [ ] Contact form ใช้งานได้
- [ ] ไม่มี Console Errors
- [ ] localStorage ทำงาน

#### **ฟีเจอร์พิเศษ**
- [ ] ✨ Resume สามารถแก้ไขได้
- [ ] ✨ รูปภาพสามารถแก้ไขได้
- [ ] ✨ Profile Image เปลี่ยนได้
- [ ] ✨ Portfolio Images เปลี่ยนได้
- [ ] ✨ Gallery Images เปลี่ยนได้

---

### 🎨 **ทดสอบ HTML5 + CSS**

```
HTML5 Validation:
1. เปิด https://validator.w3.org/
2. Upload: index.html, about.html, cv.html, ฯลฯ
3. ผลลัพธ์: ✓ Document valid
4. ⚠️ ถ้าไม่ valid ให้แก้ไข

CSS Validation:
1. เปิด https://jigsaw.w3.org/css-validator/
2. Upload: css/style.css
3. ผลลัพธ์: ✓ Congratulations! No errors found
4. ⚠️ ถ้าไม่ valid ให้แก้ไข
```

---

### 📱 **ทดสอบ Responsive Design**

```
DevTools (F12):
1. Ctrl+Shift+M (Toggle Device Toolbar)
2. ทดสอบบน:
   - iPhone 12 (390x844) ✓
   - iPad (768x1024) ✓
   - Desktop (1920x1080) ✓
3. ตรวจ:
   - Text readable ✓
   - Menu accessible ✓
   - Buttons clickable ✓
   - Images displayed ✓
   - Forms usable ✓
```

---

### 🚀 **ทดสอบ IIS Local (Port 8080)**

```
1. ติดตั้ง IIS (ถ้ายังไม่มี)
   - Control Panel → Programs → Features
   - เลือก IIS ✓

2. ตั้งค่า IIS:
   - ทำตาม IIS_SETUP_GUIDE.md
   - Website Name: MyPortfolio ✓
   - Port: 8080 ✓
   - Path: D:\Srayuth\homework8\website ✓

3. ทดสอบ:
   - เปิด http://localhost:8080 ✓
   - ไปทั้ง 8 หน้า ✓
   - Responsive ✓
   - Forms ทำงาน ✓
   - Links ทำงาน ✓
```

---

### ☁️ **ทดสอบ Cloud Deployment (Optional)**

```
เลือก 1 ใน 4:

1. GitHub Pages:
   - [ ] Create GitHub Repository ✓
   - [ ] Upload files ✓
   - [ ] URL: https://username.github.io ✓
   - [ ] Test from Browser ✓

2. Netlify:
   - [ ] Sign up with GitHub ✓
   - [ ] Connect Repository ✓
   - [ ] Deploy ✓
   - [ ] URL: https://.netlify.app ✓

3. Azure:
   - [ ] Create Account ✓
   - [ ] Create App Service ✓
   - [ ] Deploy Files ✓
   - [ ] URL: https://.azurewebsites.net ✓

4. AWS:
   - [ ] Create Account ✓
   - [ ] S3 Bucket ✓
   - [ ] Upload Files ✓
   - [ ] CloudFront Distribution ✓
   - [ ] URL: https://.cloudfront.net ✓
```

---

### 📋 **Content Checklist**

#### **Homepage (index.html)**
- [ ] ชื่อเว็บไซต์ชัดเจน
- [ ] แนะนำตัว (ชื่อ + สาขา)
- [ ] เมนู 5 หน้า: Home, About, CV, Portfolio, Contact
- [ ] 6 ไฮไลต์ cards
- [ ] 3 ปุ่ม Call-to-action
- [ ] Footer

#### **About (about.html)**
- [ ] ข้อมูลส่วนตัว (ชื่อ, เบอร์โทร, อีเมล)
- [ ] การศึกษา (2 รายการ)
- [ ] ความสนใจ (6 รายการ)
- [ ] ผลงาน (3 รายการ)
- [ ] จุดแข็ง (4 ข้อ)

#### **Portfolio (portfolio.html)**
- [ ] 6 โปรเจค/งาน
- [ ] แต่ละโปรเจค มี:
  - ชื่อ ✓
  - คำอธิบาย ✓
  - ปุ่ม View ✓
  - ปุ่ม Download ✓
  - ไอคอนหรือรูป ✓

#### **Contact (contact.html)**
- [ ] Form มี:
  - ชื่อ (text) ✓
  - อีเมล (email) ✓
  - เบอร์โทร (tel) ✓
  - หัวข้อ (text) ✓
  - ข้อความ (textarea) ✓
  - ปุ่ม Submit ✓
- [ ] ข้อมูลติดต่อ (Email, Phone, Address)
- [ ] FAQ (4+ คำถาม)
- [ ] Social Links

#### **CV/Resume (cv.html)**
- [ ] ✨ Editable Fields
- [ ] ชื่อ, Title, Email, Phone, Location
- [ ] การศึกษา (2 รายการ, editable)
- [ ] ทักษะ (8 ทักษะ, editable)
- [ ] ประสบการณ์ (2 รายการ, editable)
- [ ] ปุ่ม: บันทึก, พิมพ์, ดาวน์โหลด

#### **Blog (blog.html)**
- [ ] 5 บทความ
- [ ] ข้อมูล: วันที่, เวลาอ่าน
- [ ] สมัครรับข้อมูล Form
- [ ] ตัวกรองหมวดหมู่

#### **Services (services.html)**
- [ ] 6 บริการ (มี icon)
- [ ] 3 แพคเกจราคา
- [ ] ขั้นตอนการทำงาน (5 ขั้น)

#### **Gallery (gallery.html)**
- [ ] 9 รูปภาพ
- [ ] หมวดหมู่ (Projects, Events, Team, Personal)
- [ ] ✨ Editable Images
- [ ] ตัวกรองตามหมวดหมู่
- [ ] Modal View สำหรับขยาย

---

### 🖼️ **รูปภาพ**

- [ ] Profile Image บน Homepage ✓
- [ ] Portfolio Project Images (6) ✓
- [ ] Gallery Images (9) ✓
- [ ] ✨ ทั้งหมดสามารถแก้ไข URL ได้ ✓

---

### 📊 **Performance & Quality**

#### **Lighthouse Score (DevTools)**
- [ ] Performance: > 90 ✓
- [ ] Accessibility: > 90 ✓
- [ ] Best Practices: > 90 ✓
- [ ] SEO: > 90 ✓

#### **Code Quality**
- [ ] ไม่มี Console Errors ✓
- [ ] ไม่มี Console Warnings ✓
- [ ] ไม่มี Broken Links ✓
- [ ] ไม่มี 404 Errors ✓
- [ ] CSS ถูกต้อง ✓
- [ ] HTML ถูกต้อง ✓

---

### 📝 **Documentation**

- [ ] `README.md` มีข้อมูลครบ
- [ ] `IIS_SETUP_GUIDE.md` ชัดเจน
- [ ] `CLOUD_DEPLOYMENT_GUIDE.md` มี Options
- [ ] `FEATURES.md` อธิบายไฟเจอร์พิเศษ
- [ ] Code ใน HTML มี Comments

---

### 🎓 **เตรียมส่งให้ผู้ตรวจ**

#### **Local Testing (บนเครื่องของคุณ)**
```
1. เปิด IIS Manager
2. ตรวจสอบ Website MyPortfolio ทำงาน
3. เปิด http://localhost:8080
4. ผ่านการทดสอบทั้งหมด ✓
5. เตรียม IP Address สำหรับผู้ตรวจ

IP: ipconfig → IPv4 Address (เช่น 192.168.1.100)
URL: http://192.168.1.100:8080
```

#### **OneDrive Submission Format**
```
=== Student Info ===
Name: นายสายชล ยอยโพธิ์สัย
Student ID: 6810301014

=== Website Info ===
URL (Local): http://localhost:8080
Number of Pages: 8
Menu Structure: Home | About | CV | Portfolio | Contact

=== Pages Detail ===
1. index.html - Homepage
2. about.html - About Me
3. cv.html - CV/Resume (Editable)
4. portfolio.html - Portfolio (6 projects)
5. contact.html - Contact Form
6. blog.html - Blog (5 articles)
7. services.html - Services (6 services)
8. gallery.html - Gallery (9 images, Editable)

=== CSS Code ===
- Colors: #2c3e50, #3498db, #e74c3c
- Layout: CSS Grid + Flexbox
- Responsive: 3 Breakpoints
- File: css/style.css

=== Features Checklist ===
- [x] Homepage with Menu
- [x] About Page
- [x] Portfolio (6 items with View/Download)
- [x] Contact Form (name, email, phone, subject, message)
- [x] CV Page (Editable)
- [x] Images (15+ with Edit capability)
- [x] HTML5 Valid
- [x] CSS Valid
- [x] Responsive Design
- [x] IIS Working (Port 8080)

=== Cloud Deployment ===
Platform: (GitHub Pages / Netlify / Azure / AWS)
Public URL: (ถ้าทำแล้ว)
Status: (Pending / Completed)

=== Additional Info ===
- Extra Pages: Blog, Services, Gallery
- Editable Resume: Yes
- Editable Images: Yes
- Total File Size: < 100KB
- External Dependencies: None
```
```

---

### 🔄 **Final Checklist ก่อนกด Submit**

```
ทำ 1 ครั้งสุดท้าย:

1. ปิด Browser ทั้งหมด
2. Restart IIS:
   - Services → Restart Application Pools
   
3. เปิด http://localhost:8080 ใหม่
   - ทดสอบทั้งหมด ✓
   
4. ตรวจ File ทั้งหมด:
   - 8 HTML files ✓
   - 1 CSS file ✓
   - 1 JS file ✓
   - 4 MD files ✓
   
5. ตรวจ Folder Structure:
   - D:\Srayuth\homework8\website\
     ├── index.html ✓
     ├── *.html ✓
     ├── css/style.css ✓
     ├── js/data.js ✓
     ├── README.md ✓
     ├── IIS_SETUP_GUIDE.md ✓
     ├── CLOUD_DEPLOYMENT_GUIDE.md ✓
     ├── FEATURES.md ✓
     └── images/ (ถ้ามี) ✓
   
6. ส่งงาน:
   - เขียนรายงาน OneDrive ✓
   - ให้ IP Address ผู้ตรวจ ✓
   - Notify ผู้ตรวจ ✓
```

---

## 🎉 **พร้อมส่ง!**

✅ ทั้งหมด 15 คะแนน
✅ 8 หน้า HTML
✅ CSS ถูกต้อง
✅ Responsive Design
✅ ฟีเจอร์พิเศษ (Editable Resume + Images)
✅ IIS Working
✅ ทดสอบแล้วครบถ้วน

**Good Luck! 🚀**
