USE restaurant;

SELECT SUM(bill_total) AS TotalIncome
FROM restbill;

SELECT SUM(bill_total) AS FebruaryIncome
FROM restbill
WHERE bill_date BETWEEN 160201 AND 160229;

SELECT AVG(bill_total) AS AverageBillAmount
FROM restbill
WHERE table_no = 2;

SELECT MIN(no_of_seats) AS MinimumSeats, 
       MAX(no_of_seats) AS MaximumSeats, 
       AVG(no_of_seats) AS AverageSeats
FROM restrest_table
WHERE room = 'Blue';

SELECT COUNT(DISTINCT table_no) AS DistinctTablesServed
FROM restbill
WHERE waiter_no IN ('004', '002');v
