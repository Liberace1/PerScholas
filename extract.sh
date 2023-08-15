#!/bin/bash
# Initial script to extract files to the right folder

# List of folders to check for existence
folders=("Day1" "Day2" "Day3")

# Flag to track if all folders exist
all_folders_exist=true

cp -r cleanupscript.sh ../
# Check if all specified directories exist
for folder in "${folders[@]}"; do
    if [ ! -d "$folder" ]; then
        all_folders_exist=false
        break
    fi
done

# If all folders exist, copy their contents
if $all_folders_exist; then
    cp -r Day1/* ../ && cp -r Day2/* ../ && cp -r Day3/* ../
    echo "Files copied successfully."
    
else
    echo "******************************************************************************"
    echo "One or more of the directories (${folders[@]}) do not exist."
    echo "Please git clone from GitHub and ensure all folders are present."
    echo "******************************************************************************"
    sleep 5
fi
cd ~
ls
