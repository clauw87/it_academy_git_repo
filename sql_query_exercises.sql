 /*EX1*/
SELECT COUNT(flightID) FROM Flights;


 /*EX2*/
SELECT Origin, AVG(DepDelay), AVG(ArrDelay) FROM Flights group by Origin;

SELECT flightID,Origin, colMonth,colYear FROM Flights;

 /*EX3*/
SELECT Origin,colYear,colMonth,AVG(ArrDelay) 
FROM Flights 
GROUP BY Origin,colYear,colMonth
ORDER BY Origin ASC,colYear ASC,colMonth ASC;

 /*EX4*/
SELECT City,colYear,colMonth,AVG(ArrDelay) 
FROM Flights
LEFT JOIN 
USAirports
ON Flights.Origin=USAirports.IATA
GROUP BY Origin,colYear,colMonth
ORDER BY Origin ASC,colYear ASC,colMonth ASC;

 /*EX5*/
SELECT Description, COUNT(Cancelled)
FROM Flights
LEFT JOIN 
Carriers
ON Flights.UniqueCarrier=Carriers.CarrierCode
WHERE Cancelled =1
GROUP BY CarrierCode
ORDER BY COUNT(Cancelled) DESC;

  /*EX6*/
SELECT TailNum, SUM(Distance) 
FROM Flights 
WHERE TailNum!='NA'
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;

  /*EX7*/
SELECT Description, AVG(ArrDelay)
FROM Flights 
LEFT JOIN Carriers
ON Flights.UniqueCarrier=Carriers.CarrierCode
GROUP BY CarrierCode
HAVING AVG(ArrDelay)>10
ORDER BY AVG(ArrDelay) DESC
;