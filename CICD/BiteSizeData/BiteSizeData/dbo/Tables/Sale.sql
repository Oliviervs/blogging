CREATE TABLE [dbo].[Sale] (
    [SaleID]      INT             IDENTITY (1, 1) NOT NULL,
    [CustomerID]  INT             NULL,
    [SaleDate]    DATE            NULL,
    [TotalAmount] DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([SaleID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID])
);

