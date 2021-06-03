SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   PROC [Production].[usp_Brand_Insert] 
    @BrandId int,
    @BrandName varchar(255)
AS 
    SET NOCOUNT ON 
    SET XACT_ABORT ON  

    BEGIN TRAN

    INSERT INTO Production.Brand (BrandId, BrandName)
    SELECT @BrandId, @BrandName

    /*
    -- Begin Return row code block

    SELECT BrandId, BrandName
    FROM   Production.Brand
    WHERE  BrandId = @BrandId AND BrandName = @BrandName

    -- End Return row code block

    */
    COMMIT
GO