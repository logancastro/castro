SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [production].[products] (
		[product_id]       [int] IDENTITY(1, 1) NOT NULL,
		[product_name]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[brand_id]         [int] NOT NULL,
		[category_id]      [int] NOT NULL,
		[model_year]       [smallint] NOT NULL,
		[list_price]       [decimal](10, 2) NOT NULL,
		CONSTRAINT [PK__products__47027DF545D34530]
		PRIMARY KEY
		CLUSTERED
		([product_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [production].[products]
	WITH CHECK
	ADD CONSTRAINT [FK__products__catego__276EDEB3]
	FOREIGN KEY ([category_id]) REFERENCES [production].[categories] ([category_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [production].[products]
	CHECK CONSTRAINT [FK__products__catego__276EDEB3]

GO
ALTER TABLE [production].[products]
	WITH CHECK
	ADD CONSTRAINT [FK__products__brand___286302EC]
	FOREIGN KEY ([brand_id]) REFERENCES [production].[brands] ([brand_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [production].[products]
	CHECK CONSTRAINT [FK__products__brand___286302EC]

GO
ALTER TABLE [production].[products] SET (LOCK_ESCALATION = TABLE)
GO
