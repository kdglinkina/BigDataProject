CREATE TABLE kafka_linktable
(
  Day          Int64,
  TickTime      Double,
  Speed          Double
)
ENGINE=Kafka('localhost:9092', 'v12', 'kafka_group1', 'JSONEachRow');



CREATE TABLE kafka_storetable
(
  Day          Int64,
  TickTime      Double,
  Speed          Double
)
Engine=Memory

CREATE MATERIALIZED VIEW kafka_storetable_consumer
TO kafka_storetable
AS SELECT *
FROM kafka_linktable;


SELECT * from kafka_storetable
