DROP FUNCTION ASU.GET_SOTRNAME_BIO
/

--
-- GET_SOTRNAME_BIO  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSOTR (Synonym)
--   TSMID (Table)
--   GET_ANALBIOHIM (Function)
--   VARCHARISNULL (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_SOTRNAME_BIO" (pFK_SOTRID IN BINARY_INTEGER, pSmid IN NUMBER)
  RETURN VARCHAR2 IS
  pSmidID NUMBER;
  Result VARCHAR2(32767);
  CURSOR c2 IS SELECT FK_OWNER FROM ASU.TSMID WHERE FK_ID = pSMID;
  CURSOR c IS
    SELECT FC_FAM || ' ' || DECODE(VarcharIsNUll(FC_NAME), 1, '', SUBSTR(FC_NAME, 0, 1) || '. ' || DECODE(VarcharIsNUll(FC_OTCH), 1, '', SUBSTR(FC_OTCH, 0, 1) || '. '))
      FROM TSOTR
     WHERE FK_ID = pFK_SOTRID;
BEGIN
  OPEN c2;
  FETCH c2 INTO pSmidID;
  CLOSE c2;

  IF pSmidID = GET_ANALBIOHIM THEN
    RETURN null;
  END IF;

  open c;
  fetch c into Result;
  close c;
  RETURN(TRIM(' ' FROM Result));
END;
/

SHOW ERRORS;

