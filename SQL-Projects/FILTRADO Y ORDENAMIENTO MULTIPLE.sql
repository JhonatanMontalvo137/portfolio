SELECT
  *
FROM
bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
WHERE
  County_of_Residence = 'Erie County, NY' 
  OR County_of_Residence = 'Niagara County, NY'
  OR County_of_Residence = 'Chautauqua County, NY'
  AND EXTRACT(YEAR FROM Year) BETWEEN 2016 AND 2018 ---EXTRAER SOLO AÑO CON EXTRACT
ORDER BY
  Year