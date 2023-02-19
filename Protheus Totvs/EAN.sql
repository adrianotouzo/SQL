--select B1_CODBOXI AS FORN, B1_CODGTIN AS NEW, B1_CODBAR AS OXI, * from SB1010 WHERE  B1_COD = '095030008' <> ' '  order by 1 desc

--select campo1, campo2, len(campo3) as tamanho from tabela

---UPDATE SB1010 SET B1_CODGTIN = B1_CODBOXI  
select len(B1_CODBOXI) AS FORN, B1_CODGTIN AS NEW, B1_CODBAR AS OXI, * from SB1010  ORDER BY 1
