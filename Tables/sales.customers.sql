SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [sales].[customers] (
		[customer_id]     [int] IDENTITY(1, 1) NOT NULL,
		[first_name]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[last_name]       [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[phone]           [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[email]           [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[street]          [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state]           [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[zip_code]        [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__customer__CD65CB8562430497]
		PRIMARY KEY
		CLUSTERED
		([customer_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [sales].[customers] SET (LOCK_ESCALATION = TABLE)
GO
