# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Manas@ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Manas
Home Directory:     /home/Manas
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 18:07:27 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Manas@ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this Debian/Ubuntu system.
Version: 2.39.2
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: Git is a free and open source distributed version control system.
 - Linux: Linux is a free and open source operating system.
 - Vim: Vim is a free and open source text editor.
 - GCC: GCC is a free and open source compiler.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Manas@ubuntu-server:~/Git$ ./03-auditor.sh
Directory          Size          Permissions          Owner
--------------------------------------------------------------------------------
/etc          12M          755          root
/var/log          100M          755          root
/usr/bin          100M          755          root
/home          1G          755          root
/root/.git          N/A          N/A          N/A
/home/Manas/.git          100M          700          Manas
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Manas@ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Git AUDIT - LOG FILE ANALYZER               
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog
Mar 30 18:00:01 ubuntu-server systemd[1]: Started Session 14 of user Manas.
Mar 30 18:00:01 ubuntu-server systemd[1]: Started Session 15 of user Manas.
Mar 30 18:00:01 ubuntu-server systemd[1]: Started Session 16 of user Manas.
Mar 30 18:00:01 ubuntu-server systemd[1]: Started Session 17 of user Manas.
Mar 30 18:00:01 ubuntu-server systemd[1]: Started Session 18 of user Manas.
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Manas@ubuntu-server:~/Git$ ./05-manifesto.sh
================================================================================
                   Git AUDIT - MANIFESTO GENERATOR              
================================================================================
What is your name? Manas
What is your favorite open source project? Git
What do you think is the most important aspect of open source software? Freedom
My name is Manas, and I believe in the power of open source software. My favorite project is Git, and I think the most important aspect of open source is Freedom.
================================================================================
```