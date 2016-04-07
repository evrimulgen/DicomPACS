DROP INDEX ASU.IX_TANONIM_PEOPLES_BY_FAM
/

--
-- IX_TANONIM_PEOPLES_BY_FAM  (Index) 
--
CREATE INDEX ASU.IX_TANONIM_PEOPLES_BY_FAM ON ASU.TANONYM_PEOPLE
(FC_FAM)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          5888K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

