CREATE TABLE `os`.open_uprn (
  `uprn` bigint,
  `x_coordinate` float,
  `y_coordinate` float,
  `latitude` float,
  `longitude` float
)
PARTITIONED BY (uprn)
TBLPROPERTIES ('table_type' = 'iceberg')