-- 1
CREATE OR REPLACE VIEW BillsBySam AS
SELECT staff.first_name AS FirstName, 
       staff.surname AS LastName, 
       bill.bill_date AS BillDate, 
       bill.cust_name AS CustomerName, 
       bill.bill_total AS TotalAmount
FROM restStaff staff
JOIN restBill bill 
ON staff.staff_no = bill.waiter_no
WHERE staff.first_name = 'Sam' 
  AND staff.surname = 'Pitt';

-- 2
SELECT FirstName, LastName, BillDate, CustomerName, TotalAmount 
FROM BillsBySam
WHERE TotalAmount > 400;

-- 3
CREATE OR REPLACE VIEW RoomRevenueSummary AS
SELECT rooms.room_name AS RoomName, 
       SUM(bills.bill_total) AS TotalRevenue
FROM restRest_table tables
JOIN restRoom_management rooms 
ON tables.room_name = rooms.room_name
JOIN restBill bills 
ON tables.table_no = bills.table_no
GROUP BY rooms.room_name;

-- 4
CREATE OR REPLACE VIEW HeadwaiterRevenue AS
SELECT CONCAT(head.first_name, ' ', head.surname) AS Headwaiter, 
       SUM(bills.bill_total) AS RevenueGenerated
FROM restStaff waiters
JOIN restBill bills 
ON waiters.staff_no = bills.waiter_no
JOIN restStaff head 
ON waiters.headwaiter = head.staff_no
GROUP BY head.first_name, head.surname, head.staff_no
ORDER BY RevenueGenerated DESC;
