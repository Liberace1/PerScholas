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
echo "*****Groups Have been addedd Succesfully*****"

# Function to add users
function create_user {
    local username="$1"
    local fullname="$2"
    local groups_to_add="${@:3}" # All arguments after the 2nd argument are groups

    if id "$username" &>/dev/null; then
        echo "User $username already exists. Appending username..."
        # Append a unique digit to the username
        count=1
        while id "${username}${count}" &>/dev/null; do
            ((count++))
        done
        unique_username="${username}${count}"
        echo "Creating user $unique_username instead."
        username="$unique_username"
        useradd -c "$fullname" -m "$username"
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
create_user "gahattleburg" "Genoa A. Hattleburg - CEO" "CEO" "Executive"
create_user "asjohnson" "Arthur S. Johnson - CFO" "Finance" "Executive"
create_user "engraham" "Erika N. Graham - CHRO" "HR" "Executive"
create_user "dssanchez" "Daniella S. Sanchez - COO" "Operations" "Executive"
create_user "xjhurston" "Xavier J. Hurston - CIO" "IT" "Executive"

# Create Users - IT
create_user "mrjones" "Michael R. Jones - Director" "IT" "IT_Management" "Engineering" "Systems_Administration" "Security" "Networking"
create_user "jlbach" "Jessica L. Bach - Manager, Engineering" "IT" "IT_Management" "Engineering"
create_user "rkjames" "Raphael K. James - Associate Developer" "IT" "Engineering"
create_user "msrupert" "Mona S. Rupert - Associate Developer" "IT" "Engineering"
create_user "hsjames" "Hannah D. St. James - Manager, Systems Administration" "IT" "IT_Management" "Systems_Administration"
create_user "ddbradshaw" "Donna D. Bradshaw - Systems Administrator" "IT" "Systems_Administration"
create_user "jysimon" "Johanas Y. Simon - Jr. Systems Administrator" "IT" "Systems_Administration"
create_user "darames" "David A. Rames - Sr. Manager, Security" "IT" "IT_Management" "Security"
create_user "gnlee" "Gordon N. Lee - Security Analyst" "IT" "Security"
create_user "fsnorth" "Frederico S. North - Security Analyst" "IT" "Security"
create_user "aklong" "Amos K. Long - Sr. Manager, Networking" "IT" "IT_Management" "Networking"
create_user "hjuriah" "Hazel J. Uriah - Network Engineer" "IT" "Networking"
create_user "gnlee" "Gary N. Lee - Network Engineer" "IT" "Networking"

# Create Users - HR
create_user "jlhenry" "Joana L. Henry - Director, Human Resources" "HR_Management" "HR"
create_user "kshendrick" "Kyle S. Hendrick - Human Resources Associate" "HR"
create_user "kacorinth" "Katrina A. Corinth - Human Resources Associate" "HR"

# Create Users - Finance
create_user "jsbrown" "Jonathan S. Brown - Director of Finance" "Fin_Management" "Finance"
create_user "rrwinthrow" "Robert R. Winthrow - Sr. Financial Associate" "Finance"
create_user "makeet" "Melissa A. Keet - Sr. Financial Associate" "Finance"

# Create Users - Operations
create_user "tesmith" "Tracey E. Smith - Director of Operations" "Operations" "Op_Management" "Customer_Care" "Sales"
create_user "evquerrell" "Elizabeth V. Querrell - Sr. Manager, Customer Care"  "Operations" "Op_Management" "Customer_Care"
create_user "tycorson" "Tisha Y. Corson - Teller 2"  "Operations" "Customer_Care"
create_user "bjgraham" "Byron J. Graham - Teller 3" "Operations" "Customer_Care"
create_user "jtcurry" "Jordan T. Curry - Sr. Sales Manager" "Operations" "Op_Management" "Sales"
create_user "bjgomez" "Bryson J. Gomez - Commercial Sales Representative" "Operations" "Sales"
create_user "atstone" "Alicia T. Stone - Customer Sales Representative" "Operations" "Sales"
