
CREATE TABLE Monasteries
(
    Id INT IDENTITY,
    Name VARCHAR(50),
    CountryCode CHAR(2) FOREIGN KEY REFERENCES Countries(CountryCode) NOT NULL
)

INSERT INTO Monasteries(Name, CountryCode) VALUES
    ('Rila Monastery “St. Ivan of Rila”', 'BG'), 
    ('Bachkovo Monastery “Virgin Mary”', 'BG'),
    ('Troyan Monastery “Holy Mother''s Assumption”', 'BG'),
    ('Kopan Monastery', 'NP'),
    ('Thrangu Tashi Yangtse Monastery', 'NP'),
    ('Shechen Tennyi Dargyeling Monastery', 'NP'),
    ('Benchen Monastery', 'NP'),
    ('Southern Shaolin Monastery', 'CN'),
    ('Dabei Monastery', 'CN'),
    ('Wa Sau Toi', 'CN'),
    ('Lhunshigyia Monastery', 'CN'),
    ('Rakya Monastery', 'CN'),
    ('Monasteries of Meteora', 'GR'),
    ('The Holy Monastery of Stavronikita', 'GR'),
    ('Taung Kalat Monastery', 'MM'),
    ('Pa-Auk Forest Monastery', 'MM'),
    ('Taktsang Palphug Monastery', 'BT'),
    ('Sümela Monastery', 'TR')

--  --- The following commented lines should not be pasted into Judge

-- ALTER TABLE Countries
-- ADD IsDeleted BIT 

-- UPDATE Countries
-- SET IsDeleted = 0


UPDATE [Countries]
SET [IsDeleted] = 1
WHERE [CountryCode] IN
(
    SELECT c.[CountryCode] FROM [Countries] AS c
    JOIN 
    (
        SELECT
            cr.[CountryCode],
            COUNT(RiverId) AS [RiversCount]
        FROM [Countries] AS c
        JOIN [CountriesRivers] AS cr ON c.[CountryCode] = cr.[CountryCode]    
        GROUP BY cr.[CountryCode]
    ) AS [temp] ON c.[CountryCode] = temp.[CountryCode]
    WHERE [RiversCount] > 3
)

SELECT 
    m.[Name] AS Monastery,
    c.[CountryName] AS Country
FROM [Monasteries] AS m 
JOIN [Countries] AS c ON m.[CountryCode] = c.[CountryCode]
WHERE c.[IsDeleted] = 0
ORDER BY [Monastery] ASC