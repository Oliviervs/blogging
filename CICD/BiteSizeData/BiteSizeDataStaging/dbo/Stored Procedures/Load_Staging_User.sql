CREATE PROCEDURE [dbo].[Load_Staging_User]
AS
BEGIN
	
	MERGE [dbo].[User] AS t
	USING (
		SELECT	UserID,
				Username,
				PasswordHash,
				Email,
				[Role],
				CreatedAt
		FROM [import].[User]
	) AS i
	ON (t.UserID = i.UserID)
	WHEN NOT MATCHED THEN
		INSERT (UserID, Username, PasswordHash, Email, [Role], CreatedAt)
		VALUES (i.UserID, i.Username, i.PasswordHash, i.Email, i.[Role], i.CreatedAt)
	WHEN MATCHED THEN
	UPDATE
		SET t.UserID		= i.UserID, 
			t.Username		= i.Username, 
			t.PasswordHash	= i.PasswordHash, 
			t.Email			= i.Email, 
			t.[Role]		= i.[Role], 
			t.CreatedAt		= i.CreatedAt;

END
GO
