CREATE TABLE [dbo].[Customer] (
    [CustomerID]  INT            IDENTITY (1, 1) NOT NULL,
    [UserID]      INT            NULL,
    [FirstName]   NVARCHAR (50)  NULL,
    [LastName]    NVARCHAR (50)  NULL,
    [PhoneNumber] NVARCHAR (15)  NULL,
    [Address]     NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    FOREIGN KEY ([UserID]) REFERENCES [app].[User] ([UserID])
);
GO

