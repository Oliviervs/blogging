CREATE PROCEDURE [StagingUnitTest].[Test_Staging_LoadStagingUser_ChangeExistingUser]
AS
	-- Assemble
	DECLARE @actual VARCHAR(50);
	DECLARE @expected VARCHAR(50);

	EXEC [$(STAGING_DB)].tSQLt.FakeTable 'import.User'
	EXEC [$(STAGING_DB)].tSQLt.FakeTable 'dbo.User'
	
	INSERT INTO [$(STAGING_DB)].[import].[User](UserID, Username, PasswordHash, Email, [Role], CreatedAt)
	VALUES (1, 'oliviervs', '123456789azerty', 'olivier@bitesizedata.be', 'admin', '2024-01-01')
	
	INSERT INTO [$(STAGING_DB)].[dbo].[User](UserID, Username, PasswordHash, Email, [Role], CreatedAt)
	VALUES (1, 'oliviervs', '123456789azerty1123', 'olivier@oliviervs.be', 'admin', '2024-01-01')
	
	EXEC [$(STAGING_DB)].dbo.Load_Staging_User

	-- Act
	SET @expected = '[$(STAGING_DB)].[import].[User]';
	SET @actual = '[$(STAGING_DB)].[dbo].[User]';


	-- Assert
	EXEC tSQLt.AssertEqualsTable @expected, @actual;
