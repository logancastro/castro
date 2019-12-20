SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [production].[brands] (
		[brand_id]       [int] IDENTITY(1, 1) NOT NULL,
		[brand_name]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK__brands__5E5A8E279C9A6ABD]
		PRIMARY KEY
		CLUSTERED
		([brand_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [production].[brands] SET (LOCK_ESCALATION = TABLE)
GO
