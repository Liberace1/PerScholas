#!/bin/bash

# Create Groups (If not already created)
declare -a groups=(
    "Executive"
    "CEO" #remove this line after testing
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

for group in "${groups[@]}"; do
    groupadd "$group"
done

# Function to add users
function create_user {
    local username="$1"
    local fullname="$2"
    local groups_to_add="${@:3}" # All arguments after the 2nd argument are groups

    if id "$username" &>/dev/null; then
        echo "User $username already exists. Skipping..."
    else
        useradd -c "$fullname" -m "$username"
        echo "Created user $username"
    fi

    for group in $groups_to_add; do
        add_user_to_group "$username" "$group"
    done
}

# Function to add users to groups
function add_user_to_group {
    local username="$1"
    local groupname="$2"
    
    if [ $(getent group "$groupname") ]; then
        usermod -a -G "$groupname" "$username"
        echo "Added user $username to group $groupname"
    else
        echo "Group $groupname does not exist. Skipping user $username..."
    fi
}

# Create Users - Executive
create_user "gahattleburg" "Genoa A. Hattleburg - CEO" "CEO"
create_user "asjohnson" "Arthur S. Johnson - CFO" "Finance"
create_user "erika-graham" "Erika N. Graham - CHRO" "HR"
create_user "dssanchez" "Daniella S. Sanchez - COO" "Operations"
create_user "xjhurston" "Xavier J. Hurston - CIO" "IT"

# Create Users - IT
create_user "mrjones" "Michael R. Jones - Director" "IT_Management" "Engineering" "Systems_Administration" "Security" "Networking"
create_user "jlbach" "Jessica L. Bach - Manager, Engineering" "IT_Management" "Engineering"
create_user "rkjames" "Raphael K. James - Associate Developer" "Engineering"
create_user "msrupert" "Mona S. Rupert - Associate Developer" "Engineering"
create_user "hsjames" "Hannah D. St. James - Manager, Systems Administration" "IT_Management" "Systems_Administration"
create_user "ddbradshaw" "Donna D. Bradshaw - Systems Administrator" "Systems_Administration"
create_user "jysimon" "Johanas Y. Simon - Jr. Systems Administrator" "Systems_Administration"
create_user "darames" "David A. Rames - Sr. Manager, Security" "IT_Management" "Security"
create_user "gnlee" "Gordon N. Lee - Security Analyst" "Security" "Networking"
create_user "fsnorth" "Frederico S. North - Security Analyst" "Security"
create_user "aklong" "Amos K. Long - Sr. Manager, Networking" "IT_Management" "Networking"
create_user "hjuriah" "Hazel J. Uriah - Network Engineer" "Networking"
create_user "gnlee" "Gary N. Lee - Network Engineer" "Networking"

# Create Users - HR
create_user "jlhenry" "Joana L. Henry - Director, Human Resources" "HR_Management" "HR"
create_user "kshendrick" "Kyle S. Hendrick - Human Resources Associate" "HR"
create_user "kacorinth" "Katrina A. Corinth - Human Resources Associate" "HR"

# Create Users - Finance
create_user "jsbrown" "Jonathan S. Brown - Director of Finance" "Fin_Management"
create_user "rrwinthrow" "Robert R. Winthrow - Sr. Financial Associate" "Finance"
create_user "makeet" "Melissa A. Keet - Sr. Financial Associate" "Finance"

# Create Users - Operations
create_user "tesmith" "Tracey E. Smith - Director of Operations" "Op_Management" "Customer_Care" "Sales"
create_user "evquerrell" "Elizabeth V. Querrell - Sr. Manager, Customer Care" "Op_Management" "Customer_Care"
create_user "tycorson" "Tisha Y. Corson - Teller 2" "Customer_Care"
create_user "bjgraham" "Byron J. Graham - Teller 3" "Customer_Care"
create_user "jtcurry" "Jordan T. Curry - Sr. Sales Manager" "Op_Management" "Sales"
create_user "bjgomez" "Bryson J. Gomez - Commercial Sales Representative" "Sales"
create_user "atstone" "Alicia T. Stone - Customer Sales Representative" "Sales"
