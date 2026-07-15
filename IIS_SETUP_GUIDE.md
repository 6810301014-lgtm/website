# 🖥️ วิธีการตั้งค่า IIS สำหรับ Personal Portfolio

## ขั้นตอนการตั้งค่า IIS (Windows)

### 1️⃣ **ติดตั้ง IIS (ถ้ายังไม่มี)**

#### บน Windows 10/11:
```
1. ไปที่ Control Panel
2. Programs → Programs and Features
3. คลิก "Turn Windows features on or off"
4. ค้นหา "Internet Information Services (IIS)"
5. ทำเครื่องหมายเลือก
6. คลิก OK และรออยู่
```

#### ตรวจสอบว่าติดตั้งแล้ว:
```
เปิด cmd.exe แล้วพิมพ์:
> iisreset /status

ถ้าเห็น "Trying to connect to computer '(local)'" แสดงว่า IIS ได้ติดตั้งแล้ว
```

---

### 2️⃣ **เปิด IIS Manager**

```
กดปุ่ม Windows + R แล้วพิมพ์:
> inetmgr

หรือค้นหา "Internet Information Services Manager" ใน Start Menu
```

---

### 3️⃣ **สร้าง Application Pool**

```
1. คลิก "Application Pools" (ทางซ้าย)
2. Right-click → "Add Application Pool"
3. ตั้งชื่อ: MyPortfolio
4. .NET CLR Version: No Managed Code (ถ้าเป็น static HTML)
5. Managed Pipeline Mode: Integrated
6. OK
```

---

### 4️⃣ **สร้าง Website ใหม่**

```
1. Right-click "Sites" → "Add Website"
2. Site name: MyPortfolio
3. Application pool: MyPortfolio (เลือกที่สร้างไว้)
4. Physical path: D:\Srayuth\homework8\website
5. Binding:
   - Type: HTTP
   - IP Address: All Unassigned (หรือ localhost)
   - Port: 8080
   - Host name: localhost
6. OK
```

---

### 5️⃣ **ตั้งค่าสิทธิ์ไฟล์**

```
1. ไปที่โฟลเดอร์ D:\Srayuth\homework8\website
2. Right-click → Properties
3. Security → Edit
4. เลือก "Users" → Add
5. คลิก "Locations" → เลือก computer ของคุณ
6. Type "Everyone" ใน "Enter the object names to select:"
7. Check Names → OK
8. ให้สิทธิ์ "Modify" และ "Read & Execute"
```

---

### 6️⃣ **ทดสอบเว็บไซต์**

```
1. เปิด Browser
2. พิมพ์: http://localhost:8080
3. ควรเห็นหน้า Home ของ Personal Portfolio
```

---

## 🔧 **แก้ไขปัญหาทั่วไป**

### ❌ ข้อผิดพลาด: 404 Not Found

**สาเหตุ:** ไฟล์ index.html ไม่อยู่ในโฟลเดอร์

**แก้ไข:**
```
1. ตรวจสอบว่า index.html อยู่ใน D:\Srayuth\homework8\website
2. หรือตั้ง Default Document:
   - IIS Manager → Site → Default Document
   - ตรวจสอบว่า index.html อยู่ในลิสต์
```

---

### ❌ ข้อผิดพลาด: 403 Forbidden

**สาเหตุ:** ไม่มีสิทธิ์เข้าถึงไฟล์

**แก้ไข:**
```
1. ให้สิทธิ์ "Read & Execute" ให้กับ "Everyone"
2. หรือให้สิทธิ์ "Modify" ให้กับ IIS_IUSRS
```

---

### ❌ ข้อผิดพลาด: ไม่สามารถเข้าถึง localhost:8080

**สาเหตุ:** Port ถูกใช้งาน หรือ IIS ไม่ทำงาน

**แก้ไข:**
```
1. ตรวจสอบว่า IIS ทำงาน:
   - IIS Manager → Connections → Servers
   - คลิก Start ถ้ายังไม่เริ่ม

2. เปลี่ยน Port:
   - IIS Manager → Site → Bindings
   - เปลี่ยน Port จาก 8080 เป็นอื่น (เช่น 8081)

3. ตรวจสอบ Firewall:
   - Windows Defender Firewall → Allow an app
   - เพิ่ม IIS Application Pool
```

---

## 📊 **ตรวจสอบ HTML และ CSS**

### ตรวจสอบ HTML5:
```
1. เปิด https://validator.w3.org/
2. Input → Tabs → Upload File
3. เลือกไฟล์ HTML
4. Check
5. ผลลัพธ์ควร: "Document checking completed. No errors or warnings to show."
```

### ตรวจสอบ CSS:
```
1. เปิด https://jigsaw.w3.org/css-validator/
2. File Upload → Choose File
3. เลือก style.css
4. Check
5. ผลลัพธ์ควร: "Congratulations! No Error Found."
```

---

## 📱 **ทดสอบ Responsive Design**

```
1. เปิด http://localhost:8080
2. กด F12 (DevTools)
3. คลิก Device Toggle (หรือ Ctrl+Shift+M)
4. ทดสอบบน:
   - iPhone 12 (390x844)
   - iPad (768x1024)
   - Desktop (1920x1080)
5. ตรวจสอบว่าเลย์เอาต์ปรับตัวได้ดี
```

---

## 📈 **วัดประสิทธิภาพ (Performance)**

```
1. เปิด http://localhost:8080
2. กด F12 → Lighthouse
3. คลิก "Analyze page load"
4. ผลลัพธ์ควร:
   - Performance: > 80
   - Accessibility: > 80
   - Best Practices: > 80
   - SEO: > 80
```

---

## 🌐 **IP Address สำหรับผู้ตรวจ**

```
IP Address ของคอมพิวเตอร์:
1. เปิด cmd.exe
2. พิมพ์: ipconfig
3. ค้นหา "IPv4 Address" (เช่น 192.168.1.100)

URL สำหรับผู้ตรวจ:
http://[IP_ADDRESS]:8080

เช่น: http://192.168.1.100:8080
```

---

## 💡 **คำแนะนำเพิ่มเติม**

### ✅ Best Practices:

1. **ให้ HTTPS (SSL Certificate):**
   - IIS Manager → Site → Bindings
   - เพิ่ม HTTPS binding (Port 443)

2. **ตั้งค่า Default Document:**
   - ตรวจสอบว่า index.html อยู่อันดับแรก

3. **Enable Compression:**
   - IIS Manager → Server → Compression
   - Enable บน Static Content

4. **Set MIME Types:**
   - ตรวจสอบ .css, .js, .woff ใน MIME Types

5. **Backup Configuration:**
   - IIS Manager → Server (Right-click)
   - Export Configuration

---

## 📞 **ติดต่อสำหรับ Support**

- ตรวจสอบ IIS Log: `C:\inetpub\logs\LogFiles`
- Microsoft IIS Docs: https://docs.microsoft.com/iis/

---

**สำเร็จ! เว็บไซต์ของคุณเตรียมพร้อมแล้ว** 🎉
