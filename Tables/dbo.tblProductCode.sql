CREATE TABLE [dbo].[tblProductCode]
(
[ProductCodeID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblProductCode] ADD CONSTRAINT [tblProductCodePK] PRIMARY KEY CLUSTERED  ([ProductCodeID]) ON [PRIMARY]
GO
