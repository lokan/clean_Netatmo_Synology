# Synology-Netatmo
Scripts to automatically remove old Netatmo Security folders and files

**⚠️ These scripts are based on my needs only. ⚠️**<br />
**⚠️ It is your responsability to verify my code before using it. ⚠️**<br />

This idea was originally published on [lokan.jp](https://lokan.jp/2020/04/20/script-effacer-netatmo-nas-synology/).
Thanks to [LinKuFF](https://www.inuage.com/) for the original idea and helping me on that.

## Prerequisite

This whole thing is based on the fact that you have Netatmo Security Cameras recording on your Synology NAS using FTP.

The files are on a dedicated Shared Folder named "Security", where you will copy the scripts.
You will need to change the template based on your shared folder and cameras names.

clean_security.sh is here to keep only 10 months of history
clean_security_yearly.sh deletes the folders of previous years

## Task scheduler

Once the scripts are on your NAS, it would be smart to use Task Scheduler to plan their execution.

Launch it, then go to *Create* > *Scheduled Task* > *User-defined script*.
Name the task and choose the user you created for the backup job.

Schedule the task (for me, the first of every month) and copy the commande to execute;
In my case, `bash /volume3/Security/clean_security.sh`

Because I plan on keeping 10 months of history, I launch the second script on December 1st, every year.
