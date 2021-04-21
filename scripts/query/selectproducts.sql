SELECT  manufacturer.manufacturerName AS manufacturer,
		Products.amount AS amount
FROM [products].[dbo].[manufacturer] JOIN [products].[dbo].[Products]  ON manufacturer.manufactrerId = Products.manufacturerId