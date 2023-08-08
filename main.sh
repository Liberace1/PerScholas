#!/bin/bash
#installing tree
echo "Instaling Dependencies...."
sudo yum install tree -y
sleep 2
echo "Sucesfully Installed tree for better visual"
sleep 2
mkdir PlanetGreen && cd PlanetGreen
mkdir Earth Fire Wind Water Heart
ls
echo "Bank Directory Created"

# List of folders to check and execute the script in
folders=("Earth" "Fire" "Wind" "Water" "Heart")

# Loop through each folder
for folder in "${folders[@]}"; do
    # Check if the folder exists
    if [ -d "$folder" ]; then
        # Change to the folder
        cd "$folder"
        echo "..................................Starting Script Installation, Hold on tight..................................."
        sleep 7s
        # Run the script 'ourscript.sh' in the current folder
        cd ~
        cp ourscript.sh PlanetGreen/$folder
        cd PlanetGreen/$folder
        ./ourscript.sh
        #clean directories
        echo "...................removing script files..................................."
        sleep 3
        rm ourscript.sh
        #Show visuals
        echo "Showing tree view"
        sleep 3
        tree 
        # Move back to the original directory
        cd ..
        ls
        pwd
        echo "..................................Cleaning Working Directories......................"
        sleep 2
        clear
        echo "Changing Directories..."
        sleep 3
        echo "Changing Directories........."
        sleep 4
    else
        echo "Folder '$folder' does not exist. Skipping..."
    fi
done

#Adding users and group
echo "Running useradd script"
sleep 10s
./useraddscript.sh
echo "***************Users and groups succesfully created*********************"
echo "Inspect users created"
cat etc/users
sleep 15
clear
echo "Inspect Groups created"
cat etc/groups
getent group
sleep 15
clear