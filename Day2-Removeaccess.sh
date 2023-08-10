#!/bin/bash


#Day2
#copy the previous ceo directory and assign all to new ceo asjohnson
cp -a /home/gahattleburg /home/asjohnson
chown -R asjohnson:asjohnson /home/asjohnson

#remove Geona Access
#remove old ceo from all groups 
gpasswd -d gahattleburg IT
gpasswd -d gahattleburg Executive
gpasswd -d gahattleburg HR
gpasswd -d gahattleburg Finance
gpasswd -d gahattleburg Operations

#add new CEO asjohnson
usermod -aG CEO asjohnson
usermod -aG Finance asjohnson
usermod -aG HR asjohnson
usermod -aG IT asjohnson
usermod -aG Operations asjohnson
usermod -aG Executive asjohnson

echo "***added asjohnson as the new CEO***"
echo "***added asjohnson as the new CEO***"
echo "***added asjohnson as the new CEO***"
sleep 3
echo "***************************************************Welcome!!!!!! New CEO, Setting up your Desk***************************************"
sleep 5
echo "***Moving things around, Setting your Picture on the Wall***"
sleep 1
echo "***Moving things around, Setting your Picture on the Wall***"
sleep 1
echo "***Moving things around, Setting your Picture on the Wall***"
sleep 1
echo "***Moving things around, Setting your Picture on the Wall***"
sleep 3
echo "*****Copying Old CEO's Files and Home Dir to New CEO**********************"
sleep 2
echo "*****Copying Old CEO's Files and Home Dir to New CEO**********************"
sleep 1
echo "*****Copying Old CEO's Files and Home Dir to New CEO**********************"
sleep 1
echo "*****Copying Old CEO's Files and Home Dir to New CEO**********************"

sleep 3

#copy the previous ceo directory and assign all to new ceo asjohnson
cp -a /home/gahattleburg /home/asjohnson
chown -R asjohnson:asjohnson /home/asjohnson

#delete old ceo
userdel gahattleburg
#remove old ceo from all groups 
echo "*****Wiping Old CEO's Name of the wall**********************"
sleep 2
echo "*****Still Wiping Old CEO's Name of the wall**********************"
sleep 2
echo "*****hmmmmm still Wiping Old CEO's Name of the wall**********************"
sleep 3

#Create new Directory and Group DEIB
echo "Creating DEIB Directory and group......................"
sleep 2
echo "Setting neccesary permissions......................"
sleep 2
mkdir DEIB
groupadd DEIB
chown -R :DEIB DEIB
chmod 750 DEIB
sudo chmod +t DEIB
sudo chmod o-rwx DEIB




echo "DEIB group created and users added successfully."

#to add group memebrs executive as members of deib group

# Source group name (members of this group will be added as owners)
source_group="Executive"

# Target group name (members of the source group will become owners of this group's directory)
target_group="DEIB"


# Target directory path (the directory owned by the target group)
target_directory="DEIB"

# Get the members of the source group and loop through them
for username in $(getent group $source_group | cut -d: -f4 | tr ',' ' '); do
    # Add each member of the source group as an owner of the target directory
    usermod -aG $target_group $username
done
echo "************************All Executive members have been added succesfully******************"
sleep 2
echo "************************All Executive members have been added succesfully******************"
sleep 2
echo "************************All Executive members have been added succesfully******************"
usermod -aG DEIB "rkjames"
echo "added rkjames to DEIB"
usermod -aG DEIB "kacorinth"
echo "added kacorinth to DEIB"
usermod -aG DEIB "rrwinthrow"
echo "added rrwinthrow to DEIB"
usermod -aG DEIB "tycorson"
echo "added tycorson to DEIB"
echo "Addtional Group Members addedd successfully."
sleep 2
#inspecting groups
echo "............................Inspect New Group Members..................."
echo "............................Inspect New Group Members..................."
echo "............................Inspect New Group Members..................."
getent group DEIB
sleep 5
echo ".................Day 2 task Completed..................."
echo ".................Day 2 task Completed..................."
echo ".................Day 2 task Completed..................."
echo ".................Day 2 task Completed..................."
echo ".................Day 2 task Completed..................."
echo ".................Day 2 task Completed..................."
