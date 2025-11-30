SELECT name, count 
FROM inlaid-computer-474219-u0.babynames.names_2014
WHERE gender = 'M'
ORDER BY count DESC
LIMIT 5