#!/bin/bash
#run main.sh instead
ls
echo "Assuming Bank Directories has been Created for this path:" && pwd 
sleep 3
echo ".......Folder script is initializing....."
sleep 5
mkdir IT Executive HR Finance Operations
ls
echo "**Succesfully created IT, Executive, HR , Finance and Operations folder succesfully**"
cd IT && mkdir Management Engineering "Systems Administration" Security Networking
ls
cd ..
cd HR && mkdir Management Audit Payroll Benefits Policies
ls
echo "**Succesfully created Management, Audit, Payroll, Benefits and Policies folder in HR**"
cd Management && mkdir 2023 2024
ls
cd ..
cd Audit && mkdir 2023 2024
ls
echo "**Succesfully created 2023 and 2024 in Audit**"
ls
cd ..
cd Payroll && mkdir 2023 2024
ls
echo "**Succesfully created 2023 and 2024 in Payroll**"
cd ..
cd Benefits && mkdir 2023 2024
ls
echo "**Succesfully created 2023 and 2024 in Benefits**"
cd ..
cd Policies && mkdir 2023 2024
ls
echo "**Succesfully created 2023 and 2024 in Policies**"
echo "Created 2023 and 2024 folder as subdirectory to all parent directory in the working directory here:" && pwd
cd ..
cd ..
sleep 3
ls
echo "**Creating sub folders in Finance**"
sleep 3
cd Finance && mkdir Management Budgets
ls
cd Management && mkdir "Expense Reports"
ls
cd "Expense Reports" && mkdir 2023
ls
cd 2023 &&  mkdir January Feburary March April May June July August September October November December
ls
sleep 2
echo "Created Management Budgets and expense reports with 2023 as fiscal year and then created all months of the year as sub-directory"
cd ..
cd ..
cd ..
pwd
ls
cd Budgets && mkdir Proposed Actual
ls
cd ..
cd ..
pwd
cd Operations &&  mkdir Management "Customer Care" Sales
ls
echo "****Succesfully Created all required directories per Donna's Exercise****"
