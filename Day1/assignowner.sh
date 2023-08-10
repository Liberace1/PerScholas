#!/bin/bash

# Set Folder Ownership for Existing Groups

# Set the group as the owner of the folder
# give management sole access to mgmt folder
function set_group_as_folder_owner {
    local groupname="$1"
    chown -R :"$groupname" "$groupname"
    echo "Set group $groupname as the owner of folder $groupname"
}

# Replace the placeholders below with your actual group names
set_group_as_folder_owner "Executive"
set_group_as_folder_owner "Finance"
set_group_as_folder_owner "HR"
set_group_as_folder_owner "IT"
set_group_as_folder_owner "Operations"
echo "******All folder Owner assigned******"

