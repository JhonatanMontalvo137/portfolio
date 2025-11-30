SELECT
    AVG(temperature)
FROM
    inlaid-computer-474219-u0.demos.nyc_weather  
WHERE
    date BETWEEN '2020-06-01' AND '2020-06-30'