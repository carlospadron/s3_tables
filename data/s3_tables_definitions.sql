--Use the following statement to create a table in your S3 Table bucket.
CREATE TABLE `os`.open_uprn (
    uprn BIGINT,
    x_coordinate FLOAT,
    y_coordinate FLOAT,
    latitude FLOAT,
    longitude FLOAT
)
PARTITIONED BY (uprn)
TBLPROPERTIES ('table_type' = 'iceberg')