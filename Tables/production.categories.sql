SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [production].[categories] (
		[category_id]       [int] IDENTITY(1, 1) NOT NULL,
		[category_name]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK__categori__D54EE9B4C4E2D49A]
		PRIMARY KEY
		CLUSTERED
		([category_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [production].[categories] SET (LOCK_ESCALATION = TABLE)
GO
