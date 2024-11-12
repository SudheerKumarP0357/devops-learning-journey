
# User Management

## Adding a New User
To create a new user on a Linux system, you can use one of the following commands:

### Interactive User Creation
```bash
# Adding a new user interactively, with prompts for additional information and password setup
sudo adduser userName
```

### Non-Interactive User Creation
```bash
# Adding a new user in non-interactive mode (minimal setup)
sudo useradd userName
```

> Refer to the image below for an example of the `adduser` command output.
> 
![Text](../../Misc/Images/Useradd.png)

## Logging In as the Newly Created User
After creating the user, follow these steps to generate SSH keys and set up secure access:

1. **Connect to the New User**:
   - Switch to the new user in the terminal where the user was created:
     ```bash
     su - userName
     ```

2. **Generate SSH Keys**:
   - Run the following command to create an SSH key pair:
     ```bash
     ssh-keygen
     ```
   - The command will prompt for a file path and passphrase. Press *Enter* to use the default path and skip the passphrase if not needed.

3. **Verify the Key Files**:
   - Navigate to the `.ssh` directory and list the files:
     ```bash
     cd ~/.ssh/
     ls
     ```
   - Ensure `id_rsa` (private key) and `id_rsa.pub` (public key) are present.

4. **Set Up `authorized_keys`**:
   - Create the `authorized_keys` file and copy the public key into it:
     ```bash
     cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
     ```

5. **Adjust File Permissions**:
   - Set strict permissions to secure the `authorized_keys` file:
     ```bash
     chmod 600 ~/.ssh/authorized_keys # Read and write only for the user
     chmod 700 ~/.ssh # Secure the .ssh directory
     ```

6. **Transfer the Private Key**:
   - Copy the private key (`~/.ssh/id_rsa`) to your local machine and make note of its path. Ensure the private key file has the correct permissions:
     ```bash
     chmod 600 ~/.ssh/id_rsa # Only the user can read the file
     ```

7. **Connect Remotely**:
   - Use the private key to connect to the remote user:
     ```bash
     ssh -i <private_key_path> userName@<ip_address>
     ```
   - Example:
     ```bash
     ssh -i ~/.ssh/id_rsa demouser@35.208.251.73
     ```

## Adding user to sudoers file

By default, when we create a user, the user will have the privilege to elevate their credentials to Super User or Root to perform certain tasks (example, sudo apt update, etc..)

By adding the user to `sudoers` file, we can provide to have the permission for those tasks

```bash
# execute the below cmd in the /etc directory
ls -l | grep sudoers
# OutPut
# -r--r----- 1 root root       1708 Oct  3 11:43 sudoers
# drwxr-xr-x 2 root root       4096 Nov 23  2023 sudoers.d
```

Either we can modify the `sudoers` file or we can add the user with separate configuration file in `sudoers.d` directory to have isolation for the user.

## 1. Switch to a Root User or an Account with Sudo Privileges
Ensure you are logged in as a user with administrative (root or sudo) privileges.

## 2. Open the Sudoers File Safely
Always use visudo to edit the sudoers file because it checks for syntax errors before saving. This prevents you from accidentally misconfigure the file and losing sudo access.

```bash
sudo visudo
```
## 3. Add the User to the File
Scroll to the section where user privileges are defined.

Add the following line at the end of the file to grant the user full sudo privileges:
```bash
username ALL=(ALL:ALL) ALL
```
Replace `username` with the actual name of the user.

### Explanation:
- `username:` The user being given privileges.
- `ALL:` The user can execute commands from any terminal.
- `(ALL:ALL):` The user can run commands as any user and any group.
- `ALL:` The user can run all commands.

## 4. Save and Exit
- If using visudo, you can save and exit by pressing:
    - Ctrl + X (to exit), then Y (to confirm saving), and Enter (to save the changes).


## Alternative Method: Adding User to the sudo Group
On some distributions (like Ubuntu), adding a user to the sudo group grants them sudo privileges without editing the sudoers file:

```bash
sudo usermod -aG sudo username
```
**Explanation:**
- `usermod:` Command to modify a user account.
- `-aG:` Adds the user to the specified group (sudo).
- `username:` The name of the user being added.

___
___
___
### Here's how to create a separate configuration file inside the `/etc/sudoers.d` directory:

## 1. Access the System with Root or Sudo Privileges
Make sure you have the necessary privileges to create and edit files in /etc/sudoers.d.

## 2. Create the Configuration File
Use a text editor to create a new configuration file.  
For example, to create a configuration file for a user named `john`:

```bash
sudo nano /etc/sudoers.d/john
```

Or use touch to create the file, then open it with visudo:

```bash
sudo touch /etc/sudoers.d/john
sudo visudo -f /etc/sudoers.d/john
```

## 3. Add the Configuration
In the new configuration file `/etc/sudoers.d/john`, add the line to specify the user's sudo privileges:

```bash
john ALL=(ALL:ALL) ALL
```

**Explanation:**

- `john:` The username you are granting privileges to.  
- `ALL:` The user can execute commands from any terminal.  
- `(ALL:ALL):` The user can run commands as any user and any group.  
- `ALL:` The user can run all commands.  
  
## 4. Save and Exit
If you are using nano, save and exit by pressing Ctrl + X, then Y, and Enter.  
If you are using visudo, it will validate the syntax before saving.  
This prevents syntax errors that could lock you out of sudo.

## 5. Verify Permissions

Ensure the configuration file has the correct permissions. It should only be readable by the root user:

```bash
sudo chmod 440 /etc/sudoers.d/john
```
`Explanation:`

`440` ensures that the file is readable by root but not writable by anyone.

## 6. Test the Configuration
Test the new sudo permissions by switching to the user and running a command with sudo:

```bash
su - john
sudo whoami
```
If everything is configured correctly, it should output root.

### Benefits of Using /etc/sudoers.d
- Modular Configuration: Easier to manage and troubleshoot separate configuration files.
- Avoids Direct Modification of /etc/sudoers: Reduces the risk of breaking the main sudoers file.
- Simplifies Administration: Adding or removing a user’s privileges is as simple as adding or removing their file.  
This approach ensures a clean and manageable sudo configuration for individual users or specific groups of users.