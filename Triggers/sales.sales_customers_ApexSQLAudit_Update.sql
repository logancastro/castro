CREATE TRIGGER [sales].[sales_customers_ApexSQLAudit_Update]
	ON [sales].[customers]
	AFTER
		UPDATE
AS
	EXTERNAL NAME [ApexSQL.Audit.BeforeAfter.sales.customers.Update].[ApexSQL.Audit.BeforeAfterClr.BeforeAfterTrigger].[Update]
GO
