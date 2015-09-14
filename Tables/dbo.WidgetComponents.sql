CREATE TABLE [dbo].[WidgetComponents]
(
[ComponentID] [int] NOT NULL,
[WidgetID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetComponents] ADD CONSTRAINT [FK_WidgetComponents_Component] FOREIGN KEY ([ComponentID]) REFERENCES [dbo].[Components] ([ComponentID])
GO
ALTER TABLE [dbo].[WidgetComponents] ADD CONSTRAINT [FK_WidgetComponents_Widgets] FOREIGN KEY ([WidgetID]) REFERENCES [dbo].[Widgets] ([RecordID])
GO
