DROP FUNCTION ASU.GET_CHECK_VIG_TALON
/

--
-- GET_CHECK_VIG_TALON  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CHECK_VIG_TALON
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CHECK_VIG_TALON
/

--
-- GET_CHECK_VIG_TALON  (Synonym) 
--
--  Dependencies: 
--   GET_CHECK_VIG_TALON (Function)
--
CREATE PUBLIC SYNONYM GET_CHECK_VIG_TALON FOR ASU.GET_CHECK_VIG_TALON
/


GRANT EXECUTE ON ASU.GET_CHECK_VIG_TALON TO PUBLIC
/

