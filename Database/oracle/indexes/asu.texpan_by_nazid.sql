DROP INDEX ASU.TEXPAN_BY_NAZID
/

--
-- TEXPAN_BY_NAZID  (Index) 
--
CREATE INDEX ASU.TEXPAN_BY_NAZID ON ASU.TEXPAN
(FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          38144K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

