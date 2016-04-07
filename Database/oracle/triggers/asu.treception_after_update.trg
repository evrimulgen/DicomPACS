DROP TRIGGER ASU.TRECEPTION_AFTER_UPDATE
/

--
-- TRECEPTION_AFTER_UPDATE  (Trigger) 
--
--  Dependencies: 
--   TRECEPTION (Table)
--   PKG_NAZN (Package)
--
CREATE OR REPLACE TRIGGER ASU."TRECEPTION_AFTER_UPDATE" 
 AFTER
  UPDATE
 ON asu.treception
REFERENCING NEW AS NEW OLD AS OLD
BEGIN
  pkg_nazn.calc_status_on_nazn;
END;
/
SHOW ERRORS;

