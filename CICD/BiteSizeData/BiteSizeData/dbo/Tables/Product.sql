CREATE TABLE [dbo].[Product] (
    [ProductID]   INT            IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (100) NULL,
    [CategoryID]  INT            NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);

