﻿CREATE PROCEDURE [CoreUnitTest].[Test_Staging_ObjectExists_User]
AS
	-- Assemble
	
	-- Act
	DECLARE @ObjectName VARCHAR(50);
	SET @ObjectName = 'dbo.User'

	-- Assert
	EXEC [$(STAGING_DB)].tSQLt.AssertObjectExists @ObjectName;
GO