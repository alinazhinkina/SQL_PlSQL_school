OPTIONS (SKIP=1)
LOAD DATA
CHARACTERSET UTF8
INFILE 'pr_cred.csv'
BADFILE 'pr_cred.bad'
DISCARDFILE 'pr_cred.dsc'
TRUNCATE
INTO TABLE creditor.pr_cred
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
( 
  ID,
  NUM_DOG,
  SUMMA_DOG "TO_NUMBER(REPLACE(:SUMMA_DOG, ',','.'))",
  DATE_BEGIN DATE "dd.mm.yyyy",
  DATE_END DATE "dd.mm.yyyy",
  ID_CLIENT,
  COLLECT_PLAN,
  COLLECT_FACT
)