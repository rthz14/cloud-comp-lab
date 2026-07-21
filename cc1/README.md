# Sahyadri College of Engineering & Management
## Department of Computer Science & Engineering - Departmental Portal

A responsive, modern web portal showcasing the institutional profile, departmental goals, and core vision/mission statements of the Computer Science & Engineering department at Sahyadri College of Engineering & Management, Mangaluru. 

The website is actively hosted and live on an **AWS EC2 Cloud Instance**.

🌐 **Live URL:** [http://3.110.98.32/](http://3.110.98.32/)

---

## 📱 Project Screenshots

> I have attached some visual renders of the live deployment.

---

## 🛠️ Features & Highlights

- **Semantic HTML5:** Structured with clear document outlines (`<header>`, `<main>`, `<section>`, `<footer>`).
- **Modern CSS3 Architecture:** Uses native CSS variables (`:root`) for institutional branding colors (Academic Deep Blue & Innovation Orange).
- **Fully Responsive Grid Layout:** Automatically scales from large desktop monitors down to mobile viewports using advanced CSS Grid and Flexbox.
- **Hosted on AWS:** Deployed in a cloud environment using an Amazon Linux/Ubuntu EC2 instance.

---

## 🚀 Deployment Process (AWS EC2)

Here are the step-by-step actions taken to launch this website live onto the AWS Cloud:

### Step 1: Launching the EC2 Instance
1. Signed into the **AWS Management Console**.
2. Launched a new **EC2 Instance** using an **Ubuntu / Amazon Linux AMI** (Free Tier eligible).
3. Configured **Inbound Security Group Rules** to allow web traffic:
   - **HTTP (Port 80):** Allowed from anywhere (`0.0.0.0/0`) so the website is public.
   - **SSH (Port 22):** Allowed from my IP for secure terminal access.

### Step 2: Server Setup & Configuration
1. Connected to the remote server via SSH terminal using the private key (`.pem` file).
2. Updated the system packages and installed an Apache Web Server:
   ```bash
   sudo yum update -y && sudo yum install httpd -y  # For Amazon Linux
   ```
3. Started and enabled the web server service to run automatically on boot:
   ```bash
   sudo systemctl start apache2 / httpd
   sudo systemctl enable apache2 / httpd
   ```

### Step 3: Code Deployment via Nano
1. Navigated to the root web server directory:
   ```bash
   cd /var/www/html/
   ```
2. Created and edited the main index file using the **Nano terminal editor**:
   ```bash
   sudo nano index.html
   ```
3. Wrote the webpage code inside nano, saved (`Ctrl+O`), and exited (`Ctrl+X`).
4. Verified deployment by accessing the allocated AWS **Public IPv4 address** in a web browser.

---

## 👨‍💻 Developer Profile

- **Name:** RITHESH J RAI
- **USN:** 4SF23CS168
- **Section / Class:** 7C
- **College:** Sahyadri College of Engineering & Management, Mangaluru
