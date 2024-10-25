CREATE TABLE [dbo].[SaleLine] (
    [SaleLineID] INT             IDENTITY (1, 1) NOT NULL,
    [SaleID]     INT             NULL,
    [ProductID]  INT             NULL,
    [Quantity]   INT             NULL,
    [UnitPrice]  DECIMAL (10, 2) NULL,
    [Discount]   DECIMAL (10, 2) NULL,
    [LineTotal]  AS              ([Quantity]*([UnitPrice]-[Discount])) PERSISTED,
    PRIMARY KEY CLUSTERED ([SaleLineID] ASC),
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    FOREIGN KEY ([SaleID]) REFERENCES [dbo].[Sale] ([SaleID])
);
GO

