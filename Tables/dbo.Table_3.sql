CREATE TABLE [dbo].[Table_3]
(
[id] [int] NOT NULL,
[things] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_3] ADD CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
