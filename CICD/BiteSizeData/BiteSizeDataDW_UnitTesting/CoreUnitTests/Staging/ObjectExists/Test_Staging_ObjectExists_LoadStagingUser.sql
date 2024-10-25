CREATE PROCEDURE [CoreUnitTest].[Test_Staging_ObjectExists_LoadStagingUser]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'dbo.Load_Staging_User'

	-- Assert
	EXEC [$(STAGING_DB)].tSQLt.AssertObjectExists @ObjectName;
GO