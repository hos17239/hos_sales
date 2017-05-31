create or replace 
PROCEDURE
PROC_NEW_Customer(customer_id         out    NUMBER,
                      FIRST_NAME      in     VARCHAR2,
                      credit          out     NUMBER
                                                    ) IS
BEGIN
  SELECT seq_customer_id.nextval INTO customer_id
  FROM   dual;
  
  

  IF (credit  is null )THEN
    SELECT 100 INTO credit
    FROM   dual;
  END IF;
  
  INSERT INTO customer VALUES (customer_id,
       first_name, credit);
END PROC_NEW_customer;