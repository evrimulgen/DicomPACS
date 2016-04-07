DROP PACKAGE ASU.PKG_ACTION
/

--
-- PKG_ACTION  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_ACTION" 
  IS
   FUNCTION DO_INSERT_CLOB(PSTR IN VarChar2, PCOMMENT IN VarChar2) RETURN NUMBER;
   PROCEDURE DO_INSERT_TIME(pFK_ACTION in INTEGER, pFD_DATE in DATE, PFC_ITERATIVE IN VARCHAR);
   FUNCTION  DO_Select_Action(pFK_ID in INTEGER) RETURN VARCHAR2;
   FUNCTION DO_INSERT_ACTION(pFC_CAPTION in VARCHAR, pFC_CLOB in VARCHAR) RETURN INTEGER;
   PROCEDURE DO_UPDATE_ACTION(pFK_ID in INTEGER, pFC_CAPTION in VARCHAR);
   FUNCTION DO_SELECT_DATE_START(pFK_ACTIONID in NUMBER) RETURN VARCHAR2;
   FUNCTION DO_SELECT_DATE_END(pFK_ACTIONID in NUMBER) RETURN VARCHAR2;
   PROCEDURE DO_ADD_SOTR_TO_ACTION(PACTIONID IN NUMBER, PSOTRID IN NUMBER);
   PROCEDURE DO_ADD_SOTR_GROUP_TO_ACTION(PACTIONID IN NUMBER, pSOTRID IN NUMBER);
   PROCEDURE DO_DEL_SOTR_FROM_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER);
   PROCEDURE DO_DEL_ACTION(pActionID IN NUMBER);
   PROCEDURE DO_DEL_ACTION_TIME(pActionID IN NUMBER);
   FUNCTION CHECK_CURRENT_DATE(pActionID IN NUMBER, pSotrID IN NUMBER) RETURN DATE;
   PROCEDURE DO_READ_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER, pDate IN DATE);
   PROCEDURE DO_DEL_READ_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER, pFK_CLOBID IN NUMBER);
   FUNCTION DO_INSERT_SQL RETURN NUMBER;
   PROCEDURE DO_UPDATE_SQL(pFK_ID IN NUMBER, pFC_CAPTION IN VARCHAR2, pFC_SQL IN VARCHAR2);
   PROCEDURE DO_DEL_SQL(pFK_ID IN NUMBER);
   PROCEDURE DO_SET_DEFAULT_CLOB(pActionID IN NUMBER, pSotrID IN NUMBER);
   PROCEDURE DO_DEL_ITER(pActionID IN NUMBER, pSotrID IN NUMBER);
   procedure Do_SET_ACTION_TO_ALL(pActionID IN NUMBER);
   PROCEDURE INSERT_ACTION_TO_ALL(pCapSTR IN VARCHAR, pTextSTR IN VARCHAR, pDate IN DATE);
   FUNCTION DO_REPLACE_ACTION_WITH_TIME(pFK_ID IN NUMBER) RETURN NUMBER;
   FUNCTION DO_REPLACE_ACTION_WITHOUT_TIME(pFK_ID IN NUMBER) RETURN NUMBER;
END; -- PKG_ACTION
/

SHOW ERRORS;

