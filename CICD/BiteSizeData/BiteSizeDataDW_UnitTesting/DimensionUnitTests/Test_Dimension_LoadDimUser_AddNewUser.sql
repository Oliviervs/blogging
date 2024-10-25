CREATE PROCEDURE [DimensionUnitTest].[Test_Dimension_LoadDimUser_AddNewUser]
AS
BEGIN

	-- Assemble
	EXEC [$(DWH_DB)].tSQLt.FakeTable 'dbo.Dim_User'
	EXEC [$(STAGING_DB)].tSQLt.FakeTable 'dbo.User'

	INSERT INTO [$(STAGING_DB)].[dbo].[User](UserID, Username, PasswordHash, Email, [Role], CreatedAt)
	VALUES (1, 'oliviervs', '123456789azerty', 'olivier@bitesizedata.be', 'admin', '2024-01-01')
	

	CREATE TABLE #expected
	(
		UserID INT,
		Username VARCHAR(50),
		Email VARCHAR(100),
		[Role] VARCHAR(50),
		CreatedAt DATETIME
	)

	CREATE TABLE #actual
	(
		UserID INT,
		Username VARCHAR(50),
		Email VARCHAR(100),
		[Role] VARCHAR(50),
		CreatedAt DATETIME
	)


	-- Act

	EXEC [$(STAGING_DB)].dwh.Load_Dim_User

	INSERT INTO #expected (UserID, Username, Email, [Role], CreatedAt)
	SELECT  UserID,
			Username,
			Email,
			[Role],
			CreatedAt
	FROM [$(STAGING_DB)].[dbo].[User]

	INSERT INTO #actual (UserID, Username, Email, [Role], CreatedAt)
	SELECT  UserID,
			Username,
			Email,
			[Role],
			CreatedAt
	FROM [$(STAGING_DB)].dwh.Dim_User_Syn

	-- Assert

	EXEC tSQLt.AssertEqualsTable @expected = '#expected', @actual = '#actual';
	
END
