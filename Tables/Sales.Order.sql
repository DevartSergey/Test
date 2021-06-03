CREATE TABLE [Sales].[Order] (
  [OrderId] [int] IDENTITY,
  [CustomerId] [int] NULL,
  [OrderStatus] [tinyint] NOT NULL,
  [OrderDate] [date] NOT NULL,
  [RequiredDate] [date] NOT NULL,
  [ShippedDate] [date] NULL,
  [StoreId] [int] NOT NULL,
  [StaffId] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([OrderId])
)
ON [PRIMARY]
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer] ([CustomerId])
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer] ([CustomerId])
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([StaffId]) REFERENCES [Sales].[Staff] ([StaffId])
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([StaffId]) REFERENCES [Sales].[Staff] ([StaffId])
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([StoreId]) REFERENCES [Sales].[Store] ([StoreId])
GO

ALTER TABLE [Sales].[Order] WITH NOCHECK
  ADD FOREIGN KEY ([StoreId]) REFERENCES [Sales].[Store] ([StoreId])
GO