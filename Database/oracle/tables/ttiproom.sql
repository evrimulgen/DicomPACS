ALTER TABLE ASU.TTIPROOM
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TTIPROOM CASCADE CONSTRAINTS
/

--
-- TTIPROOM  (Table) 
--
CREATE TABLE ASU.TTIPROOM
(
  FK_ID       NUMBER(15),
  FC_VID      VARCHAR2(150 BYTE),
  FL_DEFAULT  NUMBER(1)                         DEFAULT 0,
  FN_ORDER    NUMBER(15),
  FC_SYNONIM  VARCHAR2(255 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          576K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TTIPROOM IS '���������� ����� ����� by TimurLan'
/

COMMENT ON COLUMN ASU.TTIPROOM.FK_ID IS 'SEQUENCE=[SEQ_TTIPROOM]'
/

COMMENT ON COLUMN ASU.TTIPROOM.FC_VID IS '��������'
/

COMMENT ON COLUMN ASU.TTIPROOM.FL_DEFAULT IS '����. ��-���������'
/

COMMENT ON COLUMN ASU.TTIPROOM.FN_ORDER IS '�������'
/

COMMENT ON COLUMN ASU.TTIPROOM.FC_SYNONIM IS '������� by Spasskiy S.N.'
/


--
-- TTIPROOM_BY_FK_ID  (Index) 
--
--  Dependencies: 
--   TTIPROOM (Table)
--
CREATE UNIQUE INDEX ASU.TTIPROOM_BY_FK_ID ON ASU.TTIPROOM
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TTIPROOM_LOG  (Trigger) 
--
--  Dependencies: 
--   TTIPROOM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTIPROOM_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TTIPROOM  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TTIPROOM', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TTIPROOM', 'FC_VID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fc_vid), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TTIPROOM', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TTIPROOM', 'FC_VID', 'DELETE', PKG_LOG.GET_VALUE(:old.FC_VID), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TTIPROOM', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FC_VID') AND PKG_LOG.GET_VALUE(:old.FC_VID) <> PKG_LOG.GET_VALUE(:new.FC_VID) then
      PKG_LOG.Do_log('TTIPROOM', 'FC_VID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_VID), PKG_LOG.GET_VALUE(:new.FC_VID), :old.fk_id);
    end if;
  end if;
  null;
END TTIPROOM_LOG;
/
SHOW ERRORS;


--
-- TTIPROOM_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TTIPROOM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTIPROOM_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TTIPROOM REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TTIPROOM.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TTIPROOM_AFTER_UPDATE  (Trigger) 
--
--  Dependencies: 
--   TTIPROOM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTIPROOM_AFTER_UPDATE" 
AFTER UPDATE
ON ASU.TTIPROOM REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
--This is trigger for manual using only. It must be disabled!!!!
  UPDATE TSRTIPROOM SET FK_VIDID = :NEW.FK_ID where FK_VIDID = :OLD.FK_ID;
End;
/
SHOW ERRORS;


DROP SYNONYM BUH.TTIPROOM
/

--
-- TTIPROOM  (Synonym) 
--
--  Dependencies: 
--   TTIPROOM (Table)
--
CREATE SYNONYM BUH.TTIPROOM FOR ASU.TTIPROOM
/


-- 
-- Non Foreign Key Constraints for Table TTIPROOM 
-- 
ALTER TABLE ASU.TTIPROOM ADD (
  CONSTRAINT PK_TTIPROOM
 PRIMARY KEY
 (FK_ID))
/
