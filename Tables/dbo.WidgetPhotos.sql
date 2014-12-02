CREATE TABLE [dbo].[WidgetPhotos]
(
[WidgetPhotoID] [int] NOT NULL IDENTITY(1, 1),
[WidgetId] [int] NOT NULL,
[WidgetPhoto] [image] NOT NULL,
[WidgetBigPicUrl] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetPhotos] ADD CONSTRAINT [PK_WidgetPhotos] PRIMARY KEY CLUSTERED  ([WidgetPhotoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetPhotos] ADD CONSTRAINT [FK_WidgetPhotos_WidgetPhotos] FOREIGN KEY ([WidgetId]) REFERENCES [dbo].[Widgets] ([RecordID])
GO
