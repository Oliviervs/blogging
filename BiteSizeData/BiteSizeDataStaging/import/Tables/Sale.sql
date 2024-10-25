CREATE TABLE [import].[Sale] (
    [SaleID]      INT             NOT NULL,
    [CustomerID]  INT             NULL,
    [SaleDate]    DATE            NULL,
    [TotalAmount] DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([SaleID] ASC)
);
GO

