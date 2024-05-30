use db_mmorpg
GO

CREATE PROCEDURE spSendLetter
@Letter TEXT

AS 
BEGIN
	DECLARE @pName VARCHAR(30)
	DECLARE @account VARCHAR(30)
	DECLARE @email VARCHAR(30)
	DECLARE @country VARCHAR(50)
	DECLARE @time INT

	SELECT *
	INTO #tPerson
	FROM person

	ALTER TABLE #tPerson
	ADD
	done SMALLINT

	UPDATE #tPerson
	SET done = 0

	WHILE EXISTS (SELECT * FROM #tPerson WHERE done = 0)
	BEGIN
		SELECT @email = MIN(email) FROM #tPerson WHERE done = 0

		SELECT @pName = #tPerson.name,
			   @account = account.Accname,
			   @country = #tPerson.country,
			   @time = account.time
		FROM #tPerson
		JOIN account
		ON account.address = #tPerson.email
		WHERE @email = #tPerson.email

		PRINT 'To '+ @email 
		PRINT 'Good Evening '+ @personName  
		PRINT 'Your account ('+@account+') will expire in '+CAST (@time AS 
				VARCHAR)+' days time.'  
 
		IF NOT(@Letter IS NULL) 
		BEGIN 
			PRINT 'LATEST UPDATE NEWS' 
			PRINT @Letter

		END
		UPDATE #tPerson SET done = 1 WHERE @email = email
	END
END
GO