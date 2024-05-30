USE db_mmorpg
GO

CREATE VIEW vwTopSkill
AS
SELECT TOP 5 pCharacter.name AS 'PlayerCharacterName', pCharacter.skill, account.Accname, account.time, account.address
FROM pCharacter
JOIN account
ON pCharacter.skill = account.Accname
ORDER BY pCharacter.skill DESC
GO

SELECT * FROM vwTopSkill
GO