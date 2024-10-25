CREATE TABLE [dbo].[Dim_User]
(
  [UserKey]       INT             NOT NULL PRIMARY KEY,
  [UserID]        INT             NOT NULL,
  [Username]      VARCHAR (50)    NULL,
  [Email]         VARCHAR (100)   NULL,
  [Role]          VARCHAR (50)    NULL,
  [CreatedAt]     DATETIME        NULL
)
