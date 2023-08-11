#!/bin/bash
top_pid=$!
# Define the usernames, directories, and group
sarah_username="sjhuckleberry"
cfo_username="asjohnson"
engineering_group="Engineering"
dev_test_username="dev_TEST"
original_dir=PlanetGreen
directories=("IT" "Executive" "HR" "Finance" "Operations")


# Create the user account
sudo useradd -m -s /bin/bash $sarah_username
echo "User account $sarah_username created."

# Set the same permissions as Genoa Hattleburg for specified directories
#!/bin/bash
# Add CEO to all groups
usermod -aG IT sjhuckleberry
usermod -aG CEO sjhuckleberry
usermod -aG HR sjhuckleberry
usermod -aG Finance sjhuckleberry
usermod -aG Operations sjhuckleberry

# Set permissions
# For IT directory
setfacl -R -m u:"sjhuckleberry":rX IT

# For Executive directory
setfacl -R -m u:"sjhuckleberry":rX Executive

# For HR directory
setfacl -R -m u:"sjhuckleberry":rX HR

# For Finance directory
setfacl -R -m u:"sjhuckleberry":rX Finance

# For Operations directory
setfacl -R -m u:"sjhuckleberry":rX Operations


echo "Permissions for $sarah_username set in all directories."

# Create a system account for testing applications in Engineering
sudo useradd -r -s /bin/bash $dev_test_username -G $engineering_group
echo "System account $dev_test_username created for $engineering_group."

echo "User and system account setup completed."



#To troubleshoot system
echo "**************************************************************************************"
echo "The Jr. System Administrator needs your help. He is saying his system is running slow. "
echo "He tells you he ran several dd commands and created a few files. How would you tell "
echo "him to begin troubleshooting his system?"
echo "**************************************************************************************"

sleep 4

echo "**************************************************************************************"
echo "How do you fix this?"
echo "***************************************************************************************"
sleep 4

#Check system resource
echo "*************************************************************************************************************************"
echo "Check System Resources: Ask the Jr. System Administrator to check the current resource utilization of the system
using the **top** or **htop** command."
echo "***************************************************************************************************************************"

sleep 3
echo "Installing tool to send ctrl +c to terminal to stop this process................................."
sudo yum install expect -y
expect <<EOF
spawn top
expect "Closing......................."
send "Ctrl+C"
expect eof
EOF

sleep 3
sudo yum remove expect -y
echo "Removing tool to free memory................................................................"
sleep 3




#Check disk space
echo "*************************************************************************************************************************"
echo "Check Disk Space:Inquire about the available disk space on the system's storage devices"
echo "***************************************************************************************************************************"

sleep 3
df -h
sleep 5

#Analyze Load
echo "*************************************************************************************************************************"
echo "Analyze I/O Load:
Since the administrator mentioned running dd commands and creating files, it's important to consider the I/O load on the system.
Suggest they use the iotop command to monitor disk I/O in real-time"
echo "***************************************************************************************************************************"

sleep 5




#Backups

# Specify the main directory
main_directory="PlanetGreen"

# Specify the subdirectories and files
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
files=("shadow" "ifcfg-eth0" "resolv.conf" "hosts" "yum.conf")

# Loop through subdirectories
for subdir in "${subdirectories[@]}"; do
    # Create the SystemAdministration and backup directories
    mkdir -p "IT/Systems_Administration/backup"


    # Copy specified files to the backup directory
    pwd
    pwd
    sleep 5
    for file in "${files[@]}"; do
        if [ "$file" == "ifcfg-eth0" ] ; then
         pwd
         pwd
         pwd
         sleep 5
            cp "~/../../etc/sysconfig/network-scripts/$file"  "IT/Systems_Administration/backup/"
            echo "$file found "
        else
        echo "Not found"
       
            cp -r "~/../../etc/$file" "IT/Systems_Administration/backup/"
            echo "$file was found "
      
        fi
    done
echo "Files copied to IT/Systems_Administration/backup/"

done   


echo "Backup process completed."

