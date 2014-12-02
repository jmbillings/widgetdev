CREATE TABLE [dbo].[ProductTableNew]
(
[id] [int] NOT NULL,
[stuff] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[morestuff] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductTableNew] ADD CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
