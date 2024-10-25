CREATE PROCEDURE [StagingUnitTest].[Test_Staging_LoadStagingUser_AddNewUser]
AS
	-- Assemble
	DECLARE @actual VARCHAR(50);
	DECLARE @expected VARCHAR(50);

	EXEC [$(STAGING_DB)].tSQLt.FakeTable 'import.User'
	EXEC [$(STAGING_DB)].tSQLt.FakeTable 'dbo.User'
	
	INSERT INTO [$(STAGING_DB)].[import].[User](UserID, Username, PasswordHash, Email, [Role], CreatedAt)
	VALUES (1, 'oliviervs', '123456789azerty', 'olivier@bitesizedata.be', 'admin', '2024-01-01')
	
	EXEC [$(STAGING_DB)].dbo.Load_Staging_User

	-- Act
	SET @expected = (SELECT COUNT(1) FROM [$(STAGING_DB)].[import].[User]);
	SET @actual = (SELECT COUNT(1) FROM [$(STAGING_DB)].[dbo].[User]);


	-- Assert
	EXEC tSQLt.AssertEquals @expected, @actual;
