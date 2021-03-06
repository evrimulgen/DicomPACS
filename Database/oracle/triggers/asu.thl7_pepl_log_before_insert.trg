DROP TRIGGER ASU.THL7_PEPL_LOG_BEFORE_INSERT
/

--
-- THL7_PEPL_LOG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_THL7_PEPL_LOG (Sequence)
--   THL7_PEPL_LOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."THL7_PEPL_LOG_BEFORE_INSERT" 
 BEFORE INSERT ON ASU.THL7_PEPL_LOG  REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 SELECT SEQ_THL7_PEPL_LOG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


