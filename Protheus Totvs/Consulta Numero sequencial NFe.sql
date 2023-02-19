SELECT DISTINCT  F2_DOC, F2_SERIE, F2_EMISSAO,  A1_NOME, F2_VALBRUT  
	FROM SF2010, SA1010
	WHERE A1_COD = F2_CLIENTE AND F2_SERIE = '9' AND F2_EMISSAO >= '20200101' 
	GROUP BY F2_DOC, F2_SERIE, F2_EMISSAO,  A1_NOME, F2_VALBRUT
ORDER BY F2_DOC


SELECT DISTINCT F1_DOC, F1_SERIE, F1_EMISSAO,  A1_NOME, F1_VALBRUT  
	FROM SF1010, SA1010 
	WHERE A1_COD = F1_FORNECE AND F1_FILIAL = '01' AND F1_SERIE = '9' AND F1_EMISSAO >= '20200101'  
	GROUP BY F1_DOC, F1_SERIE, F1_EMISSAO,  A1_NOME, F1_VALBRUT
	order by F1_DOC

SELECT F2_DOC, F2_SERIE, F2_EMISSAO, F2_VALBRUT 
	FROM SF2010
	INNER JOIN SF1010 ON F2_DOC = F1_DOC AND F2_SERIE = F1_SERIE AND F2_EMISSAO =  F1_EMISSAO AND  F2_VALBRUT = F1_VALBRUT 
	WHERE F2_SERIE = '9' OR F1_SERIE = '9' AND F2_EMISSAO > '20200801' 

SELECT * FROM SF1010 WHERE F1_EMISSAO > '20200801' 



SELECT * FROM SA1010
Select * from SF2010 WHERE F2_SERIE = '9' AND F2_EMISSAO > '20200801' ORDER BY F2_DOC, F2_EMISSAO

Select * from SF2010 WHERE F2_DOC = '003471'

select F2_DOC, F2_SERIE, F2_EMISSAO,  A1_NOME, F2_VALBRUT  
from SF2010, SA1010
Where A1_COD = F2_CLIENTE AND F2_EMISSAO > '20200801' ORDER BY F2_DOC