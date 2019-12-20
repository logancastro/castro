SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [sales].[orders] (
		[order_id]          [int] IDENTITY(1, 1) NOT NULL,
		[customer_id]       [int] NULL,
		[order_status]      [tinyint] NOT NULL,
		[order_date]        [date] NOT NULL,
		[required_date]     [date] NOT NULL,
		[shipped_date]      [date] NULL,
		[store_id]          [int] NOT NULL,
		[staff_id]          [int] NOT NULL,
		CONSTRAINT [PK__orders__46596229F8527AD3]
		PRIMARY KEY
		CLUSTERED
		([order_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [sales].[orders]
	WITH CHECK
	ADD CONSTRAINT [FK__orders__customer__33D4B598]
	FOREIGN KEY ([customer_id]) REFERENCES [sales].[customers] ([customer_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [sales].[orders]
	CHECK CONSTRAINT [FK__orders__customer__33D4B598]

GO
ALTER TABLE [sales].[orders]
	WITH CHECK
	ADD CONSTRAINT [FK__orders__store_id__34C8D9D1]
	FOREIGN KEY ([store_id]) REFERENCES [sales].[stores] ([store_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [sales].[orders]
	CHECK CONSTRAINT [FK__orders__store_id__34C8D9D1]

GO
ALTER TABLE [sales].[orders]
	WITH CHECK
	ADD CONSTRAINT [FK__orders__staff_id__35BCFE0A]
	FOREIGN KEY ([staff_id]) REFERENCES [sales].[staffs] ([staff_id])
ALTER TABLE [sales].[orders]
	CHECK CONSTRAINT [FK__orders__staff_id__35BCFE0A]

GO
ALTER TABLE [sales].[orders] SET (LOCK_ESCALATION = TABLE)
GO
