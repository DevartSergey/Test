CREATE TABLE [Production].[Product] (
  [ProductId] [int] IDENTITY,
  [ProductName] [varchar](255) NOT NULL,
  [BrandId] [int] NOT NULL,
  [CategoryId] [int] NOT NULL,
  [ModelYear] [smallint] NULL,
  [Price] [decimal](10, 2) NOT NULL,
  PRIMARY KEY CLUSTERED ([ProductId])
)
ON [PRIMARY]
GO

ALTER TABLE [Production].[Product] WITH NOCHECK
  ADD FOREIGN KEY ([BrandId]) REFERENCES [Production].[Brand] ([BrandId]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Production].[Product] WITH NOCHECK
  ADD FOREIGN KEY ([CategoryId]) REFERENCES [Production].[Category] ([CategoryId]) ON DELETE CASCADE ON UPDATE CASCADE
GO