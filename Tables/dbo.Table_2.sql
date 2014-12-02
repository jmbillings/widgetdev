CREATE TABLE [dbo].[Table_2]
(
[id] [int] NOT NULL,
[stuff] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[extrastuff] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_2] ADD CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
