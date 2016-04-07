DROP FUNCTION ASU.GET_NAZLECH_LIST
/

--
-- GET_NAZLECH_LIST  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_OUTPUT (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TNAZLECH (Table)
--   TSMID (Table)
--   GET_NAZ_RECOMENDED (Function)
--   GET_NEVIP (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_NAZLECH_LIST" (PFK_PACID IN NUMBER)
  RETURN VARCHAR2 IS
  S VARCHAR2(32000);
BEGIN
  S := '';
  FOR C IN (SELECT TS.FC_NAME FC_NAME
              FROM TNAZLECH TN, TSMID TS
             WHERE TN.FK_NAZSOSID IN (GET_NAZ_RECOMENDED, GET_NEVIP)
               AND TN.FK_PACID = PFK_PACID
               AND TS.FK_ID = TN.FK_SMID) LOOP
    DBMS_OUTPUT.PUT_LINE(C.FC_NAME);
    S := C.FC_NAME || ', ' || S;
  END LOOP;
  RETURN RTRIM(S, ', ');
END;
/

SHOW ERRORS;

