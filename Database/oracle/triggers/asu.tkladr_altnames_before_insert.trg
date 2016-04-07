DROP TRIGGER ASU.TKLADR_ALTNAMES_BEFORE_INSERT
/

--
-- TKLADR_ALTNAMES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKLADR_ALTNAMES (Sequence)
--   TKLADR_ALTNAMES (Table)
--
CREATE OR REPLACE TRIGGER ASU.tkladr_altnames_before_insert
 BEFORE
  INSERT
 ON ASU.TKLADR_ALTNAMES REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_TKLADR_ALTNAMES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

