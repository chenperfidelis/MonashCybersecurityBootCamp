## Week 5 Homework Submission File: Archiving and Logging Data

Please edit this file by adding the solution commands on the line below the prompt.

Save and submit the completed file for your homework submission.

---

### Step 1: Create, Extract, Compress, and Manage tar Backup Archives

1. Command to **extract** the `TarDocs.tar` archive to the current directory:
    - `tar xvf TarDocs.tar`

        as the tarball is in the current directory, or:

    - `tar xvf TarDocs.tar -C ~/Projects`
        for absolute directory

2. Command to **create** the `Javaless_Doc.tar` archive from the `TarDocs/` directory, while excluding the `TarDocs/Documents/Java` directory:
    - `tar --exclude='TarDocs/Documents/Java' -cvvWf Javaless_Docs.tar TarDocs`

3. Command to ensure `Java/` is not in the new `Javaless_Docs.tar` archive:
    - `tar tvvf Javaless_Docs.tar TarDocs/Documents`

**Bonus** 
- Command to create an incremental archive called `logs_backup_tar.gz` with only changed files to `snapshot.file` for the `/var/log` directory:
    - For level 0 incremental backup
        - `sudo tar czvvf logs_backup_tar.gz --listed-incremental=snapshot.file --level=0 /var/log`
    - For level 1 onward incremental backup
        - `sudo tar czvvf logs_backup_tar-1.gz --listed-incremental=snapshot.file /var/log`

#### Critical Analysis Question

- Why wouldn't you use the options `-x` and `-c` at the same time with `tar`?
    - -x and -c are 'extract' and 'create' operation modes respectively for the `tar` command.
    - As an archive can only be created or extracted from at any one time, only one mode can be used.
    - As per the manual "Exactly one of them must  be  given."
---

### Step 2: Create, Manage, and Automate Cron Jobs

1. Cron job for backing up the `/var/log/auth.log` file:

    - `0 6 * * 3 tar czf /auth_backup.tgz /var/log/auth.log`
        - assuming the location is, as per instruction to be archived to, the root directory and be copied/moved off the server's hard disk.
---

### Step 3: Write Basic Bash Scripts

1. Brace expansion command to create the four subdirectories:
    - `mkdir -p ~/backups/{freemem,diskuse,openlist,freedisk}`

2. Paste your `system.sh` script edits below:

    ```bash
    #!/bin/bash
    # Free memory output to a free_mem.txt file
    free -h | head -2 | tail -1 | awk -v date="$(date)" '{print date" - Free Memory = "$4}' > ~/backups/freemem/free_mem.txt

    # Disk usage output to a disk_usage.txt file
    du -h / > ~/backups/diskuse/disk_usage.txt

    # List open files to a open_list.txt file
    lsof > ~/backups/openlist/open_list.txt

    # Free disk space to a free_disk.txt file
    df -h --total | grep '/dev/sda1' | awk '{print "Used:"$3 "\t" "Free:"$4 "\t" "%Used:"$5 "\t" "Total Size:"$2}' > ~/backups/freedisk/free_disk.txt
    ```

3. Command to make the `system.sh` script executable:
    - `chmod u+x system.sh`

**Optional**
- Commands to test the script and confirm its execution:
    - To check that the files have been created
        - `ls -lR ~/backups`
    - Using cat to view contents of file
        - `cat ~/backups/diskuse/disk_usage.txt`
        - `cat ~/backups/freedisk/free_disk.txt`
        - `cat ~/backups/freemem/free_mem.txt`
        - `cat ~/backups/openlist/open_list.txt`

**Bonus**
- Command to copy `system` to system-wide cron directory:
    - `sudo mv system.sh /etc/cron.weekly/system`
---

### Step 4. Manage Log File Sizes
 
1. Run `sudo nano /etc/logrotate.conf` to edit the `logrotate` configuration file. 

    Configure a log rotation scheme that backs up authentication messages to the `/var/log/auth.log`.

    - Add your config file edits below:

    ```bash
    /var/log/auth.log {
        weekly
        rotate 7
        notifempty
        compress
        delaycompress
        missingok
    }
    ```
---

### Bonus: Check for Policy and File Violations

1. Command to verify `auditd` is active:
    - `systemctl status auditd`

2. Command to set number of retained logs and maximum log file size:
    - `sudo nano /etc/audit/auditd.conf`
    
    - Add the edits made to the configuration file below:

        ```bash
        max_log_file = 35
        num_logs = 7
        ```

3. Command using `auditd` to set rules for `/etc/shadow`, `/etc/passwd` and `/var/log/auth.log`:
    sudo nano /etc/audit/rules.d/audit.rules

    - Add the edits made to the `rules` file below:

        ```bash
        -w /etc/shadow -p wra -k hashpass_audit
        -w /etc/passwd -p wra -k userpass_audit
        -w /var/log/auth.log -p wra -k authlog_audit
        ```

4. Command to restart `auditd`:
    - `sudo systemctl restart auditd`

5. Command to list all `auditd` rules:
    - `sudo auditctl -l`

6. Command to produce an audit report:
    - `sudo aureport -au`

7. Create a user with `sudo useradd attacker` and produce an audit report that lists account modifications:
    - `sudo aureport -m`

8. Command to use `auditd` to watch `/var/log/cron`:
    - `sudo auditctl -w /var/log/cron`

9. Command to verify `auditd` rules:
    - `sudo auditctl -l`

        Result:

        ```
        -w /etc/shadow -p rwa -k hashpass_audit
        -w /etc/passwd -p rwa -k userpass_audit
        -w /var/log/auth.log -p rwa -k authlog_audit
        -w /var/log/cron -p rwxa
        ```

---

### Bonus (Research Activity): Perform Various Log Filtering Techniques

1. Command to return `journalctl` messages with priorities from emergency to error:
    - `sudo journalctl --priority=0..3`

        or

    - `sudo journalctl -p 0..3`

2. Command to check the disk usage of the system journal unit since the most recent boot:
    - `journalctl --disk-usage`

3. Command to remove all archived journal files except the most recent two:
    - `sudo journalctl --vacuum-files=2`

4. Command to filter all log messages with priority levels between zero and two, and save output to `/home/sysadmin/Priority_High.txt`:
    - `sudo journalctl --priority=0..2 > /home/sysadmin/Priority_High.txt`

        or using the Readme.md directory
    
    - `sudo journalctl --priority=0..2 > /home/student/Priority_High.txt`

5. Command to automate the last command in a daily cronjob. Add the edits made to the crontab file below:
    - As the command requires `sudo` to run, entry required in `\etc\sudoers` for user `sysadmin` to automate job.
        - Entry in `sudoers`:
            `sysadmin ALL=(ALL:ALL) NOPASSWD:/usr/bin/journalctl`

            ```bash
            @daily sudo journalctl --priority=0..2 > /home/student/Priority_High.txt
            ```

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
