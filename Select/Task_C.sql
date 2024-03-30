SELECT FIO

FROM Passgr, Company, Flight

WHERE Company.Company_ID = Flight.Company_ID AND
	Flight.Flight_ID = Passgr.Flight_ID AND
	Company.CompanyName = 'S7'

ORDER BY FIO 
/*
 The other wat to solve this task
*/

SELECT FIO

FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
JOIN Company
	ON Company.Company_ID = Flight.Company_ID AND Company.CompanyName = 'S7'

ORDER BY FIO 

/*
Each other way to solve this task
*/

SELECT FIO

FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
JOIN Company
	ON Company.Company_ID = Flight.Company_ID
WHERE Company.CompanyName = 'S7'

ORDER BY FIO 