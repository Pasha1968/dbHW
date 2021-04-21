CREATE PROCEDURE [dbo].[AddProduct]
	@WarehouseId INT,
	@ProductId INT,
	@manufacturerId INT,
	@ProductName NVARCHAR(100)
AS
BEGIN
	INSERT INTO [dbo].[Products] (ProductId, ProductName, manufacturerId,warehouseId) 
	VALUES (@ProductId, @ProductName, @manufacturerId,@warehouseId)
END;