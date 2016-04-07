DROP TRIGGER ASU.TADRESS_A_DEL
/

--
-- TADRESS_A_DEL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TADRESS (Table)
--   TEXP_TADRESS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TADRESS_A_DEL"
 AFTER DELETE
 ON ASU.TADRESS  REFERENCING OLD AS OLD
 FOR EACH ROW
DECLARE
 vCnt     NUMBER;
BEGIN
 SELECT COALESCE(MAX(FK_ID), -1979) INTO vCnt FROM ASU.TEXP_TADRESS WHERE FK_ADRID = :OLD.FK_ID;

 IF vCnt <> -1979
 THEN
  UPDATE ASU.TEXP_TADRESS
  SET FD_LAST_UPDATE = SYSDATE, FP_DEL = 1
  WHERE FK_ADRID = :NEW.FK_ID;
 END IF;
End;
/
SHOW ERRORS;

