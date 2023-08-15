#!/bin/bash
#
# Create a folder with "backup" and the current date and time
folder_name="backup_$(date +'%Y-%m-%d_%H-%M-%S')"
mkdir "$folder_name"

files2=("shadow" "resolv.conf" "hosts" "yum.conf")

    # Copy specified files to the backup directory
    for file2 in "${files2[@]}"; do
        if  [ "$file2" == "shadow" ] || [ "$file2" == "resolv.conf" ] || [ "$file2" == "hosts" ] || [ "$file2" == "yum.conf" ]; then
            cp -r /etc/$file2  "$folder_name/"

files=("ifcfg-eth0")

for file in "${files[@]}"; do
        if [ "$file" == "ifcfg-eth0" ]; then
             cp /etc/sysconfig/network-scripts/ifcfg-eth0 "$folder_name/"
    else
echo "Not found $file"
	fi
done
    
    echo "The files found have been copied to the intended folder.........."
            sleep 2
        else
            echo "Not found"
        fi
    done

sudo scp -i .ssh/id_rsa -r "$folder_name"  ec2-user@35.174.8.102:/home/ec2-user/Backup/
echo "*********************************************************************"
echo "************Backing up to backup server 35.174.8.102*****************"
echo "*********************************************************************"
echo "*****************Starting SSH Connection to Server*******************"
echo "*********************************************************************"
echo "***************************Copying Files*****************************"
