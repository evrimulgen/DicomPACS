ALTER TABLE MED.TDOCS MODIFY ( FN_PRICE NUMBER );

ALTER TABLE MED.TDPC  MODIFY ( FN_NEWPRICE NUMBER,
                               FN_PRICE NUMBER,
                               FN_SUMM NUMBER);

ALTER TABLE MED.TINVOPIS 
 MODIFY (
  FN_PRICE NUMBER,
  FN_FACTKOL NUMBER,
  FN_FACTSUM NUMBER,
  FN_BUHKOL NUMBER,
  FN_BUHPRICE NUMBER
 );

 ALTER TABLE MED.TKART 
 MODIFY (
  FN_PRICE NUMBER,
  FN_KOL NUMBER
 );
 
 ALTER TABLE MED.TKARTCOMPOS 
 MODIFY (
  FN_AMOUNT NUMBER
 );
 
 ALTER TABLE MED.TMEDIC_ZAKUP 
 MODIFY (
  FN_PRICE NUMBER
 );
 
 quit;