
# Week 1: Real-World Scenario-Based Tasks for Learning Linux

## Day 1: Linux Overview and Setup
- **Scenario**: You have been tasked with setting up a new workstation for a colleague who is new to Linux.
- **Tasks**:
  - Research the pros and cons of popular distributions and select one based on stability and ease of use.
  - Install Ubuntu on a virtual machine and document the installation process for future reference.
- **Outcome**: A successfully installed Ubuntu environment ready for further configurations.

## Day 2: Filesystem Basics
- **Scenario**: You need to organize and prepare a structure for storing project files.
- **Tasks**:
  - Navigate to various directories using `cd` and ensure you are familiar with paths.
  - Create a directory structure such as `~/Projects/2024/Client_A` and `~/Projects/2024/Client_B`.
  - Verify permissions on these directories with `ls -l`.
- **Outcome**: A well-organized folder hierarchy ready for use.

## Day 3: Essential Commands
- **Scenario**: Your team has requested that you analyze log files and report findings.
- **Tasks**:
  - Use `grep` to find specific error patterns in `/var/log/syslog`.
  - Use `tail -f` to monitor log changes in real-time.
  - Combine `cat`, `head`, and `tail` to extract the first and last 10 lines of a log file and display them together.
- **Outcome**: Improved command over log inspection techniques and command-line data extraction.

## Day 4: File and Text Operations
- **Scenario**: You need to prepare a report by combining data from multiple files.
- **Tasks**:
  - Edit multiple text files using `nano` and `vim` to practice both editors.
  - Use `cat` to merge contents from several `.txt` files into a single document.
  - Sort and filter unique entries using `sort` and `uniq` and save the result.
- **Outcome**: A consolidated report file demonstrating mastery of text processing.

## Day 5: Permissions and Ownership
- **Scenario**: Your organization requires you to create secure directories for different teams.
- **Tasks**:
  - Create directories for `Team_A` and `Team_B` in `/srv/teams`.
  - Set different permissions on these directories such that only the respective team has access.
  - Change the ownership of these directories to respective team leaders.
- **Outcome**: Secure directories with controlled access based on user roles.

## Day 6: Processes and Job Control
- **Scenario**: A server is running slower than usual, and you need to identify the cause.
- **Tasks**:
  - Use `top` and `htop` to find the processes using the most resources.
  - Practice stopping a background process using `kill` and restarting it.
  - Write a small script that runs a process in the background and logs its status to a file.
- **Outcome**: Enhanced ability to manage and control processes effectively.

## Day 7: Checkpoint
- **Project**: Combine the knowledge from Days 1–6 by creating a script that:
  - Monitors a directory (`~/Projects`) for new files.
  - Logs changes to a file with a timestamp.
  - Automatically adjusts permissions for new files to `read-only` for non-owners.
- **Outcome**: A functional script showcasing learned skills with practical application.

