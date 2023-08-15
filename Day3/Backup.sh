
#!/bin/bash
# Code working in folder placed, tuned for iteration
# Script should be executed inside Bank Folder.

# Define the usernames, directories, and group
ceo_username="sjhuckleberry"
cfo_username="asjohnson"
engineering_group="Engineering"
dev_test_username="dev_TEST"
original_dir="PlanetGreen"
group_folder=("IT" "Executive" "HR" "Finance" "Operations")
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
# Copy Day3bkp.sh script to the original directory
cp -r Day3bkp.sh "$original_dir/"
cd "$original_dir"
pwd
pwd
pwd
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




# Specify the subdirectories and files
subdirectories=("Earth" "Fire" "Water" "Wind" "Heart")
files=("ifcfg-eth0")

# Loop through subdirectories
for subdir in "${subdirectories[@]}"; do
    # Create the SystemAdministration and backup directories
    mkdir -p "$subdir/IT/Systems_Administration/backup"
    echo "Creating the Backup directory in $subdir................................................."

    # Copy specified files to the backup directory
    for file in "${files[@]}"; do
        if [ "$file" == "ifcfg-eth0" ]; then
            sudo cp /etc/sysconfig/network-scripts/ifcfg-eth0 "$subdir/IT/Systems_Administration/backup/"
            echo "$file found"
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


            echo "The files found have been copied to the intended folder.........."
        else
            echo "Not found"
        fi
    done
done






echo "Removing Script, Cleaning up..."
rm -rf Day3bkp.sh
ls -al

echo "Backup process completed."

