CREATE EXTERNAL TABLE address_partitioned (
    address_id INT,
    user_id INT,
    address_line1 STRING,
    address_line2 STRING,
    district STRING,
    landmark STRING,
    address_type STRING,
    is_default STRING
)
PARTITIONED BY (city STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hive/warehouse/address_partitioned';

ALTER TABLE address_partitioned ADD PARTITION (city='Amman') LOCATION '/user/hive/warehouse/address_partitioned/city=Amman';
ALTER TABLE address_partitioned ADD PARTITION (city='Irbid') LOCATION '/user/hive/warehouse/address_partitioned/city=Irbid';
ALTER TABLE address_partitioned ADD PARTITION (city='Zarqa') LOCATION '/user/hive/warehouse/address_partitioned/city=Zarqa';
