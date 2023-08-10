
#!/bin/bash
  echo "Checking if Tree is installed..."

if ! command -v tree &>/dev/null; then
        echo "Tree is not installed. Installing..."


fi
        echo "*****Tree will install if not present*****"
        read -p "Would you like to proceed? (y/n): " choice


# Display the message and ask for user input




if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    sudo yum install tree -y
    echo "Successfully installed tree."
    echo "You can now use the 'tree' command for better visual file structure."
    echo "Proceeding..."

#*******************************************Installing folder script*************************************************
    # Store the original directory
    folder_to_check="PlanetGreen"
if [ -d "$folder_to_check" ]; then
    echo "The folder '$folder_to_check' already exists. Aborting...., Please Delete '$folder_to_check' and re-run script....."
    echo "Copy and paste this command ***rm -rf PlanetGreen && sudo ./main.sh**....."
    exit 1
else
        
    # Store the original directory
    original_dir="$(pwd)"

    sleep 2
    mkdir PlanetGreen && cd PlanetGreen
    mkdir Earth Fire Wind Water Heart
    ls
    tree
    echo "Bank Directory Created"

    # List of folders to check and execute the script in
    folders=("Earth" "Fire" "Wind" "Water" "Heart")

    # Loop through each folder
        for folder in "${folders[@]}"; do
            # Check if the folder exists
            if [ -d "$folder" ]; then
                # Change to the folder
                cd "$folder"
                echo "..Starting Script Installation, Hold on tight..............."

                # Copy the script from the original directory
                cp -f "$original_dir/ourscript.sh" .

                # Run the script 'ourscript.sh' in the current folder
                ./ourscript.sh
                #Cleaning Directories, Removing Script..
                rm -rf ourscript.sh
                echo "***...Destroying Script, Cleaning Up Directory...***"
                sleep 2
                # Go back to the original directory
                cd "$original_dir/PlanetGreen"
            fi
            echo "****Successfully Created all required directories per Donna's Exercise****"
        done


    cd ..
    # Adding users and groups
    echo "*****************Running useradd script*****************"
    sleep 3
    ./useraddscript.sh
    echo "*************** Users and groups successfully created *********************"

    # Inspect groups created
    echo "*****Inspecting created groups*******"
    getent group
    sleep 6
    clear

    # Inspect users created
    echo "****Inspecting created users*****"
    getent passwd
    sleep 4
    clear
    pwd
    pwd
    sleep 2
    #assign owner
    cd "$original_dir/PlanetGreen"
    # List of folders to check and execute the script in
    folders=("Earth" "Fire" "Wind" "Water" "Heart")

    echo "Checking Folders to assign Permissions"
    # Loop through each folder
    for folder in "${folders[@]}"; do
        # Check if the folder exists
    pwd
    if [ -d "$folder" ]; then

            # Change to the folder
    echo "Folder exists, Now preparing files.............."
    echo "*****Copying 3 scripts to '$folder' Folder and preparing for installation..*********"
    sleep 4
    cd "$folder"
    pwd
    echo "..Copying script over for Script Installation, Hold on tight..............."

    #Copy the script from the original directory
    cp -f "$original_dir/assignowner.sh" .
    #copy script to assign mgmnt to mgmnt folder
    cp -f "$original_dir/setmgmtperm.sh" .
    #copy script to assign CEO permissions
    cp -f "$original_dir/CEOperm.sh" .

    # Run the script 'ourscript.sh' in the current folder
    sudo ./assignowner.sh
    ls -al
    sudo ./setmgmtperm.sh
    ls -al
    sudo ./CEOperm.sh
    getent group IT
    getent group HR
    getent group Finance
    getent group Operations
    getent group Executive
    
   
    sudo ./setmgmtperm.sh
    sudo ./CEOperm.sh
            #Run mgmnt Script in the current folder
    echo "***...Destroying Script, Cleaning Up Directory...***"
    rm -rf assignowner.sh
    rm -rf setmgmtperm.sh
    rm -rf CEOperm.sh
    sleep 3

            # Go back to the original directory
            cd "$original_dir/PlanetGreen"
        fi
    done

    sleep 5

    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "**************DAY 1 Exercise completed**********************"
    echo "Folders Were Created, Users and Groups were Created also, Neccesary Permissions was assigned to respective folder"
    sleep 6
fi

else
    
  echo "We have to ensure *TREE* is installed before running script, Tree is required for this script to run as intended, you choose 'N' Hency why..... Script is Aborting, Choose 'Y' on next run............"
fi
