-- drop tables if exist
drop table if exists Contacts;
drop table if exists Category;
drop table if exists Subcategory;
drop table if exists Campaign;


-- Create Contacts Table to import all contacts information data
CREATE TABLE Contacts (
	contact_id VARCHAR(4) PRIMARY KEY NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
    email VARCHAR (50) NOT NULL
);
-- Create Category Table to import Category ID and description
CREATE TABLE Category (
    category_id VARCHAR(5) PRIMARY KEY NOT NULL,
    category VARCHAR(20) NOT NULL
);
-- Create Subcategory Table to import Subcatergory ID and description
CREATE TABLE Subcategory (
    subcategory_id VARCHAR (10) PRIMARY KEY NOT NULL,
    subcategory VARCHAR (50) NOT NULL
);
-- Create Campaign Table to import Campaign info
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id VARCHAR (4) NOT NULL,
    company_name VARCHAR (50),
    description VARCHAR (100),
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR (20),
    backers_count INT,
    country VARCHAR (2),
    currency VARCHAR (3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR (5) NOT NULL,
    subcategory_id VARCHAR (10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Select all the data from the tables to view
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;
