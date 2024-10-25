CREATE PROCEDURE [CoreUnitTest].[Test_Staging_ObjectExists_Import_User]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'import.User'

	-- Assert
	EXEC [$(STAGING_DB)].tSQLt.AssertObjectExists @ObjectName;
GO