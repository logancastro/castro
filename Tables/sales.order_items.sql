SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [sales].[order_items] (
		[order_id]       [int] NOT NULL,
		[item_id]        [int] NOT NULL,
		[product_id]     [int] NOT NULL,
		[quantity]       [int] NOT NULL,
		[list_price]     [decimal](10, 2) NOT NULL,
		[discount]       [decimal](4, 2) NOT NULL,
		CONSTRAINT [PK__order_it__837942D4B10C49B3]
		PRIMARY KEY
		CLUSTERED
		([order_id], [item_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [sales].[order_items]
	ADD
	CONSTRAINT [DF__order_ite__disco__38996AB5]
	DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [sales].[order_items]
	WITH CHECK
	ADD CONSTRAINT [FK__order_ite__order__398D8EEE]
	FOREIGN KEY ([order_id]) REFERENCES [sales].[orders] ([order_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [sales].[order_items]
	CHECK CONSTRAINT [FK__order_ite__order__398D8EEE]

GO
ALTER TABLE [sales].[order_items]
	WITH CHECK
	ADD CONSTRAINT [FK__order_ite__produ__3A81B327]
	FOREIGN KEY ([product_id]) REFERENCES [production].[products] ([product_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [sales].[order_items]
	CHECK CONSTRAINT [FK__order_ite__produ__3A81B327]

GO
ALTER TABLE [sales].[order_items] SET (LOCK_ESCALATION = TABLE)
GO
