ALTER TABLE ASU.TDISP_FILTER
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TDISP_FILTER CASCADE CONSTRAINTS
/

--
-- TDISP_FILTER  (Table) 
--
CREATE TABLE ASU.TDISP_FILTER
(
  FK_ID           NUMBER                        NOT NULL,
  FC_SQL          VARCHAR2(4000 BYTE),
  FC_NAME         VARCHAR2(255 BYTE),
  FC_DESCRIPTION  VARCHAR2(255 BYTE),
  FC_SYNONIM      VARCHAR2(100 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TDISP_FILTER IS '������� SQL-����� ��� ������� �-����� by Nakorjakov 11-May-2007'
/

COMMENT ON COLUMN ASU.TDISP_FILTER.FK_ID IS 'SEQUENCE=[SEQ_TDISP_FILTER]'
/

COMMENT ON COLUMN ASU.TDISP_FILTER.FC_SQL IS '��� SQL'
/

COMMENT ON COLUMN ASU.TDISP_FILTER.FC_NAME IS '�������� �������'
/

COMMENT ON COLUMN ASU.TDISP_FILTER.FC_DESCRIPTION IS '�������� �������'
/

COMMENT ON COLUMN ASU.TDISP_FILTER.FC_SYNONIM IS '���������� ������� �������'
/


--
-- TDISP_FILTER_BY_ID  (Index) 
--
--  Dependencies: 
--   TDISP_FILTER (Table)
--
CREATE UNIQUE INDEX ASU.TDISP_FILTER_BY_ID ON ASU.TDISP_FILTER
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TDISP_FILTER_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TDISP_FILTER (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDISP_FILTER_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tdisp_filter
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TDISP_FILTER.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TDISP_FILTER 
-- 
ALTER TABLE ASU.TDISP_FILTER ADD (
  CONSTRAINT TDISP_FILTER_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/
