SELECT F2_CHVNFE,* FROM SF2010 WHERE F2_DOC in ('021975','018509','034578') AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' 
SELECT F3_CHVNFE,* FROM SF3010 WHERE F3_NFISCAL ='036416' AND F3_SERIE = '9' AND D_E_L_E_T_ <> '*' 
SELECT F2_CHVNFE,* FROM SF2010 WHERE F2_MENNOTA = 'REMESSA PARA DEPOSITO TEMPORARIO' AND F2_CHVNFE = '' AND F2_EMISSAO >='20210101' AND D_E_L_E_T_ <> '*' 
SELECT * FROM SD2010 
WHERE D2_DOC ='036416' AND D2_SERIE = '9' AND D_E_L_E_T_ <> '*'  AND D2_COD IN ('030701487','081530035','030380082','051960012')

UPDATE SF2010 SET F2_CHVNFE = '35210338875597000190550090000185091692191725' WHERE F2_DOC = '018509' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210438875597000190550090000219751406215771' WHERE F2_DOC = '021975' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210338875597000190550090000161561162584737' WHERE F2_DOC = '016156' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210838875597000190550090000373921243975008' WHERE F2_DOC = '037392' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000350561364629105' WHERE F2_DOC = '035056' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000353601125813893' WHERE F2_DOC = '035360' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000355081559226468' WHERE F2_DOC = '035508' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000345781792587362' WHERE F2_DOC = '034578' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000346661018309844' WHERE F2_DOC = '034666' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000347041651175014' WHERE F2_DOC = '034704' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000345701507925596' WHERE F2_DOC = '034570' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000345921936910571' WHERE F2_DOC = '034592' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210138875597000190550090000100801396247163' WHERE F2_DOC = '010080' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''
UPDATE SF2010 SET F2_CHVNFE = '35210738875597000190550090000332521778711690' WHERE F2_DOC = '033252' AND F2_SERIE = '9' AND D_E_L_E_T_ <> '*' AND F2_CHVNFE = ''

SELECT F2_CHVNFE FROM SF2010 WHERE F2_DOC IN ('018509','021975','016156','037392','035056','035360','035508','034578','034666','034704','034570','034592','010080','033252') AND
F2_SERIE = '9' AND D_E_L_E_T_ <> '*'


SELECT F2_CHVNFE,* FROM SF2010 WHERE F2_DOC >='036000' AND F2_SERIE ='9' AND D_E_L_E_T_ <> '*'  AND F2_CHVNFE = ''

--UPDATE SF2010 SET F2_CHVNFE
SELECT * FROM SF1010 WHERE F1_SERIE = '122' AND F1_EMISSAO ='20210809' AND  F1_DOC = '05741132'

SELECT * FROM Z02010 WHERE Z02_IDWEB = '49841071'

SELECT * FROM SF6010 WHERE --GNRE 

SELECT ZZ1_MARCA, ZZ1_DESC, ZZ1_JANELA, ZZ1_LEADT, ZZ1_FRETE, ZZ1_OBSFRE, ZZ1_JTRANS FROM ZZ1010 WHERE ZZ1_COMP = '000703'
--UPDATE ZZ1010 SET ZZ1_COMP = '000703' WHERE ZZ1_COMP = '000684'
