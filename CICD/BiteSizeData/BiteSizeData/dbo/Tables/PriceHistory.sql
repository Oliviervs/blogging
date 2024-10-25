CREATE TABLE [dbo].[PriceHistory] (
    [PriceHistoryID] INT             IDENTITY (1, 1) NOT NULL,
    [ProductID]      INT             NULL,
    [Price]          DECIMAL (10, 2) NULL,
    [StartDate]      DATE            NULL,
    [EndDate]        DATE            NULL,
    PRIMARY KEY CLUSTERED ([PriceHistoryID] ASC),
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
);

