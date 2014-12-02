CREATE TABLE [dbo].[WidgetDescriptions]
(
[WidgetID] [int] NOT NULL IDENTITY(1, 1),
[Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WidgetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetDescriptions] ADD CONSTRAINT [PK_WidgetDescriptions] PRIMARY KEY NONCLUSTERED  ([WidgetID]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20140708-115154] ON [dbo].[WidgetDescriptions] ([WidgetID]) ON [PRIMARY]
GO
