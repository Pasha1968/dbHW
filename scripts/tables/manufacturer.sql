GO
BEGIN
	DECLARE @sql_str varchar(2000)
	DECLARE @cur_table varchar(128)
	--https://docs.microsoft.com/en-us/sql/t-sql/language-elements/declare-cursor-transact-sql?view=sql-server-ver15
	--https://docs.microsoft.com/ru-ru/sql/t-sql/statements/delete-transact-sql?view=sql-server-ver15
	-- —начала удал€ютс€ ключи, потом таблички
	WHILE (1 = 1) BEGIN
		SET @sql_str = ''
		SELECT TOP 1 @sql_str = 'ALTER TABLE [' + TABLE_NAME + '] DROP	CONSTRAINT [' +	CONSTRAINT_NAME + ']'
			FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
			WHERE	CONSTRAINT_TYPE = 'FOREIGN KEY'
		IF (@sql_str = '')
			BREAK
		PRINT (@sql_str)
			EXECUTE (@sql_str)
	END

	WHILE (1 = 1) BEGIN
		SET @cur_table = ''
		SELECT TOP 1 @cur_table = 'DROP TABLE ['+ table_name + ']'
		FROM INFORMATION_SCHEMA.TABLES
		WHERE TABLE_NAME != 'sysdiagrams'
		IF (@cur_table = '')
			BREAK;
		PRINT(@cur_table)
		EXECUTE(@cur_table)
	END
END

CREATE TABLE [dbo].[manufacturer]
(
	[manufactrerId] INT IDENTITY  (1, 1) NOT NULL PRIMARY KEY CLUSTERED,
	[Code] INT NOT NULL,
	[manufacturerName] NVARCHAR(100) NOT NULL
);
INSERT INTO [dbo].[manufacturer] ([Code],[manufacturerName])
VALUES 
(1,'name 1 '),
(2,'name 2')
;