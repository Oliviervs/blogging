CREATE TABLE [dbo].[Stock] (
    [StockID]         INT IDENTITY (1, 1) NOT NULL,
    [ProductID]       INT NULL,
    [QuantityInStock] INT NULL,
    PRIMARY KEY CLUSTERED ([StockID] ASC)
);

