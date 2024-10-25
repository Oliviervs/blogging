CREATE PROCEDURE [CoreUnitTest].[Test_Staging_ObjectExists_DimUserSyn]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'dwh.Dim_User_Syn'

	-- Assert
	EXEC [$(STAGING_DB)].tSQLt.AssertObjectExists @ObjectName;
GO