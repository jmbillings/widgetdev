CREATE TABLE [dbo].[Table_1]
(
[id] [int] NOT NULL,
[thing] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[anotherthing] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_1] ADD CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_1] ADD CONSTRAINT [FK_Table_1_Table_2] FOREIGN KEY ([id]) REFERENCES [dbo].[Table_2] ([id])
GO
