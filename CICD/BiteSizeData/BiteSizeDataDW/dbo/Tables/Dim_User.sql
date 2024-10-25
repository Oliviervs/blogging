CREATE TABLE [dbo].[Dim_User] (
    [UserKey]   INT           NOT NULL IDENTITY(1, 1),
    [UserID]    INT           NOT NULL,
    [Username]  VARCHAR (50)  NULL,
    [Email]     VARCHAR (100) NULL,
    [Role]      VARCHAR (50)  NULL,
    [CreatedAt] DATETIME      NULL,
    [AuditCreatedAt] DATETIME NULL, 
    [AuditModifiedAt] DATETIME NULL, 
    PRIMARY KEY CLUSTERED ([UserKey] ASC)
);

