CREATE TABLE [dbo].[Criminal]
(
	[Serial] INT NOT NULL PRIMARY KEY IDENTITY DEFAULT 1, 
    [Name] VARCHAR(50) NULL, 
    [ID] VARCHAR(50) NULL, 
    [Crime_ID] VARCHAR(50) NULL, 
    [Punishment] VARCHAR(50) NULL
)
