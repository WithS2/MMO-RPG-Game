USE db_mmorpg 
GO 
 
INSERT INTO person VALUES 
('Beerus','Egypt','Master@gmail.com'), 
('Goku','USA','kakarot@hotmail.com'), 
('Frieza','Russia','Freeza@gmail.com'), 
('Vegeta','Brazil','Prince@hotmail.com'),
('Kratos','Greece','GOW@gmail.com')
GO 

INSERT INTO items VALUES 
(1,'Harpoonia','Legandary Item Grants INVICIBIILTY'), 
(2,'Polaris','Melee attacks deal ice damage'), 
(3,'Kamehameha','Press use skill and find out'), 
(4,'LightSaber','Just a lightsaber'), 
(11,'Large Bagpack','Increase Inventory size by 30')
GO 

EXEC spRegister 'Destruction',41,'Master@gmail.com' 
EXEC spRegister 'JustSaiyan',76,'kakarot@hotmail.com' 
EXEC spRegister 'MonkeySlayer',29,'Freeza@gmail.com' 
EXEC spRegister 'PrinceOfAll',0,'Prince@hotmail.com' 
EXEC spRegister 'Chaos',190,'GOW@gmail.com' 
GO 

EXEC spAddChar 'Destruction','HomeWrecker' 
EXEC spAddChar 'Destruction','Foodeater99' 
EXEC spAddChar 'JustSaiyan','HappyHappyHappy' 
EXEC spAddChar 'MonkeySlayer','RulerOfAll76' 
EXEC spAddChar 'PrinceOfAll','BetterThanYou31' 
EXEC spAddChar 'Chaos','Boi' 
GO

EXEC spAddItem 25, 'Eish', 3 
EXEC spAddItem 3, 'WeakBladder', 1 
EXEC spAddItem 75, 'Goofy', 1 
EXEC spAddItem 7, 'BeefCake', 2 
EXEC spAddItem 76, 'AvocadoBear', 900 
EXEC spAddItem 10, 'AvocadoBear', 60 

GO