use db_mmorpg
GO

CREATE PROCEDURE spRegister
@name VARCHAR(30),
@timeB INT,
@email VARCHAR(50)
AS
BEGIN

IF NOT EXISTS (SELECT accname FROM account WHERE Accname = @name)
	BEGIN
		if @timeB > 0
			BEGIN
				PRINT('Please enter a time higher than 0')
				INSERT INTO errors
				VALUES('User entered a time that is lower than 0' + CAST(GETDATE() AS VARCHAR))
			END
		INSERT INTO account 
		VALUES(@name,@timeB,@email)
	END
ELSE
	BEGIN
		PRINT('That account already exists') 
		INSERT INTO errors 
		VALUES('The User entered an accounted that already existed '+ CAST(GETDATE() AS VARCHAR)) 
	END
END

		