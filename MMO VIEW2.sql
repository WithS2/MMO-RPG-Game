USE db_mmorpg
GO

create VIEW vwTopItems
AS
SELECT TOP 5 items.name, COUNT(itemAmount.itemID) AS popularity
FROM itemAmount
JOIN item
ON items.itemID = itemAmount.itemID
GROUP BY items.name
ORDER BY popularity DESC
GO