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
  - `create_schema.sql`: Defines the database schema.
  - `create_tables.sql`: Creates skeleton tables for all datasets.
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
   - Provides details about loan themes categorized by regions.
   - Rows: 15,736
   - COlumns:21


## Tools Used
- **MySQL Workbench**: For database creation, normalization, and data import. For ERD creation and visualization.
- **Microsoft Excel**: For cleaning and preparing datasets.

## Steps to Reproduce
### Step 1: Clean the Datasets
1. Duplicate each dataset before cleaning.
2. Standardize column names, data formats, and values.
3. Replace missing values and perform data validation.
4. Save the cleaned files in the `datasets` directory.

### Step 2: Create the Database Schema
1. Run the `create_schema.sql` script in MySQL Workbench to create the database.

### Step 3: Create Tables
1. Run the `create_tables.sql` script to define skeleton tables for the datasets.

### Step 4: Import Data
1. Execute the `data_import.sql` script to load data into the tables.

### Step 5: Normalize Tables
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

