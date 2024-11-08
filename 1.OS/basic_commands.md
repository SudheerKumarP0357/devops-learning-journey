# Basic Linux Commands with Examples:

## 1. `pwd` - Print Working Directory
The `pwd` command prints the current directory you're in.

**Examples:**
```bash
$ pwd
/home/user
```

## 2. `ls` - List Directory Contents
The `ls` command lists the files and directories in the current directory.

**Examples:**
```bash
$ ls
file1.txt  file2.txt  directory1  directory2
$ ls -l  # Long listing with details
```

## 3. `cd` - Change Directory
The `cd` command changes the current directory to the specified path.

**Examples:**
```bash
$ cd /home/user/documents
$ cd ..  # Go up one directory
$ cd ~   # Go to home directory
```

## 4. `cp` - Copy Files or Directories
The `cp` command copies files or directories.

**Examples:**
```bash
$ cp file1.txt file2.txt  # Copy file1.txt to file2.txt
$ cp -r directory1/ directory2/  # Copy directory1 to directory2
```

## 5. `mv` - Move or Rename Files/Directories
The `mv` command moves or renames files or directories.

**Examples:**
```bash
$ mv file1.txt /home/user/documents/  # Move file to a different directory
$ mv file1.txt file2.txt  # Rename file1.txt to file2.txt
```
## 6. `rm` - Remove Files or Directories
The `rm` command removes files or directories.

**Examples:**
```bash
$ rm file1.txt  # Remove a file
$ rm -r directory1/  # Remove a directory recursively
$ rm -f file1.txt  # Force remove without prompting
```

## 7. `touch` - Create Empty Files
The `touch` command creates empty files or updates the timestamp of existing files.

**Examples:**
```bash
$ touch file1.txt  # Creates an empty file named file1.txt
```

## 8. `cat` - Concatenate and Display File Contents
The `cat` command displays the contents of a file.

**Examples:**
```bash
$ cat file1.txt
```

## 9. `echo` - Print Text to the Terminal
The `echo` command outputs the text you provide.

**Examples:**
```bash
$ echo "Hello, World!"  # Print text
$ echo $HOME  # Print environment variable
```

## 10. `man` - Manual Pages
The `man` command displays the manual or help pages for a command.

**Examples:**
```bash
$ man ls  # Show the manual for the ls command
```

## 11. `chmod` - Change File Permissions
The `chmod` command changes file permissions (read, write, execute).

**Examples:**

```bash
Copy code
$ chmod 755 file1.txt  # Give read, write, and execute permissions to the owner, and read & execute to others
$ chmod +x script.sh  # Add execute permission to a script
```

## 12. `chown`- Change File Ownership
The `chown` command changes the owner and/or group of a file.

**Examples:**
```bash
Copy code
$ chown user:group file1.txt  # Change the owner and group of file1.txt
```

## 13. `ps` - View Running Processes
The `ps` command shows the current running processes.

**Examples:**
```bash
Copy code
$ ps aux  # Display all running processes
```

## 14. `top` - Display Running Processes in Real-Time
The `top` command provides a dynamic, real-time view of system processes.

**Examples:**

```bash
Copy code
$ top  # Display real-time processes
```

## 15. `grep` - Search for a Pattern in a File
The `grep` command searches for specific text within files.

**Examples:**

```bash
Copy code
$ grep "error" file1.txt  # Search for "error" in file1.txt
$ ps aux | grep "apache"  # Search for apache processes
```

## 16. `df` - Disk Space Usage
The `df` command shows the disk space usage of your system.

**Examples:**

```bash
Copy code
$ df -h  # Display disk space in human-readable format
```

## 17. `du` - Disk Usage of Files/Directories
The `du` command shows the disk usage of files and directories.

**Examples:**

```bash
Copy code
$ du -sh /home/user  # Display the size of the /home/user directory
```

## 18. `sudo` - Execute a Command with Superuser Privileges
The `sudo` command allows a permitted user to execute a command as the superuser.

**Examples:**

```bash
Copy code
$ sudo apt-get update  # Run the apt-get update command with superuser privileges
```

## 19. `history` - View Command History
The `history` command shows the previously executed commands.

**Examples:**

```bash
Copy code
$ history  # Show command history
```

## 20. `man` - View the Manual of a Command
The `man` command displays the manual pages for a command.

**Examples:**

```bash
Copy code
$ man ls  # View the manual for ls
```

## 21. `find` - Search for Files in a Directory Hierarchy
The `find` command searches for files and directories.

**Examples:**

```bash
Copy code
$ find /home/user -name "*.txt"  # Find all .txt files in /home/user
```

## 22. `wget` - Download Files from the Web
The `wget` command downloads files from the internet.

**Examples:**

```bash
Copy code
$ wget https://example.com/file.txt  # Download file from the specified URL
```

## 23. `curl` - Transfer Data from or to a Server
The `curl` command transfers data using various network protocols.

**Examples:**

```bash
Copy code
$ curl -O https://example.com/file.txt  # Download file using curl
```

## 24. `shutdown` - Shut Down the System
The `shutdown` command shuts down or reboots the system.

**Examples:**

```bash
Copy code
$ sudo shutdown now  # Shutdown immediately
$ sudo shutdown -r now  # Reboot the system immediately
sql
Copy code
```
