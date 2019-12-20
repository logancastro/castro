SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [sales].[staffs] (
		[staff_id]       [int] IDENTITY(1, 1) NOT NULL,
		[first_name]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[last_name]      [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[email]          [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[phone]          [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[active]         [tinyint] NOT NULL,
		[store_id]       [int] NOT NULL,
		[manager_id]     [int] NULL,
		CONSTRAINT [UQ__staffs__AB6E616442026868]
		UNIQUE
		NONCLUSTERED
		([email])
		ON [PRIMARY],
		CONSTRAINT [PK__staffs__1963DD9CF48455D3]
		PRIMARY KEY
		CLUSTERED
		([staff_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [sales].[staffs]
	WITH CHECK
	ADD CONSTRAINT [FK__staffs__store_id__300424B4]
	FOREIGN KEY ([store_id]) REFERENCES [sales].[stores] ([store_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [sales].[staffs]
	CHECK CONSTRAINT [FK__staffs__store_id__300424B4]

GO
ALTER TABLE [sales].[staffs]
	WITH CHECK
	ADD CONSTRAINT [FK__staffs__manager___30F848ED]
	FOREIGN KEY ([manager_id]) REFERENCES [sales].[staffs] ([staff_id])
ALTER TABLE [sales].[staffs]
	CHECK CONSTRAINT [FK__staffs__manager___30F848ED]

GO
ALTER TABLE [sales].[staffs] SET (LOCK_ESCALATION = TABLE)
GO
