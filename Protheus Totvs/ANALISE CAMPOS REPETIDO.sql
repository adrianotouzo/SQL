select ZZ8_PROD, count(*) as NPROD FROM ZZ8010 group by ZZ8_PROD having count(*) > 1
UNION ALL	
select B1_COD, count(*) as NPROD FROM SB1010 group by B1_COD having count(*) > 1
UNION ALL
select B2_COD, count(*) as NPROD FROM SB2010 group by B2_COD having count(*) > 1