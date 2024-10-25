CREATE PROCEDURE [CoreUnitTest].[Test_Staging_ObjectExists_LoadDimUser]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'dwh.Load_Dim_User'

	-- Assert
	EXEC [$(STAGING_DB)].tSQLt.AssertObjectExists @ObjectName;
GO