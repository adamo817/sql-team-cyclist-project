USE BIT_SWD03;
GO

DROP TABLE IF EXISTS CyclistPortfolio;
DROP TABLE IF EXISTS TeamPortfolio;
GO

CREATE TABLE TeamPortfolio (
    teamNumber INT NOT NULL,
    teamName VARCHAR(50) NOT NULL,
    CONSTRAINT PK_TeamPortfolio PRIMARY KEY (teamNumber)
);
GO

CREATE TABLE CyclistPortfolio (
    cyclistNumber INT NOT NULL,
    familyName VARCHAR(50) NOT NULL,
    givenName VARCHAR(50) NOT NULL,
    teamNumber INT NOT NULL,
    CONSTRAINT PK_CyclistPortfolio PRIMARY KEY (cyclistNumber),
    CONSTRAINT FK_CyclistPortfolio_TeamPortfolio
        FOREIGN KEY (teamNumber) REFERENCES TeamPortfolio(teamNumber)
);
GO

