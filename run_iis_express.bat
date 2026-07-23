@echo off
chcp 65001 > nul
echo ========================================================
echo 🚀 กำลังเริ่มต้นเซิร์ฟเวอร์ IIS Express สำหรับเว็บไซต์...
echo 🌐 เว็บไซต์พร้อมใช้งานที่: http://localhost:8080
echo 📝 สามารถเปิดหน้าสมุดเยี่ยมชมได้ที่: http://localhost:8080/guestbook.aspx
echo ========================================================
echo (ห้ามปิดหน้าต่างนี้ขณะใช้งานเว็บไซต์)
echo.

"C:\Program Files\IIS Express\iisexpress.exe" /path:"d:\Srayuth\hw9\website" /port:8080
pause
