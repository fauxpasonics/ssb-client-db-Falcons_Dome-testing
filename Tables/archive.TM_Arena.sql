CREATE TABLE [archive].[TM_Arena]
(
[arena_id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[arena_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[arena_abv] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[venue_city] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[venue_state] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[venue_zip] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[inet_arena_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[street_addr_1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[street_addr_2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[country] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL CONSTRAINT [DF__TM_Arena__Create__00DF2177] DEFAULT (getdate())
)
GO
CREATE NONCLUSTERED INDEX [IDX_CreatedDate] ON [archive].[TM_Arena] ([CreatedDate])
GO
CREATE NONCLUSTERED INDEX [IDX_SourceFileName] ON [archive].[TM_Arena] ([SourceFileName])
GO
