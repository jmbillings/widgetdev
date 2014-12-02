CREATE TABLE [dbo].[tblBillings]
(
[billingID] [int] NOT NULL,
[billingThing] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[billingOtherThing] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[billingMoarThing] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[myTrigger] 
   ON  [dbo].[tblBillings] 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	SELECT 1;
END
GO
ALTER TABLE [dbo].[tblBillings] ADD CONSTRAINT [tblBillingsPK] PRIMARY KEY CLUSTERED  ([billingID]) ON [PRIMARY]
GO
