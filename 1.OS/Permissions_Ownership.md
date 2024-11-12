# Linux Permissions and Ownership Detailed Guide

## 1. Permission Exploration

### Checking File Permissions
- **Command**: `ls -l`
- **Explanation**: Lists detailed information about files, including permissions, ownership, and more.
- **Example**:
  ```bash
  ls -l /path/to/file
  -rw-r--r-- 1 user group 1024 Jan 1 12:34 example.txt
  ```
### Modifying File Permissions Using `chmod`

**Command: `chmod [permissions] filename`**
**Example:**
```bash
chmod u+x example.sh
```
Grants execute permission to the user for `example.sh`.

## Numeric Mode
**Command: `chmod [numeric_mode] filename`**
**Example:**
```bash
chmod 755 script.sh
```
Sets permissions to `rwxr-xr-x`.
**Examples:**
1. Grant read, write, and execute to user; read and execute to group and others:
```bash
chmod 755 file.txt
```
2. Make a file read-only for everyone:
```bash
chmod 444 report.doc
```
## 2. Ownership Commands

### Changing Ownership with chown
**Command: `chown [new_owner] filename`**
**Example:**
```bash
chown user1 document.txt
```
Changes the ownership of `document.txt` to `user1`.

### Changing Group with `chgrp`
**Command: `chgrp [new_group] filename`**
**Example:**
```bash
chgrp developers project.zip
```
Changes the group ownership to developers.
### Examples:
1. Change owner and group simultaneously:
```bash
chown user1:developers project.zip
```
2. Recursively change ownership for a directory:
```bash
chown -R user1:group1 /var/www
```
## 3. Permission Scenarios
## Creating Files and Directories with Different Permission Levels
### Scenario: Create a Directory with Read-Only Permissions
**Command:**
```bash
mkdir read_only_dir
chmod 555 read_only_dir
```
**Explanation:** `555` sets the directory to be readable and executable but not writable by anyone.

**Scenario: Create a File with Read-Write for User, Read for Others**
**Command:**
```bash
touch file.txt
chmod 644 file.txt
```
**Explanation:** `644` sets read and write for the user, read-only for group and others.
## Exploring `chmod` Examples:
1. Grant read, write, and execute to user; no permissions to others:
```bash
chmod 700 secure_script.sh
```
2. Remove execute permissions from a file:
```bash
chmod a-x data.csv
```
3. Make a directory writable by the group:
```bash
chmod g+w shared_folder
```
## Practical Example:
### Create a shared project directory where only members of a group can write:
```bash
mkdir project
chgrp developers project
chmod 770 project
```
**Explanation:** `770` allows read, write, and execute for user and group, no access for others.