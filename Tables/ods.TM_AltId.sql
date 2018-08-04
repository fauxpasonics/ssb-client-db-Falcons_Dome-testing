CREATE TABLE [ods].[TM_AltId]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[acct_id] [int] NULL,
[alt_acct_id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[alt_id_type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[alt_id_type_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[alt_id_comment] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InsertDate] [datetime] NULL,
[UpdateDate] [datetime] NULL,
[SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HashKey] [binary] (32) NULL
)
GO
ALTER TABLE [ods].[TM_AltId] ADD CONSTRAINT [PK__TM_AltId__3213E83F6377A22B] PRIMARY KEY CLUSTERED  ([id])
GO
CREATE NONCLUSTERED INDEX [IDX_acct_id] ON [ods].[TM_AltId] ([acct_id])
GO
