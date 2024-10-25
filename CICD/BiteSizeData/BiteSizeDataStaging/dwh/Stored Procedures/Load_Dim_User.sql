CREATE PROCEDURE [dwh].[Load_Dim_User]
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dwh].[Dim_User_Syn]
	(
		UserID,
		Username,
		Email,
		[Role],
		CreatedAt,
		AuditCreatedAt
	)
	SELECT
		UserID,
		Username,
		Email,
		[Role],
		CreatedAt,
		GETDATE() AS AuditCreatedAt
	FROM [dbo].[User];

END
GO
