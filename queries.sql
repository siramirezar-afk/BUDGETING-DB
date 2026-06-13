-- Inserción de usuarios 
INSERT INTO users (userID, userName, email, password) 
VALUES (1, 'Luna', 'luna@email.com', 'difficultpassword123');

INSERT INTO users (userID, userName, email, password) 
VALUES (2, 'Jesus', 'yisus@email.com', 'jesusyisus');

INSERT INTO users (userID, userName, email, password) 
VALUES (3, 'Silvana', 'siramirez@email.com', 'digitalpomni');

INSERT INTO users (userID, userName, email, password) 
VALUES (4, 'Maycol', 'geikol@email.com', '72348horasensteam');

INSERT INTO users (userID, userName, email, password) 
VALUES (5, 'Pixel', 'pixxel@email.com', 'bokunopixel');

INSERT INTO users (userID, userName, email, password) 
VALUES (6, 'Josue', 'bearboi@email.com', 'Fuecoco2209');

-- Category ID 1: Food
INSERT INTO categories (categoryID, cateName, cateType, description, tagColour) 
VALUES (1, 'Food', 'Expense', 'Daily meals and snacks', '#FF5733');

-- Category ID 2: Transport
INSERT INTO categories (categoryID, cateName, cateType, description, tagColour) 
VALUES (2, 'Transport', 'Expense', 'Bus, Uber, and gasoline expenses', '#3357FF');

-- 1. Register new transaction (Linked to userID 1 and categoryID 2)
INSERT INTO transactions (
    transactionID,
    amount,
    trans_date,
    currency,
    transType,
    userID,
    categoryID
) 
VALUES (
    1001,
    250.75,
    '2026-06-12',
    'USD',
    'Expense',
    1,
    2
);
--1.2
INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) 
VALUES (1002, 7000, '2002-05-13', 'ILS', 'Expense', 2, 2);
--1.3
INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) 
VALUES (1003, 76500, '2026-06-11', 'COP', 'Transfer', 3, 1);
--1.4
INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) 
VALUES (1004, 6070.76, '2016-08-08', 'KRW', 'Income', 4, 2);
--1.5
INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) 
VALUES (1005, 1038.30, '2006-09-07', 'RUB', 'Expense', 5, 2);
--1.6
INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) 
VALUES (1006, 1430000, '2026-05-10', 'COP', 'Income', 6, 1);

-- 2. Update a user's contact info
UPDATE users 
SET cellphone_number = '+57 3214567890' 
WHERE userID = 1;


-- DATA VISUALIZATION (Optional)
SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM transactions;
