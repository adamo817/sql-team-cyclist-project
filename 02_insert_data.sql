USE BIT_SWD03;
GO

-- Teams (at least 2)
INSERT INTO Team (teamNumber, teamName)
VALUES
(1, 'Manchester United'),
(2, 'Real Madrid');
GO

-- Cyclists (at least 3)
INSERT INTO Cyclist (cyclistNumber, familyName, givenName, teamNumber)
VALUES
(101, 'Ronaldo', 'Cristiano', 1),
(102, 'Messi', 'Lionel', 1),
(103, 'Curry', 'Steph', 2);
GO
