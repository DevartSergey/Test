SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   PROC [Production].[usp_Brand_Update]
@BrandId int,
@BrandName varchar(255)
AS 
    SET NOCOUNT ON 
    SET XACT_ABORT ON  

    BEGIN TRAN

    UPDATE Production.Brand
    SET    BrandName = @BrandName
    WHERE  BrandId = @BrandId

    /*
    -- Begin Return row code block

    SELECT BrandName
    FROM   Production.Brand
    WHERE  BrandId = @BrandId

    -- End Return row code block

    */
    COMMIT
GO