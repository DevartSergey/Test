CREATE TABLE [Production].[Stock] (
  [StoreId] [int] NOT NULL,
  [ProductId] [int] NOT NULL,
  [Qty] [int] NULL,
  PRIMARY KEY CLUSTERED ([StoreId], [ProductId])
)
ON [PRIMARY]
GO

ALTER TABLE [Production].[Stock] WITH NOCHECK
  ADD FOREIGN KEY ([ProductId]) REFERENCES [Production].[Product] ([ProductId]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Production].[Stock] WITH NOCHECK
  ADD FOREIGN KEY ([StoreId]) REFERENCES [Sales].[Store] ([StoreId]) ON DELETE CASCADE ON UPDATE CASCADE
GO