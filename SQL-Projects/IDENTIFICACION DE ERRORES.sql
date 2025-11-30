SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio

FROM
  inlaid-computer-474219-u0.cars.car_info;

SELECT
  COUNT(*) AS num_of_rows_to_delete
FROM
  inlaid-computer-474219-u0.cars.car_info
WHERE
  compression_ratio = 70;

