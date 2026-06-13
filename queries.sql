-- Inserción de usuarios 
INSERT INTO users (userID, userName, email, password) VALUES 
(1, 'Luna', 'luna@email.com', 'difficultpassword123'),
(2, 'Jesus', 'yisus@email.com', 'jesusyisus'),
(3, 'Silvana', 'siramirez@email.com', 'digitalpomni'),
(4, 'Maycol', 'geikol@email.com', '72348horasensteam'),
(5, 'Pixel', 'pixxel@email.com', 'bokunopixel'),
(6, 'Josue', 'bearboi@email.com', 'Fuecoco2209');

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

INSERT INTO transactions (transactionID, amount, trans_date, currency, transType, userID, categoryID) VALUES 
(1001, 250.75, '2026-06-12', 'USD', 'Expense', 1, 2),
(1002, 7000.00, '2002-05-13', 'ILS', 'Expense', 2, 2),
(1003, 76500.00, '2026-06-11', 'COP', 'Transfer', 3, 1),
(1004, 6070.76, '2016-08-08', 'KRW', 'Income', 4, 2),
(1005, 1038.30, '2006-09-07', 'RUB', 'Expense', 5, 2),
(1006, 1430000.00, '2026-05-10', 'COP', 'Income', 6, 1);

-- INSERT BUDGETS 

INSERT INTO budgets (budgetID, maxAmount, startDate, endDate, userID, categoryID) VALUES 
(1, 300.00, '2026-06-01', '2026-06-30', 1, 1),
(2, 5000.00, '2026-05-01', '2026-05-31', 6, 2),
(3, 100000.00, '2026-06-01', '2026-06-30', 3, 1),
(4, 50000.00, '2016-08-01', '2016-08-31', 4, 2),
(5, 2000.00, '2006-09-01', '2006-09-30', 5, 1);

-- INSERT REPORTS 
INSERT INTO reports (reportID, issuanceDate, period, report_data, userID) VALUES 
(1, '2026-06-30', '2026-06', 'Monthly Overview - Total Income: 0.00 USD, Total Expenses: 250.75 USD. Status: Within Budget.', 1),
(2, '2002-05-31', '2002-05', 'Archived Report - Total Expenses: 7000.00 ILS. Category: Transport.', 2),
(3, '2026-06-30', '2026-06', 'Monthly Overview - Total Transfers: 76500.00 COP. Status: Balanced.', 3),
(4, '2016-08-31', '2016-08', 'Archived Report - Total Income: 6070.76 KRW. Steam Wallet Sync: Successful.', 4),
(5, '2006-09-30', '2006-09', 'Archived Report - Total Expenses: 1038.30 RUB. Status: Maintained.', 5),
(6, '2026-05-31', '2026-05', 'Monthly Overview - Total Income: 1430000.00 COP. Status: High Savings Rate.', 6);

-- 2. Update a user's contact info
UPDATE users 
SET cellphone_number = '+57 3214567890' 
WHERE userID = 1;


-- DATA VISUALIZATION (Optional)
SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM transactions;
