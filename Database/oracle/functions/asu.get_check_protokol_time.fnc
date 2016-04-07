DROP FUNCTION ASU.GET_CHECK_PROTOKOL_TIME
/

--
-- GET_CHECK_PROTOKOL_TIME  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CHECK_PROTOKOL_TIME
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 60;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CHECK_PROTOKOL_TIME
/

--
-- GET_CHECK_PROTOKOL_TIME  (Synonym) 
--
--  Dependencies: 
--   GET_CHECK_PROTOKOL_TIME (Function)
--
CREATE PUBLIC SYNONYM GET_CHECK_PROTOKOL_TIME FOR ASU.GET_CHECK_PROTOKOL_TIME
/


GRANT EXECUTE ON ASU.GET_CHECK_PROTOKOL_TIME TO PUBLIC
/
