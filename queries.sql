-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

   SELECT Product.ProductName, Category.CategoryName
   FROM Product JOIN Category ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

   SELECT [Order].Id, Shipper.CompanyName
   FROM [Order] JOIN Shipper ON [Order].ShipVia = Shipper.Id
   WHERE [Order].OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

   SELECT P.ProductName, O.Quantity
   FROM Product AS P JOIN OrderDetail AS O ON P.Id = O.ProductId
   WHERE O.OrderId = 10251
   ORDER BY P.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

   SELECT O.Id, C.CompanyName, E.LastName
   FROM [Order] AS O 
   JOIN Customer AS C ON O.CustomerId = C.Id
   JOIN Employee AS E ON O.EmployeeId = E.Id