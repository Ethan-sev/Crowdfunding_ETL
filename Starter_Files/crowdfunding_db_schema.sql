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

CREATE TABLE Campaigns (
    cf_id VARCHAR(100) PRIMARY KEY,
    contact_id VARCHAR(100),
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(100),
    goal NUMERIC(10, 2),
    pledged NUMERIC(10, 2),
    outcome VARCHAR(100),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(100),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id)
);


SELECT * FROM Campaigns;
SELECT * FROM Subcategories;
SELECT * FROM Contacts;
SELECT * FROM Campaigns;
