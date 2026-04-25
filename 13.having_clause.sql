-- HAVING CLAUSE
-- similar to where i.e. applies some conditions on rows
-- but it is used when we want to apply any condition after grouping
-- WHERE is used for the table ,Having is used for groups
-- Grouping is necessary for HAVING

SELECT age , max(followers)  FROM user
GROUP BY age 
HAVING max(followers) >200;
