SELECT bill_total AS TotalAmount, bill_date AS DateOfBill
FROM restbill
WHERE cust_name = 'Bob Crow';

SELECT cust_name AS CustomerName
FROM restbill
WHERE cust_name LIKE '%Smith';

SELECT DISTINCT cust_name AS UniqueCustomerNames
FROM restbill
WHERE cust_name LIKE '% C%';

SELECT bill_date AS TransactionDate
FROM restbill
WHERE bill_date >= 160201 AND bill_date < 160301;

SELECT DISTINCT bill_date AS UniqueBillDates
FROM restbill
WHERE bill_date >= 150101 AND bill_date < 160101;
