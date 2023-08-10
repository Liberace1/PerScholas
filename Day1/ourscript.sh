#!/bin/bash
# Run main.sh instead

# Specify the folder name to check
folder_to_check="PlanetGreen"

# Check if the folder exists
  
    
    # List the contents of the current directory
    ls
    
    # Print a message about the assumed bank directories path
    echo "Assuming Bank Directories have been created for this path:" && pwd 
    sleep 2
    
    # Display a message indicating the start of folder creation
    echo "Creating Folders..."
    sleep 2
    
    # Create top-level directories
    mkdir IT Executive HR Finance Operations
    tree
    echo "**Successfully created IT, Executive, HR, Finance, and Operations folders**"
    
    # Enter IT directory and create subdirectories
    cd IT && mkdir Management Engineering "Systems Administration" Security Networking
    tree
    cd ..
    
    # Enter HR directory and create subdirectories
    cd HR && mkdir Management Audit Payroll Benefits Policies
    tree
    echo "**Successfully created Management, Audit, Payroll, Benefits, and Policies folders in HR**"
    
    # Enter Management directory within HR and create subdirectories for years
    cd Management && mkdir 2023 2024
    tree
    cd ..
    
    # Similar steps for Audit, Payroll, Benefits, and Policies
    cd Audit && mkdir 2023 2024
    tree
    echo "**Successfully created 2023 and 2024 in Audit**"
    tree
    cd ..
    
    cd Payroll && mkdir 2023 2024
    tree
    echo "**Successfully created 2023 and 2024 in Payroll**"
    cd ..
    
    cd Benefits && mkdir 2023 2024
    tree
    echo "**Successfully created 2023 and 2024 in Benefits**"
    cd ..
    
    cd Policies && mkdir 2023 2024
    tree
    echo "**Successfully created 2023 and 2024 in Policies**"
    
    # Print a message about created subdirectories within each parent directory
    echo "Created 2023 and 2024 folders as subdirectories in all parent directories in the working directory here:" && pwd
    cd ..
    cd ..
    sleep 2
    tree
    
    # Print a message about creating subfolders in Finance
    echo "**Creating subfolders in Finance**"
    sleep 2
    
    # Enter Finance directory and create subdirectories
    cd Finance && mkdir Management Budgets
    tree
    
    # Enter Management directory within Finance and create subdirectory for Expense Reports
    cd Management && mkdir "Expense Reports"
    tree
    
    # Enter Expense Reports directory and create subdirectory for year 2023
    cd "Expense Reports" && mkdir 2023
    tree
    
    # Enter 2023 directory and create subdirectories for each month
    cd 2023 &&  mkdir January February March April May June July August September October November December
    tree
    sleep 2
    echo "Created Management Budgets and expense reports with 2023 as fiscal year and then created all months of the year as sub-directory"
    
    # Return to the parent directory
    cd ..
    cd ..
    cd ..
    pwd
    ls
    
    # Enter Budgets directory and create subdirectories
    cd Budgets && mkdir Proposed Actual
    tree
    cd ..
    cd ..
    
    pwd
    # Enter Operations directory and create subdirectories
    cd Operations &&  mkdir Management "Customer Care" Sales
    tree
    

