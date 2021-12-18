CREATE DATABASE db

CREATE TABLE db.table (TickTime DOUBLE, Speed DOUBLE, Day INT) 
ENGINE=Memory

SELECT TickTime, Day, Speed FROM db.table
WHERE (Day=1 and Speed > 3905923) or (Day=2 and Speed > 5446291) or (Day=7 and Speed >= 2788535)
ORDER BY Day Desc

#1   3.905923e+06
#2   5.446291e+06
#7   2.788536e+06

