DROP INDEX ASU.TSMID_BY_ORDER
/

--
-- TSMID_BY_ORDER  (Index) 
--
CREATE INDEX ASU.TSMID_BY_ORDER ON ASU.TSMID
(FN_ORDER)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

