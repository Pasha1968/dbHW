CREATE TABLE [dbo].[Warehouses]
(
	[warehouseId] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED, 
    [Adress] NVARCHAR(100) NOT NULL
);
INSERT INTO [dbo].[Warehouses] ([Adress])
VALUES 
('address 1'),
('adress 1')
;