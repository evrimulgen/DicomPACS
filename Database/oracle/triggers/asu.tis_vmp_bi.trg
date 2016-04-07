DROP TRIGGER ASU.TIS_VMP_BI
/

--
-- TIS_VMP_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_VMP (Sequence)
--   TIS_VMP (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_VMP_BI
  BEFORE INSERT
  ON ASU.TIS_VMP   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_VMP.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;

