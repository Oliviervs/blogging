CREATE PROCEDURE [CoreUnitTest].[Test_Staging_DatabaseCollation]
AS
	-- Assemble
	DECLARE @actual VARCHAR(50);
	DECLARE @expected VARCHAR(50);

	-- Act
	SET @expected = (SELECT CONVERT(VARCHAR(50), SERVERPROPERTY('Collation')));
	SET @actual = (SELECT CONVERT(VARCHAR(50), DATABASEPROPERTYEX('$(STAGING_DB)', 'Collation')))

	-- Assert
	EXEC tSQLt.AssertEquals @expected, @actual;

GO