CREATE TABLE [dbo].[Customer] (
    [CustomerID]  INT           NOT NULL,
    [UserID]      INT           NULL,
    [FirstName]   VARCHAR (50)  NULL,
    [LastName]    VARCHAR (50)  NULL,
    [PhoneNumber] VARCHAR (15)  NULL,
    [Address]     VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

