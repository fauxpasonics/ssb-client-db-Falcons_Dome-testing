CREATE TABLE [ods].[TM_SellLocation]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[sell_location_id] [int] NULL,
[sell_location_code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sell_location_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sell_location_desc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[outlet_code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[org_id] [int] NULL,
[active] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[protected] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sort_order] [int] NULL,
[add_user] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[add_datetime] [datetime] NULL,
[upd_user] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[upd_datetime] [datetime] NULL,
[InsertDate] [datetime] NULL CONSTRAINT [DF__TM_SellLo__Inser__02084FDA] DEFAULT (getdate()),
[UpdateDate] [datetime] NULL CONSTRAINT [DF__TM_SellLo__Updat__02FC7413] DEFAULT (getdate()),
[SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HashKey] [binary] (32) NULL
)
GO
ALTER TABLE [ods].[TM_SellLocation] ADD CONSTRAINT [PK__TM_SellL__3213E83F0CF50B9C] PRIMARY KEY CLUSTERED  ([id])
GO
