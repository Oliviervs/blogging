CREATE TABLE [tSQLt].[Private_Seize_NoTruncate] (
    [NoTruncate] BIT NULL
);
GO

ALTER TABLE [tSQLt].[Private_Seize_NoTruncate]
    ADD CONSTRAINT [Private_Seize_NoTruncate(NoTruncate):FK] FOREIGN KEY ([NoTruncate]) REFERENCES [tSQLt].[Private_Seize] ([Kaput]);
GO

