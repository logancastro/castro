SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [production].[stocks] (
		[store_id]       [int] NOT NULL,
		[product_id]     [int] NOT NULL,
		[quantity]       [int] NULL,
		CONSTRAINT [PK__stocks__E68284D375380A20]
		PRIMARY KEY
		CLUSTERED
		([store_id], [product_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [production].[stocks]
	WITH CHECK
	ADD CONSTRAINT [FK__stocks__store_id__3D5E1FD2]
	FOREIGN KEY ([store_id]) REFERENCES [sales].[stores] ([store_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [production].[stocks]
	CHECK CONSTRAINT [FK__stocks__store_id__3D5E1FD2]

GO
ALTER TABLE [production].[stocks]
	WITH CHECK
	ADD CONSTRAINT [FK__stocks__product___3E52440B]
	FOREIGN KEY ([product_id]) REFERENCES [production].[products] ([product_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [production].[stocks]
	CHECK CONSTRAINT [FK__stocks__product___3E52440B]

GO
ALTER TABLE [production].[stocks] SET (LOCK_ESCALATION = TABLE)
GO
