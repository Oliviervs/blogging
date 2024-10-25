CREATE SCHEMA [StagingUnitTest]
    AUTHORIZATION [dbo];

GO
EXECUTE sp_addextendedproperty @name = N'tSQLt.TestClass', @value = 1, @level0type = N'SCHEMA', @level0name = N'StagingUnitTest';

