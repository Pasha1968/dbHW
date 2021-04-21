CREATE TYPE ProductTable AS TABLE
(
    ProductName nvarchar(100)
)
GO


CREATE PROCEDURE [dbo].[CreateManufact]
	@Code int,
	@Name nvarchar(100),
	@Table ProductTable READONLY
AS
BEGIN
	SET NOCOUNT ON   
	BEGIN TRANSACTION T1
		INSERT INTO [dbo].[manufacturer] (Code, manufacturerName) VALUES (@Code, @Name)
		INSERT INTO [dbo].[Products] (ProductName, manufacturerId) SELECT ProductName, @@IDENTITY FROM @Table
	COMMIT TRAN T1; 
END;