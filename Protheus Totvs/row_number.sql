 SELECT
   ROW_NUMBER() OVER (ORDER BY F2_DOC) SEQ,
   SF2.F2_DOC
 FROM
   SF2010 SF2
   WHERE F2_SERIE = '9' AND F2_EMISSAO >'2020%'AND SF2.D_E_L_E_T_ ='' 

 SELECT
   ROW_NUMBER() OVER (ORDER BY F1_DOC) SEQ,
   SF1.F1_DOC
 FROM
   SF1010 SF1
   WHERE F1_SERIE = '9' AND F1_EMISSAO >'2020%' AND SF1.D_E_L_E_T_ =''

