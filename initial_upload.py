from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder \
    .appName("WriteToS3") \
    .getOrCreate()

# Example DataFrame
data = [("Alice", 34), ("Bob", 45), ("Cathy", 29)]
columns = ["Name", "Age"]
df = spark.createDataFrame(data, columns)

# Write DataFrame to S3 in Parquet format
df.write \
    .format("parquet") \
    .mode("overwrite") \
    .save("s3a://your-bucket-name/path/to/table/")

# Note: Ensure you have configured AWS credentials and Hadoop S3 settings.