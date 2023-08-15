This script installs tree for visual presentation
This script installs Extract to close output after "TOP" commad is run, and uninstalls it afterwards


# PerScholas
*Run extract.sh first to copy files and place scripts in respective folder needed to operate functionally

*Run Main.sh to complete Day 1 Task,  to move all script to home dir(same level as where planetGreen folder will be installed

*Run NewCEO.sh Script afterwards to add groups/users and also add users to respective groups

*Backup.sh to run backup for files as stated in the question,also set access for NEW CEO
*Run Backup2server.sh to  send backup files to backupserver

#Completed


script backup2server.sh needs to change to match your Server B ip and also a folder named "Backup" needs to be created on Server B for this to work
Copy server A id_rsa.pub to authorized_keys on Server B
Server A will be where script is run
Server B will be where you intend to put the backup files as required in Day3 question
