CREATE TABLE [dbo].[WidgetPicture]
(
[WidgetId] [int] NOT NULL,
[WidgetPhoto] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetPicture] ADD CONSTRAINT [FK_WidgetPicture_Widgets] FOREIGN KEY ([WidgetId]) REFERENCES [dbo].[Widgets] ([RecordID])
GO
