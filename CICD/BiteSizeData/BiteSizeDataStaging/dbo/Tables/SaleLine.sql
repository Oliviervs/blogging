CREATE TABLE [dbo].[SaleLine] (
    [SaleLineID] INT             NOT NULL,
    [SaleID]     INT             NULL,
    [ProductID]  INT             NULL,
    [Quantity]   INT             NULL,
    [UnitPrice]  DECIMAL (10, 2) NULL,
    [Discount]   DECIMAL (10, 2) NULL,
    [LineTotal]  DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([SaleLineID] ASC)
);

