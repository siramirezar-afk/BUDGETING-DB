-- Primer dato (Luna referencia 😮)
INSERT INTO users (userID, userName, email, password) 
VALUES (1, 'Luna', 'luna@email.com', 'difficultpassword123');

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

-- 2. Update a user's contact info
UPDATE users 
SET cellphone_number = '+57 3214567890' 
WHERE userID = 1;


-- DATA VISUALIZATION (Optional)
SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM transactions;
