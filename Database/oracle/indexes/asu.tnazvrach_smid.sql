DROP INDEX ASU.TNAZVRACH_SMID
/

--
-- TNAZVRACH_SMID  (Index) 
--
CREATE INDEX ASU.TNAZVRACH_SMID ON ASU.TNAZVRACH_OLD
(FK_SMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

