CREATE TABLE [app].[User] (
    [UserID]       INT            IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (50)  NULL,
    [PasswordHash] VARCHAR (255) NULL,
    [Email]        VARCHAR (100) NULL,
    [Role]         VARCHAR (50)  NULL,
    [CreatedAt]    DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    UNIQUE NONCLUSTERED ([Username] ASC)
);


GO

