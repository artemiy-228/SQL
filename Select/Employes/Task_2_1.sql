SELECT AVG(DATEDIFF(day, Birth, GETDATE())) AS Days
FROM Employee
/*
The other solution
*/
SELECT SUM(DATEDIFF(day, Birth, GETDATE())) / COUNT(DATEDIFF(day, Birth, GETDATE()))   AS Days
FROM Employee


