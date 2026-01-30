USE BIT_SWD03;
GO

INSERT INTO TeamPortfolio (teamNumber, teamName)
VALUES
(1, 'Manchester United'),
(2, 'Real Madrid'),
(3, 'Barcelona');
GO

INSERT INTO CyclistPortfolio (cyclistNumber, familyName, givenName, teamNumber)
VALUES
(101, 'Ronaldo', 'Cristiano', 1),
(102, 'Messi', 'Lionel', 3),
(103, 'Curry', 'Steph', 2),
(104, 'Modric', 'Luka', 2),
(105, 'Rashford', 'Marcus', 1);
GO
