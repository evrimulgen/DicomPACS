DROP INDEX ASU.I_TEXCH_DBF_ERR_CODE
/

--
-- I_TEXCH_DBF_ERR_CODE  (Index) 
--
CREATE INDEX ASU.I_TEXCH_DBF_ERR_CODE ON ASU.TEXCH_DBF_ERR
(FC_CODE)
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

