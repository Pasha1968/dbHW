


CREATE TABLE [dbo].[Products]
(
	[ProductId] INT IDENTITY   (1, 1) NOT NULL PRIMARY KEY CLUSTERED, 
    [ProductName] NVARCHAR(100) NOT NULL,
	[manufacturerId] INT NOT NULL  REFERENCES [dbo].[manufacturer] ([manufactrerId]),
	[warehouseId] INT NOT NULL  REFERENCES [dbo].[Warehouses] ([warehouseId]),
	[amount] INT NULL
);

INSERT INTO [dbo].[Products] ([ProductName],[manufacturerId],[warehouseId],[amount])
VALUES 
('name 1 ',1,1,1),
('name 2',1,1,1)
;