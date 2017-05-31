create or replace 
procedure CT_Customer IS

v_tabcnt number;
begin
  select count(*) into v_tabcnt

  from all_tables
  where table_name = 'customer' and 
  owner = USER;
  
  if v_tabcnt = 0 then
    execute immediate '
                        create table customer
                        (
                              customer_id integer,
                             first_name  varchar(20),
                             credit decimal(10,2),
  
                            constraint customer_pk primary key(customer_id)
                          )';
  commit;
  end if;

  SELECT count(*) into v_tabcnt
  FROM   ALL_SEQUENCES
  WHERE  SEQUENCE_NAME = 'SEQ_Customer_id' and
         SEQUENCE_OWNER = USER;

  if v_tabcnt = 0 then
    EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_ACCOUNTNUMBER
                          START WITH 100000
                          INCREMENT BY 1
                          CACHE 20';
    COMMIT;
  end if;
  
end CT_Customer;