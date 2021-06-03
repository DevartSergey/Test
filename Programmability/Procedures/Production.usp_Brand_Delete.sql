SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   PROC [Production].[usp_Brand_Delete] 
@BrandId int
AS 
    SET NOCOUNT ON 
    SET XACT_ABORT ON  

    BEGIN TRAN

    DELETE
    FROM   Production.Brand
    WHERE  BrandId = @BrandId

    COMMIT
GO