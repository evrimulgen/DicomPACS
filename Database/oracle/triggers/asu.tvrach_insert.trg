DROP TRIGGER ASU.TVRACH_INSERT
/

--
-- TVRACH_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TVRACH (Sequence)
--   TVRACH (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVRACH_INSERT" 
  BEFORE INSERT ON ASU.TVRACH   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  SELECT SEQ_TVRACH.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  :NEW.FD_INS := TRUNC(SYSDATE);
End;
/
SHOW ERRORS;

