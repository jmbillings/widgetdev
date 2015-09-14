CREATE TABLE [dbo].[BigFatMomma12]
(
[Id] [int] NOT NULL,
[poo] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[willy] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BigFatMomma12] ADD CONSTRAINT [PK__MyBigFatTable__1ACDA274] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
