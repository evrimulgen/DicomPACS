DROP TABLE ASU.TCARDSTATUS CASCADE CONSTRAINTS
/

--
-- TCARDSTATUS  (Table) 
--
CREATE TABLE ASU.TCARDSTATUS
(
  FK_ID     NUMBER,
  FK_PACID  NUMBER,
  FD_BEGIN  DATE,
  FD_END    DATE,
  FK_SMID   NUMBER
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

COMMENT ON TABLE ASU.TCARDSTATUS IS '������� ���� ��� ������������  Author:Marriage'
/

