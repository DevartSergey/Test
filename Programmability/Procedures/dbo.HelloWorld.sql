SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[HelloWorld]
AS
    DECLARE @mynvarchar NVARCHAR(50),
            @myfloat FLOAT
    SET @mynvarchar  = @@VERSION
    SET @mynvarchar  = 'Hello, world!'
    SET @myfloat     = 1.6180
    PRINT @mynvarchar
    RETURN (0)
GO