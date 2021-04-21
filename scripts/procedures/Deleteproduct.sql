CREATE PROCEDURE [dbo].[DeleteProduct]
	@ProductId INT
AS
BEGIN
	DELETE [dbo].[Products] WHERE id = @ProductId;
END;