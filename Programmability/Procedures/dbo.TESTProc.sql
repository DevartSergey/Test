SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[TESTProc] AS
DECLARE @Result TABLE (Department INT, Name CHAR(15), Loc CHAR(10));
DECLARE
@col INT,
@colVarname VARCHAR (13),
@colVarloc VARCHAR (13);
SET @col = 1;
SET @colVarname = 1;
SET @colVarloc = 1;
CREATE TABLE #Dept(
    [deptno] [int] NOT NULL,
    [dname] [varchar](15) NULL,
    [loc] [varchar](10) NULL)
WHILE @col < 3
BEGIN
    insert into #dept values(@col,'Deptno '+@colVarname,'Location '+@colVarloc);
    SET @col = @col + 1;
    SET @colVarloc = @colVarloc + 1;
    SET @colVarname = @colVarname + 1;
END;
SELECT * FROM #dept;
INSERT into @Result SELECT deptno, dname, loc FROM #Dept;
select * from @Result;
TRUNCATE TABLE #dept;
GO