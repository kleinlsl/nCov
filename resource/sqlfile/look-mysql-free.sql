SELECT
CONCAT(TRUNCATE(SUM(data_length)/1024/1024,2),'MB') AS data_size,
CONCAT(TRUNCATE(SUM(max_data_length)/1024/1024,2),'MB') AS max_data_size,
CONCAT(TRUNCATE(SUM(data_free)/1024/1024,2),'MB') AS data_free,
CONCAT(TRUNCATE(SUM(index_length)/1024/1024,2),'MB') AS index_size,
TABLE_SCHEMA
FROM information_schema.tables
group by TABLE_SCHEMA;