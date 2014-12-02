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
    "UpScript": "/*\r\nWrite the migration script to be included in the deployment script.\r\n\r\nMigration scripts are run at the beginning of the deployment. We \r\nrecommend you include guard clauses to make sure the objects you''re \r\nmodifying exist before the rest of the script runs.\r\n\r\nYou can see examples of migration scripts at http://documentation.red-gate.com/display/MV2.\r\n*/\r\n\r\nDECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.[Tables] WHERE table_schema = ''dbo'' AND TABLE_NAME = ''Jeff'')\r\nBEGIN\r\n     SET @ShouldRunMigrationScript = 0;\r\n     PRINT ''Object ''''[dbo].[Jeff]'''' could not be found - skipping migration.'';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nCREATE TABLE dbo.Jeff\r\n(\r\nID INT NOT NULL\r\n)\r\nEND\r\n",
    "DownScript": null,
    "Name": "Bob the script",
    "UniqueId": "552807cd-c6b1-4a6e-80cb-90d25bb50423",
    "Timestamp": "2014-11-03T15:05:55",
    "Order": 0,
    "Description": "Which actually creates Jeff. Weird huh?"
  }
]')
    RETURN
END
GO
