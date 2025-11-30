SELECT
  *
FROM
  bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
ORDER BY
  Births ASC --Place the ASC or DESC specifier directly after the column name separated by a space (no other punctuation)
LIMIT
  10