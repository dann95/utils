SELECT count(*) AS duplicate_count
FROM (
 SELECT name FROM tbl
 GROUP BY name HAVING COUNT(name) > 1
) AS t
