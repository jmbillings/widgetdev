SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [RedGate].[MigrationHistory] ()
RETURNS @Tbl TABLE (PropertyKey VARCHAR(30) UNIQUE, PropertyValue NVARCHAR(MAX))
AS 
BEGIN
    
INSERT  @Tbl  VALUES  ('MigrationHistory' , N'[
  {
    "UpScript": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = ''dbo'' AND TABLE_NAME = ''Table_6'')\r\nBEGIN\r\n     SET @ShouldRunMigrationScript = 0;\r\n     PRINT ''Object ''''[dbo].[Table_6]'''' could not be found - skipping migration.'';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename ''[dbo].[Table_6]'', ''Table_66''\r\nEND\r\n",
    "DownScript": null,
    "Name": "Rename [dbo].[Table_6] to [dbo].[Table_66]",
    "UniqueId": "39da8865-d750-4e01-8c92-0dc1cf27eeb0",
    "Timestamp": "2015-03-06T20:22:01",
    "Order": 0,
    "Description": "Renames the table ''Table_6'' to ''Table_66'' using sp_rename."
  },
  {
    "UpScript": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = ''dbo'' AND TABLE_NAME = ''MyBigFatTable'')\r\nBEGIN\r\n     SET @ShouldRunMigrationScript = 0;\r\n     PRINT ''Object ''''[dbo].[MyBigFatTable]'''' could not be found - skipping migration.'';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename ''[dbo].[MyBigFatTable]'', ''YoMammaBigFatTable''\r\nEND\r\n",
    "DownScript": null,
    "Name": "Rename [dbo].[MyBigFatTable] to [dbo].[YoMammaBigFatTable]",
    "UniqueId": "47116d2e-f477-4506-b883-926f4143cc2b",
    "Timestamp": "2015-06-23T21:36:16",
    "Order": 1,
    "Description": "Renames the table ''MyBigFatTable'' to ''YoMammaBigFatTable'' using sp_rename."
  },
  {
    "UpScript": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = ''dbo'' AND TABLE_NAME = ''YoMammaBigFatTable'')\r\nBEGIN\r\n     SET @ShouldRunMigrationScript = 0;\r\n     PRINT ''Object ''''[dbo].[YoMammaBigFatTable]'''' could not be found - skipping migration.'';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename ''[dbo].[YoMammaBigFatTable]'', ''YourBigFatTable''\r\nEND\r\n",
    "DownScript": null,
    "Name": "Rename [dbo].[YoMammaBigFatTable] to [dbo].[YourBigFatTable]",
    "UniqueId": "986c6683-a0f2-4d5f-ae04-435bdaad791d",
    "Timestamp": "2015-06-23T21:37:40",
    "Order": 2,
    "Description": "Renames the table ''YoMammaBigFatTable'' to ''YourBigFatTable'' using sp_rename."
  },
  {
    "UpScript": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = ''dbo'' AND TABLE_NAME = ''BigFatMomma'')\r\nBEGIN\r\n     SET @ShouldRunMigrationScript = 0;\r\n     PRINT ''Object ''''[dbo].[BigFatMomma]'''' could not be found - skipping migration.'';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename ''[dbo].[BigFatMomma]'', ''BigFatMomma2''\r\nEND\r\n",
    "DownScript": null,
    "Name": "Rename [dbo].[BigFatMomma] to [dbo].[BigFatMomma2]",
    "UniqueId": "26207408-9493-40c9-8e88-00b793b0dd88",
    "Timestamp": "2015-06-23T23:28:48",
    "Order": 3,
    "Description": "Renames the table ''BigFatMomma'' to ''BigFatMomma2'' using sp_rename."
  }
]')
    RETURN
END
GO
