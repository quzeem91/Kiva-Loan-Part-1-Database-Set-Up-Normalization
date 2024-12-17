
USE kiva;

-- Importing Data into the kiva loan table 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/kiva_loans.csv' -- Path to the input CSV file
INTO TABLE kiva_loans -- Target table where data will be imported
FIELDS TERMINATED BY ',' -- Fields in the file are separated by commas
ENCLOSED BY '"' -- Fields are enclosed within double quotes
LINES TERMINATED BY '\n' -- Each line (record) ends with a newline character
IGNORE 1 LINES; -- Skip the first line as it contains column headers


-- Importing Data into the kiva mpi region table

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/kiva_mpi_region_locations.csv' -- Path to the input CSV file
INTO TABLE kiva_mpi_region_locations -- Target table where data will be imported
FIELDS TERMINATED BY ',' -- Fields in the file are separated by commas
ENCLOSED BY '"' -- Fields are enclosed within double quotes
LINES TERMINATED BY '\n' -- Each line (record) ends with a newline character
IGNORE 1 LINES; -- Skip the first line as it contains column headers


-- Importing Data into the loan theme ids table 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/loan_theme_ids.csv' -- Path to the input CSV file
INTO TABLE loan_theme_ids -- Target table where data will be imported
FIELDS TERMINATED BY ',' -- Fields in the file are separated by commas
ENCLOSED BY '"' -- Fields are enclosed within double quotes
LINES TERMINATED BY '\n' -- Each line (record) ends with a newline character
IGNORE 1 LINES; -- Skip the first line as it contains column headers


-- Importing Data into the loan theme by region table 

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/loan_themes_by_region.csv' -- Path to the input CSV file
INTO TABLE loan_themes_by_region -- Target table where data will be imported
FIELDS TERMINATED BY ',' -- Fields in the file are separated by commas
ENCLOSED BY '"' -- Fields are enclosed within double quotes
LINES TERMINATED BY '\n' -- Each line (record) ends with a newline character
IGNORE 1 LINES; -- Skip the first line as it contains column headers
