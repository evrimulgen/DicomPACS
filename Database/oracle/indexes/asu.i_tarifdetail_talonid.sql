DROP INDEX ASU.I_TARIFDETAIL_TALONID
/

--
-- I_TARIFDETAIL_TALONID  (Index) 
--
CREATE INDEX ASU.I_TARIFDETAIL_TALONID ON ASU.TARIFDETAIL
(FK_TALONID)
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


