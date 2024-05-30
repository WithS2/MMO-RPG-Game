USE db_mmorpg
GO

CREATE VIEW vwTopStackedItems
AS
SELECT TOP 20 items.name, items.description, itemAmount.itemsPerChar,pCharacter.name AS CharName, pCharacter.skill
FROM pCharacter
JOIN itemAmount
ON pCharacter.name = itemAmount.charName
JOIN items
ON items.itemID = itemAmount.charName
ORDER BY itemAmount.itemsPerChar DESC
GO

SELECT * FROM vwTopStackedItems