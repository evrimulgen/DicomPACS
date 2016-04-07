DROP FUNCTION ASU.GET_PAC_ORG
/

--
-- GET_PAC_ORG  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TCOMPANY (Table)
--   TDOGOVOR (Table)
--   TSUBVID (Table)
--   TPISMA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_ORG" 
  ( pFK_KOD2 IN NUMBER,pFK_KOD IN NUMBER)
  RETURN  VARCHAR2 IS
  CURSOR cOrg IS SELECT TCOMPANY.FC_NAME FROM TCOMPANY,TDOGOVOR WHERE TDOGOVOR.FK_ID=pFK_KOD AND TDOGOVOR.FK_PREDID=TCOMPANY.FK_ID;
  CURSOR cOrg1 IS SELECT TCOMPANY.FC_NAME FROM TCOMPANY,TPISMA WHERE TPISMA.FK_ID=pFK_KOD AND TPISMA.FK_PREDID=TCOMPANY.FK_ID;
  CURSOR cOrg2 IS SELECT TSUBVID.FC_NAME FROM TSUBVID WHERE TSUBVID.FK_ID=pFK_KOD;
  cFC_ORG varchar2(70);
BEGIN
    if pFK_KOD2=1 then
     OPEN cOrg1;
     FETCH cOrg1 INTO cFC_ORG;
     CLOSE cOrg1;
    elsif pFK_KOD2=2 then
     OPEN cOrg;
     FETCH cOrg INTO cFC_ORG;
     CLOSE cOrg;
    elsif pFK_KOD2>3 then
     OPEN cOrg2;
     FETCH cOrg2 INTO cFC_ORG;
     CLOSE cOrg2;
    end if;
    RETURN cFC_ORG;
END;
/

SHOW ERRORS;

