create or replace 
trigger TRG_Customer
BEFORE INSERT OR UPDATE
ON Customer
REFERENCING NEW as newROW OLD AS oldROW
FOR EACH ROW
DECLARE
BEGIN

  IF (:newROW.credit < 0 ) THEN
    raise_application_error (-20999, 'The credit muss be 0 0r above ');
  END IF;
 
END TRG_customer;