SELECT  Producers.ProducerName AS Producer,
        SUM(WarehouseProduct.Quantity) AS Product_quantity
FROM Products JOIN Producers ON Products.ProducerId = Producers.Id
              JOIN WarehouseProduct ON Products.Id = WarehouseProduct.ProductId
GROUP BY Producers.ProducerName