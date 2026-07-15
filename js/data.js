// ===============================================
// RESUME DATA - สามารถแก้ไขได้
// ===============================================

const resumeData = {
    name: "สายชล ยอยโพธิ์สัย",
    title: "นักศึกษาวิศวกรรมคอมพิวเตอร์",
    email: "saichon.y@example.com",
    phone: "092-253-3016",
    location: "142 หมู่ 13 ต.วังตะเคียน อ.หนองมะโมง จ.ชัยนาท 17120",
    
    education: [
        {
            school: "สถาบันเทคโนโลยีจิตรลดา",
            degree: "วิศวกรรมคอมพิวเตอร์ (วิศวกรรมศาสตรบัณฑิต)",
            year: "2568 - ปัจจุบัน",
            gpa: "3.34"
        },
        {
            school: "โรงเรียนศรีสโมสรวิทยา",
            degree: "มัธยมศึกษาตอนปลาย (วิทย์-คณิต)",
            year: "2565 - 2568",
            gpa: "3.00"
        }
    ],

    skills: [
        { name: "HTML5", level: 95 },
        { name: "CSS3", level: 90 },
        { name: "JavaScript", level: 85 },
        { name: "PHP", level: 80 },
        { name: "MySQL", level: 85 },
        { name: "React.js", level: 75 },
        { name: "Git & GitHub", level: 80 },
        { name: "Responsive Design", level: 90 }
    ],

    experience: [
        {
            company: "บริษัท Tech Solutions",
            position: "นักพัฒนาเว็บ",
            duration: "2565 - ปัจจุบัน",
            description: "พัฒนาเว็บไซต์ e-commerce และระบบจัดการสินค้า"
        },
        {
            company: "สตาร์ทอัพ Digital",
            position: "Intern Web Developer",
            duration: "2564 - 2565",
            description: "ฝึกงานพัฒนาเว็บแอปพลิเคชัน"
        }
    ]
};

// ===============================================
// FUNCTION: โหลดข้อมูล Resume
// ===============================================

function loadResumeData() {
    document.getElementById('resumeName').textContent = resumeData.name;
    document.getElementById('resumeTitle').textContent = resumeData.title;
    document.getElementById('resumeEmail').textContent = resumeData.email;
    document.getElementById('resumePhone').textContent = resumeData.phone;
    document.getElementById('resumeLocation').textContent = resumeData.location;

    // โหลด Education
    const educationContainer = document.getElementById('education');
    educationContainer.innerHTML = '';
    resumeData.education.forEach((edu, index) => {
        const eduItem = document.createElement('div');
        eduItem.className = 'resume-item';
        eduItem.id = `edu-${index}`;
        eduItem.innerHTML = `
            <h4 contenteditable="true">${edu.school}</h4>
            <div class="meta" contenteditable="true">${edu.degree} (GPA: ${edu.gpa}) - ${edu.year}</div>
            <p contenteditable="true">สำเร็จการศึกษาด้วยเกียรติวิทยาศาสตร์</p>
        `;
        educationContainer.appendChild(eduItem);
    });

    // โหลด Skills
    const skillsContainer = document.getElementById('skills');
    skillsContainer.innerHTML = '';
    resumeData.skills.forEach((skill, index) => {
        const skillItem = document.createElement('div');
        skillItem.className = 'skill-item';
        skillItem.id = `skill-${index}`;
        skillItem.innerHTML = `
            <div class="skill-name">
                <span contenteditable="true">${skill.name}</span>
                <span>${skill.level}%</span>
            </div>
            <div class="skill-bar">
                <div class="skill-progress" style="width: ${skill.level}%"></div>
            </div>
        `;
        skillsContainer.appendChild(skillItem);
    });

    // โหลด Experience
    const experienceContainer = document.getElementById('experience');
    experienceContainer.innerHTML = '';
    resumeData.experience.forEach((exp, index) => {
        const expItem = document.createElement('div');
        expItem.className = 'resume-item';
        expItem.id = `exp-${index}`;
        expItem.innerHTML = `
            <h4 contenteditable="true">${exp.position}</h4>
            <div class="meta" contenteditable="true">${exp.company} (${exp.duration})</div>
            <p contenteditable="true">${exp.description}</p>
        `;
        experienceContainer.appendChild(expItem);
    });
}

// ===============================================
// FUNCTION: บันทึกข้อมูล Resume
// ===============================================

function saveResume() {
    alert('✓ ข้อมูล Resume ได้ถูกบันทึกแล้ว (ในที่นี่เก็บ localStorage)');
    localStorage.setItem('resumeData', JSON.stringify(resumeData));
}

// ===============================================
// FUNCTION: ตั้งค่ารูปภาพใหม่
// ===============================================

function changeProfileImage() {
    const newImageUrl = prompt('ใส่ URL รูปภาพใหม่ (หรือใช้ placeholder):');
    if (newImageUrl) {
        const img = document.getElementById('profileImage');
        if (img) {
            img.src = newImageUrl;
            localStorage.setItem('profileImageUrl', newImageUrl);
        }
    }
}

function changePortfolioImage(index) {
    const newImageUrl = prompt('ใส่ URL รูปภาพใหม่:');
    if (newImageUrl) {
        const img = document.querySelector(`#portfolio-${index} .portfolio-image`);
        if (img) {
            img.style.backgroundImage = `url('${newImageUrl}')`;
            img.style.backgroundSize = 'cover';
            img.style.backgroundPosition = 'center';
        }
    }
}

// ===============================================
// FUNCTION: โหลดข้อมูลจาก localStorage
// ===============================================

function loadSavedData() {
    const savedResume = localStorage.getItem('resumeData');
    if (savedResume) {
        Object.assign(resumeData, JSON.parse(savedResume));
    }

    const savedProfileImage = localStorage.getItem('profileImageUrl');
    if (savedProfileImage) {
        const img = document.getElementById('profileImage');
        if (img) {
            img.src = savedProfileImage;
        }
    }
}

// ===============================================
// INITIALIZATION
// ===============================================

document.addEventListener('DOMContentLoaded', function() {
    loadSavedData();
    if (document.getElementById('resumeName')) {
        loadResumeData();
    }
});
