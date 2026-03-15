# Linux Application Manager 🚀

A simple **Bash automation script** that allows Linux administrators to **install or remove applications on multiple servers using SSH**.
This project demonstrates basic **Linux automation, shell scripting, and remote server management**.

---

# 📌 Project Overview

Managing packages manually on multiple servers can take time.
This script automates the process by:

* Connecting to servers via **SSH**
* Installing or removing packages
* Reading server IPs from a file
* Logging operations for tracking

---

# 🛠 Technologies Used

* **Bash Scripting**
* **Linux**
* **SSH**
* **YUM Package Manager**

---

# 📂 Project Structure

```
Linux-Application-Manager/
│
├── app_manager.sh     # Main Bash script
├── servers.txt        # List of servers
├── patch_log.txt      # Log file for operations
└── README.md          # Project documentation
```

---

# ⚙️ How the Script Works

1️⃣ User selects an action

* `1` → Install Application
* `2` → Remove Application

2️⃣ User enters the **application/package name**

3️⃣ Script reads all servers from **servers.txt**

4️⃣ Script connects to each server using **SSH**

5️⃣ Application is installed or removed using **yum**

6️⃣ Operation results are saved in **patch_log.txt**

---

# 🖥 Example `servers.txt`

```
192.168.1.10
192.168.1.11
192.168.1.12
```

---

# ▶️ How to Run the Script

### 1️⃣ Give Execute Permission

```
chmod +x app_manager.sh
```

### 2️⃣ Run the Script

```
./app_manager.sh
```

### 3️⃣ Select Option

```
1 → Install Application
2 → Remove Application
```

### 4️⃣ Enter Package Name

Example:

```
httpd
nginx
git
vim
```

---

# 📊 Example Output

```
===============================
 Linux Application Manager
===============================

Choose Action:
1. Install Application
2. Remove Application

Enter Application Name: httpd

Connecting to 192.168.1.10
Connecting to 192.168.1.11
Connecting to 192.168.1.12
```

---

# 📝 Logs

All actions are stored in:

```
patch_log.txt
```

Example log:

```
Installed httpd on 192.168.1.10
Installed httpd on 192.168.1.11
Removed nginx from 192.168.1.12
```

---

# 🎯 Use Cases

✔ Linux System Administration
✔ DevOps Automation Practice
✔ Remote Server Package Management
✔ Beginner Linux Bash Project

---

# 🔒 Requirements

* Linux System
* SSH access to servers
* Root or sudo privileges
* `yum` package manager installed

---

# ⭐ Future Improvements

* Add **server availability check**
* Add **parallel execution**
* Add **colored terminal output**
* Add **support for apt and dnf**

---

# 👨‍💻 Author

**Shikhar Shukla**
Linux | System Administration | Automation Enthusiast

