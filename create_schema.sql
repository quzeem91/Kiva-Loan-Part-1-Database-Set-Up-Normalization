DROP SCHEMA IF EXISTS kiva;

CREATE SCHEMA `kiva` ;

USE kiva; 

-- Creating Kiva loan table

CREATE TABLE kiva_loans (
  `loan_id` VARCHAR(7) NOT NULL, -- Corrected to NOT NULL
  `funded_amount` INT,
  `loan_amount` INT,
  `activity` VARCHAR(32),
  `sector` VARCHAR(18),
  `use` VARCHAR(255) NULL,
  `country_code` VARCHAR(2),
  `country` VARCHAR(36),
  `region` VARCHAR(255), -- Set to 255 to accommodate unknown length
  `currency` VARCHAR(3),
  `partner_id` VARCHAR(3) NULL,
  `posted_time` TIMESTAMP,
  `disbursed_time` TIMESTAMP,
  `funded_time` TIMESTAMP,
  `term_in_months` INT,
  `lender_count` INT,
  `tags` VARCHAR(255) NULL, -- Set to 255 for flexibility
  `borrower_genders` VARCHAR(255), -- Set to 255 to accommodate unknown length
  `repayment_interval` VARCHAR(10),
  `date` DATE,
  PRIMARY KEY (`loan_id`) -- Set loan_id as the primary key
);


-- Creating kiva mpi region location table

CREATE TABLE kiva_mpi_region_locations (
    Location_name VARCHAR(62),
    ISO CHAR(3) NOT NULL, -- ISO country code
    country VARCHAR(32) NOT NULL,
    region VARCHAR(52),
    world_region VARCHAR(27) NOT NULL,
    mpi DECIMAL(6, 4), -- Allows up to 4 decimal places
    geo VARCHAR(40) NULL, -- Latitude-Longitude pair as a string
    lat VARCHAR(18) NULL, -- Latitude as a string
    lon VARCHAR(18) NULL  -- Longitude as a string
);

-- loan theme ids table
CREATE TABLE loan_theme_ids (
    loan_id VARCHAR(7) NOT NULL,        
    loan_theme_id VARCHAR(15) NOT NULL, 
    theme_type VARCHAR(51) NOT NULL,   
    partner_id VARCHAR(3) NULL         
);

-- Creating loan themes by region table 

CREATE TABLE loan_themes_by_region (
    partner_id VARCHAR(3),              -- Unique ID for field partners
    field_partner_name VARCHAR(81),     -- Name of the field partner
    sector VARCHAR(27),                 -- Sector of the loan
    loan_theme_id VARCHAR(15),          -- Unique ID for loan theme
    loan_theme_type VARCHAR(51),        -- General description of the loan theme
    country VARCHAR(36),                -- Country name
    for_kiva VARCHAR(3),                 -- Indicator for Kiva-specific loan theme (e.g., Yes/No)
    region VARCHAR(71),                 -- Region within the country
    iso VARCHAR(2),                     -- Unique country code
    loan_count INT,                         -- Number of loans funded in this LocationName (renamed for clarity)
    amount DECIMAL(12,2),               -- Dollar value of loans funded
    location_name VARCHAR(62),          -- "{region}, {country}" - Unique ID for location
    geo VARCHAR(40),                    -- Latitude and longitude pair
    lon DECIMAL(10,7),                  -- Longitude value
    lat DECIMAL(10,7),                  -- Latitude value
    mpi_region VARCHAR(49),             -- MPI Region name
    mpi_geo VARCHAR(40),                -- Lat-Lon pair for MPI region
    rural_pct INT                       -- Percentage of borrowers in rural areas
);