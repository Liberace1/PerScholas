#!bin/bash
#Day2
#remove Geona Access



#add new CEO asjohnson
usermod -aG CEO asjohnson
usermod -aG Finance asjohnson
usermod -aG HR asjohnson
usermod -aG IT asjohnson
usermod -aG Operations asjohnson

#copy the previous ceo directory and assign all to new ceo asjohnson
cp -a /home/gahattleburg /home/asjohnson
chown -R asjohnson:asjohnson /home/asjohnson

#delete old ceo
userdel gahattleburg
#remove old ceo from all groups 
gpasswd -d gahattleburg IT
gpasswd -d gahattleburg Executive
gpasswd -d gahattleburg HR
gpasswd -d gahattleburg Finance
gpasswd -d gahattleburg Operations


#!/bin/bash

# Create the DEIB group
mkdir DEIB
groupadd DEIB
chown -R :DEIB DEIB
# Add users to the DEIB group
usermod -aG DEIB "rkjames"
usermod -aG DEIB "kacorinth"
usermod -aG DEIB "rrwinthrow"
usermod -aG DEIB "tycorson"

echo "DEIB group created and users added successfully."

#to add group memebrs executive as members of deib group

# Source group name (members of this group will be added as owners)
source_group="Executive"

# Target group name (members of the source group will become owners of this group's directory)
target_group="DEIB"


# Target directory path (the directory owned by the target group)
target_directory="PlanetGreen/DEIB"

# Get the members of the source group and loop through them
for username in $(getent group $source_group | cut -d: -f4 | tr ',' ' '); do
    # Add each member of the source group as an owner of the target directory
    chown -R $username:$target_group $target_directory
done

echo "Ownership updated successfully."

