SELECT dbschemas.[name] as 'Schema',
dbtables.[name] as 'Table',
dbindexes.[name] as 'Index',
indexstats.avg_fragmentation_in_percent,
indexstats.page_count
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, NULL) AS indexstats
INNER JOIN sys.tables dbtables on dbtables.[object_id] = indexstats.[object_id]
INNER JOIN sys.schemas dbschemas on dbtables.[schema_id] = dbschemas.[schema_id]
INNER JOIN sys.indexes AS dbindexes ON dbindexes.[object_id] = indexstats.[object_id]
AND indexstats.index_id = dbindexes.index_id
WHERE indexstats.database_id = DB_ID()
ORDER BY indexstats.avg_fragmentation_in_percent desc

--Última atualização de estatisticas:

SELECT schema_name(schema_id) AS NomeSchema
,object_name(o.object_id) AS NomeTabela
,i.NAME AS NomeIndex
,index_id IndexId
,o.type Tipo
,STATS_DATE(o.object_id, index_id) AS DataEstatistica
FROM sys.indexes i
JOIN sys.objects o ON i.object_id = o.object_id
WHERE o.object_id > 100
AND index_id > 0
AND is_ms_shipped = 0;
