CREATE VIEW ProducersProductsWarehouses AS
SELECT  Products.ProductName AS Product,
		manufacturer.manufacturerName AS manufacturer, 
        Warehouses.Adress As Adress
FROM [products].[dbo].[Products] JOIN manufacturer ON Products.manufacturerId = manufacturer.manufactrerId
              JOIN [products].[dbo].[Warehouses] ON Products.manufacturerId= Warehouses.warehouseId