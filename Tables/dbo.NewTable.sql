CREATE TABLE [dbo].[NewTable]
(
[id] [int] NOT NULL,
[col1] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[col23] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cl324] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NewTable] ADD CONSTRAINT [PK_NewTable] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
