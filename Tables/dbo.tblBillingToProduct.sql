CREATE TABLE [dbo].[tblBillingToProduct]
(
[BillingToProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductcodeID] [int] NULL,
[billingID] [int] NULL,
[Cost] [money] NULL,
[fee] [money] NULL,
[billingdate] [datetime] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object: Trigger dbo.tblBillingToProduct_ITrig Script Date: 4/28/00 1:14:00 PM ******/
/****** Object: Trigger dbo.tblBillingToProduct_ITrig Script Date: 04/17/2000 04:21:12 PM ******/
CREATE TRIGGER [dbo].[tblBillingToProduct_ITrig] ON [dbo].[tblBillingToProduct] FOR INSERT AS
/*
 * PREVENT INSERTS IF NO MATCHING KEY IN 'tblBillings'
 */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM tblBillings, inserted WHERE (tblBillings.billingID = inserted.billingID))
    BEGIN
        RAISERROR(778398, 16, 1)
        ROLLBACK TRANSACTION
    END
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object: Trigger dbo.tblBillingToProduct_UTrig Script Date: 4/28/00 1:14:00 PM ******/
/****** Object: Trigger dbo.tblBillingToProduct_UTrig Script Date: 04/17/2000 04:21:12 PM ******/
CREATE TRIGGER [dbo].[tblBillingToProduct_UTrig] ON [dbo].[tblBillingToProduct] FOR UPDATE AS
/*
 * PREVENT UPDATES IF NO MATCHING KEY IN 'tblBillings'
 */
IF UPDATE(billingID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM tblBillings, inserted WHERE (tblBillings.billingID = inserted.billingID))
            BEGIN
        RAISERROR(778397, 16, 1)
                ROLLBACK TRANSACTION
            END
    END
GO
ALTER TABLE [dbo].[tblBillingToProduct] ADD CONSTRAINT [aaaaatblBillingToProduct_PK] PRIMARY KEY NONCLUSTERED  ([BillingToProductID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBillingToProduct] WITH NOCHECK ADD CONSTRAINT [FK_tblBillingToProduct_tblProductCode] FOREIGN KEY ([ProductcodeID]) REFERENCES [dbo].[tblProductCode] ([ProductCodeID]) NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[tblBillingToProduct] NOCHECK CONSTRAINT [FK_tblBillingToProduct_tblProductCode]
GO
