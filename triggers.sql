-- TRIGGER

CREATE OR REPLACE FUNCTION check_transaction_amount()
RETURNS TRIGGER AS $$
BEGIN
    -- Validate that the amount is neither zero nor negative
    IF NEW.amount <= 0 THEN
        RAISE EXCEPTION 'The transaction amount must be greater than zero. Attempted value: %', NEW.amount;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_before_insert_transaction
BEFORE INSERT ON transaction
FOR EACH ROW
EXECUTE FUNCTION check_transaction_amount();
