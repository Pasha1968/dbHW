


CREATE TABLE [dbo].[Products]
(
	[ProductId] INT IDENTITY   (1, 1) NOT NULL PRIMARY KEY CLUSTERED, 
    [ProductName] NVARCHAR(100) NOT NULL,
	[manufacturerId] INT NOT NULL  REFERENCES [dbo].[manufacturer] ([manufactrerId]),
	[warehouseId] INT NOT NULL  REFERENCES [dbo].[Warehouses] ([warehouseId]),
	[amount] INT NULL
);

	GO
	CREATE UNIQUE NONCLUSTERED INDEX [ProductName_IX]
    ON [dbo].[Products] ([ProductName]);