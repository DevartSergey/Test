SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spShowOddNumbers]
@LowerRange INT,
@UpperRange INT
AS
BEGIN
  WHILE(@LowerRange < @UpperRange)
  BEGIN
    if(@LowerRange%2 != 0)
    BEGIN
      PRINT @LowerRange
    END
    SET @LowerRange = @LowerRange + 1
  END
  PRINT 'PRINTED ODD NUMBERS BETWEEN ' + RTRIM(@lowerRange) + ' and ' + RTRIM(@UpperRange)
END
GO