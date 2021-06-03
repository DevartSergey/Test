SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   PROC [Production].[usp_Brand_Select]
    @BrandId int
AS
    SET NOCOUNT ON 
    SET XACT_ABORT ON  

    BEGIN TRAN

    SELECT BrandId, BrandName 
    FROM   Production.Brand
    WHERE  BrandId = @BrandId  

    COMMIT
GO