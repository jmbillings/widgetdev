CREATE TABLE [dbo].[Components]
(
[ComponentID] [int] NOT NULL IDENTITY(1, 1),
[ComponentDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Componentnotes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ComponentTolerance] [int] NULL,
[ComponentNewCol] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sdgsdgs] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dsfgdg] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fwefeww] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pie] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Components] ADD CONSTRAINT [PK_Component] PRIMARY KEY CLUSTERED  ([ComponentID]) ON [PRIMARY]
GO
