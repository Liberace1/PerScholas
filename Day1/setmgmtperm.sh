#!/bin/bash

declare -a groups=(
  "IT_Management"
  "HR_Management"
  "Fin_Management"
  "Op_Management"
)

for group in "${groups[@]}"; do
    if [ "$group" == "IT_Management" ]; then
        # Assign the folder to the group
        chown :"$group" "IT/Management"
        ls -al IT
        # Change permissions to 750 for the group
        chmod 750 -R "IT/Management"

    elif [ "$group" == "HR_Management" ]; then
        # Assign the folder to the group
        chown :"$group" "HR/Management"
        ls -al HR
        # Change permissions to 750 for the group
        chmod 750 -R "HR/Management"

    elif [ "$group" == "Fin_Management" ]; then
        # Assign the folder to the group
        chown :"$group" "Finance/Management"
        ls -al Finance
        # Change permissions to 750 for the group
        chmod 750 -R "Finance/Management"

    elif [ "$group" == "Op_Management" ]; then
        # Assign the folder to the group
        chown :"$group" "Operations/Management"
        ls -al Operations
        # Change permissions to 750 for the group
        chmod 750 -R "Operations/Management"

    else
        echo "Unknown group: $group"
    fi
done

