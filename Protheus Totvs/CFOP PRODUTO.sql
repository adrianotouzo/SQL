-- SAIDAS NOTAS FISCAIS

select * from SD2010 where D2_SERIE = '9' 
--AND D2_CF = '5405'
AND  D2_EMISSAO BETWEEN '20210401' AND '20210430' and D2_EST = 'SP'

--update SD2010 SET D2_CF = '5106' where D2_SERIE = '9' AND D2_CF = '5405' AND D2_EMISSAO BETWEEN '20210301' AND '20210331'

select * from SF2010 where F2_DOC = '014875' and F2_SERIE = '9'

-- ENTRADAS  NOTAS FISCAIS

select * from SD1010 where D1_TES = '040' order by D1_EMISSAO desc