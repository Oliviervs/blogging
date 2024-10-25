CREATE TABLE [import].[PriceHistory] (
    [PriceHistoryID] INT             NOT NULL,
    [ProductID]      INT             NULL,
    [Price]          DECIMAL (10, 2) NULL,
    [StartDate]      DATE            NULL,
    [EndDate]        DATE            NULL,
    PRIMARY KEY CLUSTERED ([PriceHistoryID] ASC)
);

