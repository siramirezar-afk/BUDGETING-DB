CREATE TABLE categories (
    categoryID    INT             PRIMARY KEY,
    cateName      VARCHAR(100)    UNIQUE NOT NULL,
    cateType      VARCHAR(50)     NOT NULL,
    description   VARCHAR(255)    NOT NULL,
    tagColour     VARCHAR(7)      NOT NULL
);

CREATE TABLE users (
    userID        INT             PRIMARY KEY,
    userName      VARCHAR(100)    NOT NULL,
    email         VARCHAR(100)    UNIQUE NOT NULL,
    password      VARCHAR(255)    NOT NULL
);

CREATE TABLE transac (
    transactionID INT             PRIMARY KEY,
    amount        DECIMAL(18, 4)  NOT NULL,
    trans_date    DATE            NOT NULL,
    currency      VARCHAR(3)      NOT NULL,
    transType     VARCHAR(50)     NOT NULL,
    userID        INT             REFERENCES users(userID),
    categoryID    INT             REFERENCES categories(categoryID)
);

CREATE TABLE reports (
    reportID      INT             PRIMARY KEY,
    issuanceDate  DATE            NOT NULL,
    period        VARCHAR(7)      NOT NULL,
    report_data   TEXT            NOT NULL,
    userID        INT             REFERENCES users(userID)
);

CREATE TABLE budgets (
    budgetID      INT             PRIMARY KEY,
    maxAmount     DECIMAL(18, 4)  NOT NULL,
    startDate     DATE            NOT NULL,
    endDate       DATE            NOT NULL,
    userID        INT             REFERENCES users(userID),
    categoryID    INT             REFERENCES categories(categoryID)
);


-- DDL - ALTERATIONS 

-- 1. Add cellphone column
ALTER TABLE users
ADD COLUMN cellphone_number VARCHAR(20);

-- 2. Rename table (PostgreSQL syntax)
ALTER TABLE transac RENAME TO "transaction";


-- INDEXES

CREATE UNIQUE INDEX uidx_categories_cateName
ON categories(cateName);

CREATE UNIQUE INDEX uidx_users_email
ON users(email);

CREATE UNIQUE INDEX uidx_reports_userID_issuanceDate
ON reports(userID, issuanceDate);

CREATE UNIQUE INDEX uidx_budgets_userID_categoryID
ON budgets(userID, categoryID);
