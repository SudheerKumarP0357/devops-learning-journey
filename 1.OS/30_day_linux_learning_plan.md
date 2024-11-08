
# 30-Day Comprehensive Linux Learning Plan

## Week 1: Introduction and Basic Commands
### Day 1: Linux Overview and Setup
- **Task**: Understand Linux distributions and choose one (e.g., Ubuntu).
- **Hands-on**: Install Ubuntu (VM or dual-boot).
- **Resource**: [Ubuntu Official Guide](https://ubuntu.com/tutorials).
- **Practical**: Familiarize with the terminal and basic GUI navigation.

### Day 2: Filesystem Basics
- **Task**: Learn about the Linux filesystem structure (/, /home, /bin, /etc, /var, etc.).
- **Hands-on**: Navigate using `ls`, `cd`, `pwd`, and view file details with `ls -l`.
- **Practical**: Create, move, copy, and delete directories/files (`mkdir`, `cp`, `mv`, `rm`).

### Day 3: Essential Commands
- **Task**: Practice common commands (`cat`, `more`, `less`, `head`, `tail`).
- **Hands-on**: Use `find` and `grep` for searching files and contents.
- **Exercise**: Search for specific terms in logs located in `/var/log`.

### Day 4: File and Text Operations
- **Task**: Learn `nano` and `vim` editors for editing text files.
- **Hands-on**: Create and edit files with `nano` and `vim`.
- **Practical**: Explore `wc`, `cut`, `sort`, and `uniq` commands.

### Day 5: Permissions and Ownership
- **Task**: Understand file permissions and ownership (`chmod`, `chown`, `chgrp`).
- **Hands-on**: Modify permissions using symbolic and numeric modes.
- **Challenge**: Create a directory with specific read/write permissions for certain users.

### Day 6: Processes and Job Control
- **Task**: Learn about process management (`ps`, `top`, `htop`, `kill`, `killall`).
- **Hands-on**: Practice job control commands (`bg`, `fg`, `jobs`, `&` for background processes).
- **Project**: Write a script to monitor a running process and log its CPU usage.

### Day 7: Checkpoint
- **Project**: Build a simple script that combines file operations, text processing, and job control.

## Week 2: Intermediate Linux Concepts
### Day 8: Shell Scripting Basics
- **Task**: Introduction to shell scripting (`bash` basics, variables, loops, conditionals).
- **Hands-on**: Create a script that automates simple tasks like backups.
- **Exercise**: Write a script that accepts user input and performs basic arithmetic.

### Day 9: Advanced File Management
- **Task**: Explore symbolic and hard links (`ln`, `ln -s`).
- **Hands-on**: Create linked files and understand their behavior when originals are moved/deleted.

### Day 10: User and Group Management
- **Task**: Manage users and groups (`useradd`, `usermod`, `groupadd`).
- **Hands-on**: Create user accounts with specific permissions and group associations.
- **Exercise**: Set up user quotas on disk usage.

### Day 11: Networking Basics
- **Task**: Understand basic networking commands (`ifconfig`, `ip`, `ping`, `netstat`, `ss`).
- **Hands-on**: Check active connections and network configurations.
- **Practical**: Use `curl` and `wget` for downloading files and testing connectivity.

### Day 12: System Logging
- **Task**: Explore log files in `/var/log` and use `journalctl`.
- **Hands-on**: Practice log management with `logrotate`.
- **Exercise**: Create a script that monitors logs and alerts for specific patterns.

### Day 13: Services and Daemons
- **Task**: Learn about `systemd` and basic service management (`systemctl`).
- **Hands-on**: Enable, disable, start, stop, and check the status of services.
- **Practical**: Write a unit file for a custom service.

### Day 14: Checkpoint
- **Project**: Create a system monitor script that checks system metrics (CPU, memory, disk) and alerts when thresholds are crossed.

## Week 3: Advanced Administration
### Day 15: Package Management
- **Task**: Learn `apt`, `dpkg`, `snap`, `yum`, `rpm` (as applicable).
- **Hands-on**: Install, update, remove packages, and add repositories.
- **Exercise**: Manage and configure software repositories.

### Day 16: Disk Management
- **Task**: Explore disk commands (`df`, `du`, `fdisk`, `lsblk`).
- **Hands-on**: Create, format, and mount partitions.
- **Practical**: Practice with logical volume management (`LVM`).

### Day 17: Advanced Permissions
- **Task**: Use `ACLs` for advanced permission settings (`getfacl`, `setfacl`).
- **Hands-on**: Assign ACLs to users/groups with specific directory/file access.

### Day 18: Scheduling and Automation
- **Task**: Use `cron` and `at` for scheduling tasks.
- **Hands-on**: Create cron jobs for automating repetitive tasks.
- **Exercise**: Automate a backup script to run daily and archive data.

### Day 19: Security Essentials
- **Task**: Learn about user security (SSH, password policies, `fail2ban`).
- **Hands-on**: Set up SSH keys, configure SSH, and enable basic firewall (`ufw`, `iptables`).
- **Practical**: Harden SSH access and set up passwordless login.

### Day 20: Kernel and System Performance Tuning
- **Task**: Explore `sysctl` for kernel parameters.
- **Hands-on**: Adjust kernel settings and optimize system performance.
- **Exercise**: Tune TCP settings and explore basic kernel modules with `modprobe`.

### Day 21: Checkpoint
- **Project**: Create a system maintenance script that incorporates automation, log analysis, and system optimization.

## Week 4: Advanced Concepts and Real-World Applications
### Day 22: Process and Service Management
- **Task**: Deep dive into service monitoring and restart policies.
- **Hands-on**: Configure and monitor critical services, including setting up dependencies in `systemd`.

### Day 23: Backup and Restore
- **Task**: Learn about `tar`, `rsync`, and `dd` for backups.
- **Hands-on**: Set up a backup and restoration plan using `rsync`.
- **Project**: Automate a differential backup system using cron.

### Day 24: Networking Advanced
- **Task**: Explore advanced networking tools (`tcpdump`, `nmap`, `traceroute`).
- **Hands-on**: Capture and analyze network packets.
- **Practical**: Set up a basic web server using `nginx` or `Apache`.

### Day 25: Firewall and Network Security
- **Task**: Deepen knowledge on `iptables` and `firewalld`.
- **Hands-on**: Configure complex firewall rules and test them.
- **Exercise**: Block and allow specific traffic and monitor logs.

### Day 26: Advanced Scripting
- **Task**: Learn about functions and more complex `bash` constructs.
- **Hands-on**: Create a script that combines networking, process checks, and email notifications.
- **Exercise**: Write scripts using `awk` and `sed` for advanced text processing.

### Day 27: System Recovery and Troubleshooting
- **Task**: Familiarize with GRUB, recovery modes, and boot issues.
- **Hands-on**: Simulate and recover from a boot failure.
- **Practical**: Learn basic disaster recovery steps.

### Day 28: Final Project Preparation
- **Task**: Plan a final project that incorporates learned skills: system automation, service management, security, and scripting.
- **Idea**: Create a deployable system monitoring and alerting tool.

### Day 29: Final Project Execution
- **Task**: Implement the project, testing all components thoroughly.

### Day 30: Review and Optimization
- **Task**: Go over weak areas, optimize scripts, and fine-tune configurations.
- **Reflection**: Review logs, performance metrics, and finalize project documentation.

## Recommended Resources
- **Tutorials**: [LinuxCommand.org](https://linuxcommand.org/), [The Linux Documentation Project](https://tldp.org/)
- **Exercises**: [OverTheWire: Bandit](https://overthewire.org/wargames/bandit/)
- **Practice**: [LeetCode Linux Exercises](https://leetcode.com/)
