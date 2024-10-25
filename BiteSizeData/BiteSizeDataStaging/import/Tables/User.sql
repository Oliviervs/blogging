CREATE TABLE [import].[User] (
    [UserID]       INT            NOT NULL,
    [Username]     VARCHAR (50)   NULL,
    [PasswordHash] VARCHAR (255)  NULL,
    [Email]        VARCHAR (100)  NULL,
    [Role]         VARCHAR (50)   NULL,
    [CreatedAt]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);
GO