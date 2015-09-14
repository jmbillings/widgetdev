SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[prcActivatePrices]  AS

UPDATE widgetprices SET Active='N' WHERE GetDate()<DateValidTo OR GetDate()>DateValidFrom
UPDATE widgetprices SET Active='Y' WHERE GetDate()>=DateValidFrom OR GetDate()<=DateValidFrom
SELECT 1;
SELECT 2;


GO
DENY EXECUTE ON  [dbo].[prcActivatePrices] TO [public]
GO
