CREATE ROLE [fooRole]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'fooRole', N'someUser'
GO
