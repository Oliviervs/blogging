CREATE PROCEDURE [CoreUnitTest].[Test_DataWarehouse_ObjectExists_Dim_User]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'dbo.Dim_User'

	-- Assert
	EXEC [$(DWH_DB)].tSQLt.AssertObjectExists @ObjectName;
GO