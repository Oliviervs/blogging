CREATE TABLE [tSQLt].[TestResult] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Class]         NVARCHAR (MAX) NOT NULL,
    [TestCase]      NVARCHAR (MAX) NOT NULL,
    [Name]          AS             ((quotename([Class])+'.')+quotename([TestCase])),
    [TranName]      NVARCHAR (MAX) NULL,
    [Result]        NVARCHAR (MAX) NULL,
    [Msg]           NVARCHAR (MAX) NULL,
    [TestStartTime] DATETIME2 (7)  NOT NULL,
    [TestEndTime]   DATETIME2 (7)  NULL
);
GO

ALTER TABLE [tSQLt].[TestResult]
    ADD CONSTRAINT [PK:tSQLt.TestResult] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

ALTER TABLE [tSQLt].[TestResult]
    ADD CONSTRAINT [DF:TestResult(TestStartTime)] DEFAULT (sysdatetime()) FOR [TestStartTime];
GO

