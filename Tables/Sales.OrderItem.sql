CREATE TABLE [Sales].[OrderItem] (
  [OrderId] [int] NOT NULL,
  [ItemId] [int] NOT NULL,
  [ProductId] [int] NOT NULL,
  [Qty] [int] NOT NULL,
  [Price] [decimal](10, 2) NOT NULL,
  [Discount] [decimal](4, 2) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OrderId], [ItemId])
)
ON [PRIMARY]
GO

ALTER TABLE [Sales].[OrderItem] WITH NOCHECK
  ADD FOREIGN KEY ([OrderId]) REFERENCES [Sales].[Order] ([OrderId]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Sales].[OrderItem] WITH NOCHECK
  ADD FOREIGN KEY ([ProductId]) REFERENCES [Production].[Product] ([ProductId]) ON DELETE CASCADE ON UPDATE CASCADE
GO