DROP INDEX ASU.I_EXCH_ARCH_TMP_KEY
/

--
-- I_EXCH_ARCH_TMP_KEY  (Index) 
--
CREATE INDEX ASU.I_EXCH_ARCH_TMP_KEY ON ASU.TEXCH_ARCH_TMP
(FK_SMO_ID, FK_OTDELID)
/

