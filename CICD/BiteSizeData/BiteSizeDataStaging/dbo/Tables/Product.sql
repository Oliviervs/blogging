CREATE TABLE [dbo].[Product] (
    [ProductID]   INT           NOT NULL,
    [ProductName] VARCHAR (100) NULL,
    [CategoryID]  INT           NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

