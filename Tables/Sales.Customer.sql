CREATE TABLE [Sales].[Customer] (
  [CustomerId] [int] IDENTITY,
  [FirstName] [varchar](255) NOT NULL,
  [LastName] [varchar](255) NOT NULL,
  [Email] [varchar](255) NOT NULL,
  [Street] [varchar](255) NULL,
  [City] [varchar](50) NULL,
  [State] [varchar](25) NULL,
  [Zip] [varchar](5) NULL,
  PRIMARY KEY CLUSTERED ([CustomerId])
)
ON [PRIMARY]
GO