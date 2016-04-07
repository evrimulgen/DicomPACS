DROP FUNCTION ASU.GET_MAINDIAG
/

--
-- GET_MAINDIAG  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_MAINDIAG" 
return number
is 
begin
  return 319032;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_MAINDIAG TO PUBLIC
/
