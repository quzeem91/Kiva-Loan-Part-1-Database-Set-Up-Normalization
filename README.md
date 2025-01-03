# Kiva Loan Part 1: Database Set Up & Normalization

## Overview
This repository is the first phase of a comprehensive data analytics project leveraging the Kiva Loan datasets. In this phase, we focus on transitioning raw data from Excel to a structured MySQL database. The aim is to create a clean, normalized database ready for analysis in subsequent phases.

## Objectives
1. **Clean datasets**: Prepare and clean raw data in Excel.
2. **Database schema creation**: Design the database structure in MySQL.
3. **Data import**: Load the cleaned datasets into MySQL.
4. **Normalization**: Normalize tables( up to 3 NF) to eliminate redundancy and establish relationships.
5. **ERD creation**: Generate an Entity-Relationship Diagram (ERD) to visualize the database structure.

## Project Deliverables
- **SQL Scripts**:
  - `create_schema.sql`: Defines the database schema and creates Skeleton tables for all datasets.
  - `data_import.sql`: Imports cleaned data into the database.
  - `normalization.sql`: Normalizes tables and establishes relationships.
- **ERD Diagram**: A diagram illustrating the relationships between tables.

## Datasets
1. **Kiva Loans**
   - Rows: 671,205
   - Columns: 20
   - Contains information on loans, amounts, activities, sectors, and borrower details.

2. **Kiva MPI Region Location**
   - Contains regional information, geographic coordinates, and Multidimensional Poverty Index (MPI) data.
   - Rows: 2772
   - Columns: 9

3. **Loan Theme IDs**
   - Metadata about loan themes and their types.
   - Rows: 779,093
   - Columns: 4

4. **Loan Themes by Region**
   - Provides details about loan themes categorized by region.
   - Rows: 15,736
   - Columns:21

     [Data Description](https://www.kaggle.com/datasets/kiva/data-science-for-good-kiva-crowdfunding/discussion/50585)


## Tools Used
- **MySQL Workbench**: For database creation, normalization, and data import. For ERD creation and visualization.
- **Microsoft Excel**: For cleaning and preparing datasets.

## Steps to Reproduce
### Step 1: Clean the Datasets
1. Duplicate each dataset before cleaning.
2. Standardize column names, data formats, and values.
3. Replace missing values and perform data validation.
4. Save the cleaned files in the `datasets` directory.

[Data Cleaning Guide](https://docs.google.com/document/d/1y62B00UQGHPAPTWj97wmnqRV6iCbU5CdjMweo4xGkok/edit?usp=sharing)

### Step 2: Create the Database Schema
1. Run the `create_schema.sql` script in MySQL Workbench to create the database and skeleton tables for the datasets.


### Step 3: Import Data
1. Execute the `data_import.sql` script to load data into the tables.
   
   Check this guide on how to import large data into MySQL with no data lost or compromised: [Here](https://medium.com/@olamidequzeem91/import-600k-excel-rows-to-mysql-no-data-compromised-in-under-a-minute-with-zero-data-loss-12bf32cc2540) 

### Step 4: Normalize Tables
1. Execute the `normalization.sql` script to normalize the tables and define relationships.

### Step 6: Generate ERD
1. MySQL Workbench to create the ERD and export it as `kiva_erd.png`.

## Entity-Relationship Diagram (ERD)
_(To be added after normalization)_

## Future Enhancements
- Add constraints to improve data integrity.
- Optimize queries for faster data retrieval.

## Author
Olamide Quzeem

## License
This project is licensed under the MIT License.

