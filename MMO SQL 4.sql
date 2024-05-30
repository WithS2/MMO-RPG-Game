use db_mmorpg
GO
CREATE PROCEDURE spAddItem
@amount INT,
@itemID VARCHAR(30),
@charID VARCHAR(30)
AS
BEGIN
	DECLARE @tCount INT
	IF EXISTS (SELECT name FROM pCharacter WHERE @charID = name)
	BEGIN
	SELECT @tCount = COUNT(*) FROM itemAmount WHERE charName = @charID
		IF @tCount<=64 
			BEGIN 
				INSERT INTO itemAmount 
				VALUES(@amount, @itemID, @charID) 
			END 
	ELSE 
		BEGIN 
			PRINT ('Inventory Stack is Full.') 
			INSERT INTO errors 
			VALUES('User inventory is was full '+ CAST(GETDATE() AS VARCHAR))
		END
	END 
		ELSE 
			BEGIN 
				PRINT ('Please enter a name that exists') 
			END 
END