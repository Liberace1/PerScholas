
#!/bin/bash

# List  users and delete them
user_to_delete=(
"gahattleburg"
"asjohnson"
"erika-graham"
"dssanchez"
"xjhurston"
"mrjones"
"jlbach"
"rkjames"
"msrupert"
"hsjames"
"ddbradshaw"
"jysimon"
"darames"
"gnlee"
"fsnorth"
"aklong"
"hjuriah"
"jlhenry"
"kshendrick"
"kacorinth"
"jsbrown"
"rrwinthrow"
"makeet"
"tesmith"
"evquerrell"
"tycorson"
"bjgraham"
"jtcurry"
"bjgomez"
"atstone"
"gnlee1"
)
for username in ${user_to_delete[@]}; do
    if [ "$username" != "ec2-user" ]; then
        userdel -r "$username"
        echo "Deleted user: $username"
    fi
done
rm -rf PlanetGreen Earth Water Wind Fire Heart Executive Finance IT HR Operations



# List of groups you want to delete
groups_to_delete=(
    "Executive"
    "CEO"
    "Finance"
    "HR"
    "Operations"
    "IT"
    "IT_Management"
    "Engineering"
    "Systems_Administration"
    "Security"
    "Networking"
    "HR_Management"
    "Fin_Management"
    "Op_Management"
    "Customer_Care"
    "Sales"
    "Systems_Administrator"
)

# Delete specific groups
for group in "${groups_to_delete[@]}"; do
    groupdel "$group"
    echo "Deleted group: $group"
done

