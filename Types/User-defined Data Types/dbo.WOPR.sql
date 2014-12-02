CREATE TYPE [dbo].[WOPR] FROM bigint NOT NULL
GO
EXEC sp_bindefault N'[dbo].[WOPRdefault]', N'[dbo].[WOPR]'
GO
