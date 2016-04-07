DROP INDEX ASU.TSLINFO_OWNER
/

--
-- TSLINFO_OWNER  (Index) 
--
CREATE INDEX ASU.TSLINFO_OWNER ON ASU.TSLINFO
(FK_OWNERID)
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

