CREATE TRIGGER [sales].[sales_customers_ApexSQLAudit_Insert]
	ON [sales].[customers]
	AFTER
		INSERT
AS
	EXTERNAL NAME [ApexSQL.Audit.BeforeAfter.sales.customers.Insert].[ApexSQL.Audit.BeforeAfterClr.BeforeAfterTrigger].[Insert]
GO
