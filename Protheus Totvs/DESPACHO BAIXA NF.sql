--BAixa de despacho de notas fiscais.

SELECT F2_DATAS,F2_CARRO,* FROM SF2010 WHERE 
F2_CARRO <> '' AND 
--UPDATE SF2010 SET F2_DATAS='20210730',F2_CARRO='032' WHERE
F2_DOC IN ('360013','360013','360459','360883','361172','361433')