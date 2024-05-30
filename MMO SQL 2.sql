USE db_mmorpg
GO

CREATE PROCEDURE spAddChar
@accountName VARCHAR(30),
@charName VARCHAR (30)

AS
BEGIN
	IF EXISTS(SELECT Accname from account WHERE Accname = @accountName)
		BEGIN
			INSERT INTO pCharacter
			VALUES(@charName,0,@accountName)
		END
		ELSE
		BEGIN
			PRINT('The account name does not exist')
			INSERT INTO errors
			VALUES('User gave incorrect ID in procedure spAddChar' +  CAST(GETDATE() AS VARCHAR))
		END
END
