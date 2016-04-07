DROP FUNCTION ASU.GET_SMID_KID_PROF
/

--
-- GET_SMID_KID_PROF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_SMID_KID_PROF
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_SMID_KID_PROF
/

--
-- GET_SMID_KID_PROF  (Synonym) 
--
--  Dependencies: 
--   GET_SMID_KID_PROF (Function)
--
CREATE PUBLIC SYNONYM GET_SMID_KID_PROF FOR ASU.GET_SMID_KID_PROF
/


GRANT EXECUTE ON ASU.GET_SMID_KID_PROF TO PUBLIC
/
