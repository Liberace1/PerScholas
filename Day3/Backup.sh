#!/bin/bash
# Code working in folder placed, tuned for iteration
# Script should be executed inside Bank Folder.
echo "*************************************************************************"
echo "*********** Day 3 Tasks - Set New CEO and Backup files*******************"
echo "*************************************************************************"
# Define the usernames, directories, and group
ceo_username="sjhuckleberry"
cfo_username="asjohnson"
engineering_group="Engineering"
dev_test_username="dev_TEST"
original_dir="PlanetGreen"
group_folder=("IT" "Executive" "HR" "Finance" "Operations")
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
# Copy Backup.sh script to the original directory
cp -r Backup.sh "$original_dir/"
cd "$original_dir"
echo "*****************************************************************************"
echo "************************Setting Permissions**********************************"
echo "*****************************************************************************"
sleep 5
# Set permissions for directories
for subdir in "${subdirectories[@]}"; do

cd "$subdir"

    for gfolder in "${group_folder[@]}"; do

        setfacl -R -m u:"$ceo_username":rX "$gfolder"
        echo "Permissions for $ceo_username set in $gfolder directory for $subdir Bank Folder."
    done
cd ..
done


#To troubleshoot system
echo ""
echo ""
echo ""

echo "******************Question 1? **********************"
sleep 2
echo "****************************************************************************"
echo "The Jr. System Administrator needs your help. He is saying his system is running slow*****. "
echo "He tells you he ran several dd commands and created a few files. How would you tell***** "
echo "him to begin troubleshooting his system?"
echo "****************************************************************************"

sleep 5
echo "*************************************************************************"
echo "How do you fix this?"
echo "*************************************************************************"
sleep 4

#Check system resource
echo "******************************************************************************"
echo "Check System Resources: Ask the Jr. System Administrator to check the current resource utilization of the system
using the **top** or **htop** command."
echo "******************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

sleep 3
#Installing tool to send ctrl +c to terminal to stop this process.................................
#sudo yum install expect -y
#expect <<EOF
##spawn top
#expect "Closing......................."
#send "Ctrl+C"
#expect eof
#EOF
echo ""
echo ""
echo ""

sleep 3


sudo yum remove expect -y

#Check disk space
echo "*****************************************************************************"
echo "Check Disk Space:Inquire about the available disk space on the system's storage devices"
echo "*****************************************************************************"

sleep 3

df -h
sleep 5

#Analyze Load
echo "***********************************************************************"
echo "Analyze I/O Load: Since the administrator mentioned running dd commands and creating files, "
echo "it's important to consider the I/O load on the system."
echo "Suggest they use the iotop command to monitor disk I/O in real-time"
echo "***********************************************************************"

sleep 3
echo "**********************************************************************"
echo "**********************************************************************"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

echo "******************Question 2? **********************"
sleep 3
echo "************************************************************************"
echo "The Jr. System Administrator thanks you for helping him earlier. "
echo "He stated he ran the top command and didn't see SSH running after he booted his computer. "
echo "How would you inform him to check to make sure SSH starts at boot?"
echo "**************************************************************************"
echo ""
echo ""
echo ""

sleep 5
echo "********************This is How i would answer?**********************"
sleep 3
echo "**** Check SSH service status >>> systemctl status sshd********************"
sleep 3
echo  """If SSH service is not running, start it manually >> sudo systemctl start sshd"""
sleep 3
echo "Enable SSH service to start at boot >>>>> sudo systemctl enable sshd"
sleep 3
echo "Reboot the system to verify SSH starts at boot >>>>>> sudo reboot"
sleep 3


# Specify the subdirectories and files
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
files=("ifcfg-eth0")

# Loop through subdirectories
for subdir in "${subdirectories[@]}"; do
    # Create the SystemAdministration and backup directories
    mkdir -p "$subdir/IT/Systems_Administration/backup"
    echo "Creating the Backup directory in $subdir.................."

    # Copy specified files to the backup directory
    for file in "${files[@]}"; do
        if [ "$file" == "ifcfg-eth0" ]; then
            sudo cp /etc/sysconfig/network-scripts/ifcfg-eth0 "$subdir/IT/Systems_Administration/backup/"
            echo "$file found and copied succesfully to $subdir"
            sleep 2
        else
            echo "Not found"
        fi
    done
done

# Specify the subdirectories and files
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
files2=("shadow" "resolv.conf" "hosts" "yum.conf")

# Loop through subdirectories
for subdir in "${subdirectories[@]}"; do
    # Create the SystemAdministration and backup directories



    # Copy specified files to the backup directory
    for file2 in "${files2[@]}"; do
        if  [ "$file2" == "shadow" ] || [ "$file2" == "resolv.conf" ] || [ "$file2" == "hosts" ] || [ "$file2" == "yum.conf" ]; then
            cp -r /etc/$file2  "$subdir/IT/Systems_Administration/backup/"


            echo "some files were found and copied succesfully to $subdir.........."
            sleep 2
        else
            echo "Not found"
        fi
    done
done




sleep 2

echo "Removing Script, Cleaning up..."
rm -rf Backup.sh
ls -al

echo "Backup process completed."
sleep 3
echo "****************************************************************************"
echo "************************Day 3 task Completed********************************"
echo "****************************************************************************"
