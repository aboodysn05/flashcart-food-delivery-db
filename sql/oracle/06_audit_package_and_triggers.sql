CREATE OR REPLACE PACKAGE audit_package AS
    PROCEDURE log_transaction(
        p_user_id IN NUMBER, 
        p_action  IN VARCHAR2, 
        p_table   IN VARCHAR2
    );

    PROCEDURE log_error(
        p_user_id  IN NUMBER, 
        p_err_code IN NUMBER, 
        p_err_msg  IN VARCHAR2, 
        p_unit     IN VARCHAR2
    );
END audit_package;
/

CREATE OR REPLACE PACKAGE BODY audit_package AS

    PROCEDURE log_transaction(
        p_user_id IN NUMBER, 
        p_action  IN VARCHAR2, 
        p_table   IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO AuditLog (UserID, "TIMESTAMP", ActionType, TableName)
        VALUES (p_user_id, SYSDATE, UPPER(p_action), UPPER(p_table));
    END log_transaction;

    PROCEDURE log_error(
        p_user_id  IN NUMBER, 
        p_err_code IN NUMBER, 
        p_err_msg  IN VARCHAR2, 
        p_unit     IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO ErrorLog (UserID, "TIMESTAMP", ErrorCode, ErrorMessage, UnitName)
        VALUES (p_user_id, SYSDATE, p_err_code, p_err_msg, UPPER(p_unit));
    END log_error;

END audit_package;
/

-- Trigger 1 --
CREATE OR REPLACE TRIGGER tr_customer_audit
AFTER INSERT OR UPDATE OR DELETE ON CUSTOMER
FOR EACH ROW
DECLARE
    v_action VARCHAR2(10);
    v_uid    NUMBER;
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT'; 
        v_uid    := :new.CustomerID;
    ELSIF UPDATING THEN
        v_action := 'UPDATE'; 
        v_uid    := :new.CustomerID;
    ELSIF DELETING THEN
        v_action := 'DELETE'; 
        v_uid    := :old.CustomerID;
    END IF;
    
    audit_package.log_transaction(v_uid, v_action, 'CUSTOMER');
EXCEPTION
    WHEN OTHERS THEN
        audit_package.log_error(v_uid, SQLCODE, SQLERRM, 'TR_CUSTOMER_AUDIT');
END;
/

-- Trigger 2 --
CREATE OR REPLACE TRIGGER tr_driver_audit
AFTER INSERT OR UPDATE OR DELETE ON DRIVER
FOR EACH ROW
DECLARE
    v_action VARCHAR2(10);
    v_uid    NUMBER;
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT'; 
        v_uid    := :new.DriverID;
    ELSIF UPDATING THEN
        v_action := 'UPDATE'; 
        v_uid    := :new.DriverID;
    ELSIF DELETING THEN
        v_action := 'DELETE'; 
        v_uid    := :old.DriverID;
    END IF;
    
    audit_package.log_transaction(v_uid, v_action, 'DRIVER');
EXCEPTION
    WHEN OTHERS THEN
        audit_package.log_error(v_uid, SQLCODE, SQLERRM, 'TR_DRIVER_AUDIT');
END;
/

--- Testing --
SELECT CustomerID FROM CUSTOMER FETCH FIRST 10 ROWS ONLY;
UPDATE CUSTOMER SET CustomerID = 5 WHERE CustomerID = 5;
SELECT * FROM AuditLog;

--- Testing --
SELECT DriverID FROM DRIVER FETCH FIRST 10 ROWS ONLY;
UPDATE DRIVER SET DriverID = 17 WHERE DriverID = 17;
SELECT * FROM AuditLog;


