USE db_mmorpg
GO
CREATE PROCEDURE spAddTime
@name VARCHAR(30),
@time INT
AS
BEGIN
IF EXISTS (SELECT accName FROM account WHERE accName = @name)
	BEGIN
		UPDATE account
		set time = @time WHERE Accname = @name
	END
	ELSE
		BEGIN
			PRINT('Account name does not exist')
			INSERT INTO errors
			VALUES('User entered invalid account name in spAddTime'+ CAST(GETDATE() AS VARCHAR)) 
		END
END