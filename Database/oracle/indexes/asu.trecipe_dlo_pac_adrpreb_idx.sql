DROP INDEX ASU.TRECIPE_DLO_PAC_ADRPREB_IDX
/

--
-- TRECIPE_DLO_PAC_ADRPREB_IDX  (Index) 
--
CREATE INDEX ASU.TRECIPE_DLO_PAC_ADRPREB_IDX ON ASU.TRECIPE_DLO_PAC_ADRPREB
(FK_REGPACID, FK_LPU)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


