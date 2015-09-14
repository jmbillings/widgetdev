CREATE TABLE [dbo].[ContactsThree]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PhoneWork] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneMobile] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address3] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JoiningDate] [datetime] NULL CONSTRAINT [DF__Contacts__Joinin__164452B1] DEFAULT (getdate()),
[Email] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Twitter] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tinder] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AshleyMadisonId] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ContactsThree] ADD CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
