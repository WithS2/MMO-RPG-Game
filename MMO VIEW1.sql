USE db_mmorpg
GO

CREATE VIEW vwBlocked
AS
SELECT * FROM account WHERE time = 0
GO

SELECT * FROM vwBlocked
GO