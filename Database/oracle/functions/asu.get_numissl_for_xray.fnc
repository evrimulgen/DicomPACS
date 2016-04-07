DROP FUNCTION ASU.GET_NUMISSL_FOR_XRAY
/

--
-- GET_NUMISSL_FOR_XRAY  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TNAZIS (Table)
--   TIB (Table)
--   TSMID (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_NUMISSL_FOR_XRAY" (PFK_NAZID IN NUMBER)
RETURN VARCHAR2 IS
  CURSOR C1 IS SELECT MAX(FC_CHAR) FROM TIB WHERE FK_PACID = PFK_NAZID AND FK_SMID IN (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = 'NUMBER_ISSL');
  CURSOR C2 IS SELECT FC_TYPE FROM TNAZIS WHERE FK_ID = PFK_NAZID;
  sNUM1 VARCHAR2(1000);
  sNUM2 VARCHAR2(1000);
BEGIN 
  OPEN C1;
  FETCH C1 INTO sNUM1;
  CLOSE C1;
  IF sNUM1 IS NULL THEN
    OPEN C2;
    FETCH C2 INTO sNUM2;
    CLOSE C2;
    RETURN sNUM2;
  ELSE
    RETURN sNUM1;  
  END IF;    
END;
/

SHOW ERRORS;

