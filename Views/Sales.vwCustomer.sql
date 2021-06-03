SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [Sales].[vwCustomer]
AS
SELECT        CustomerId, FirstName, LastName, Email, Street, City, State, Zip
FROM            Sales.Customer
WHERE        (City IS NOT NULL)
GO