CREATE VIEW ProducersProductsWarehouses AS
SELECT  Products.ProductName AS Product,
		manufacturer.manufacturerName AS manufacturer, 
        Warehouses.Adress As Adress
FROM [products].[dbo].[Products]	JOIN Producers ON Products.ProducerId = Producers.Id
              JOIN WarehouseProduct ON Products.Id = WarehouseProduct.ProductId
              JOIN Warehouses ON WarehouseProduct.WarehouseId = Warehouses.Id