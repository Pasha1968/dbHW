CREATE TABLE [dbo].[manufacturer]
(
	[Id] INT IDENTITY  (1, 1) NOT NULL PRIMARY KEY CLUSTERED,
	[Code] INT NOT NULL,
	[manufacturerName] NVARCHAR(100) NOT NULL
);
