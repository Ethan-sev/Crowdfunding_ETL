-- Categories Table
CREATE TABLE Categories (
    category_id VARCHAR(100) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);

-- Subcategories Table
CREATE TABLE Subcategories (
    subcategory_id VARCHAR(100) PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL
);

-- Contacts Table
CREATE TABLE Contacts (
    contact_id VARCHAR(100) PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Campaigns Table
CREATE TABLE Campaigns (
    cf_id VARCHAR(100) PRIMARY KEY,
    contact_id VARCHAR(100) REFERENCES Contacts(contact_id),
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(100),
    goal INT,
    pledged INT,
    outcome VARCHAR(100),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(100),
    launched_date date,
    end_date date,
    category_id VARCHAR(10) REFERENCES Categories(category_id),
    subcategory_id VARCHAR(10) REFERENCES Subcategories(subcategory_id)
)


SELECT * from 