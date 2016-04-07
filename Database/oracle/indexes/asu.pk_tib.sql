DROP INDEX ASU.PK_TIB
/

--
-- PK_TIB  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIB ON ASU.TIB
(FK_ID)
NOLOGGING
TABLESPACE USR
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

