USE BIT_SWD03;
GO

-- 1) Teams A–Z
SELECT teamNumber, teamName
FROM TeamPortfolio
ORDER BY teamName;
GO

-- 2) Cyclists A–Z
SELECT cyclistNumber, familyName, givenName, teamNumber
FROM CyclistPortfolio
ORDER BY familyName, givenName;
GO

-- 3) Cyclists + Team name (JOIN)
SELECT
    c.cyclistNumber,
    c.familyName,
    c.givenName,
    t.teamName
FROM CyclistPortfolio AS c
JOIN TeamPortfolio AS t
    ON c.teamNumber = t.teamNumber
ORDER BY t.teamName, c.familyName, c.givenName;
GO

-- 4) Cyclists per team (GROUP BY)
SELECT
    t.teamName,
    COUNT(*) AS cyclistCount
FROM CyclistPortfolio AS c
JOIN TeamPortfolio AS t
    ON c.teamNumber = t.teamNumber
GROUP BY t.teamName
ORDER BY cyclistCount DESC;
GO

-- 5) Filter example
SELECT
    c.cyclistNumber,
    c.familyName,
    c.givenName,
    t.teamName
FROM CyclistPortfolio AS c
JOIN TeamPortfolio AS t
    ON c.teamNumber = t.teamNumber
WHERE t.teamName = 'Real Madrid'
ORDER BY c.familyName, c.givenName;
GO

-- 6) LIKE example
SELECT cyclistNumber, familyName, givenName
FROM CyclistPortfolio
WHERE familyName LIKE 'M%'
ORDER BY familyName, givenName;
GO
