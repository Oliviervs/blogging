CREATE TABLE [config].[RunParameter]
(
	[RunParameterId] INT NOT NULL PRIMARY KEY,
	[RunParameterName] VARCHAR(20) NOT NULL,
	[RunParameterValue] VARCHAR(50) NOT NULL,
	[RunParameterDescription] VARCHAR(200) NOT NULL
)