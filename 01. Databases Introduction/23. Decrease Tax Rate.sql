USE [Hotel]

-- Paste in Judge from this point on

UPDATE [Payments]
	SET [TaxRate] -= 0.03

SELECT [TaxRate] FROM [Payments]