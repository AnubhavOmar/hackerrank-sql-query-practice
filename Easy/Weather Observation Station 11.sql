-- Problem  : Weather Observation Station 11

SELECT DISTINCT CITY 
FROM STATION
WHERE 
    (
        NOT
        (
            CITY LIKE '%a' OR 
            CITY LIKE '%u' OR 
            CITY LIKE '%o' OR 
            CITY LIKE '%i' OR 
            CITY LIKE '%e'
        )
    )
    OR
    (
        NOT
        (
            CITY LIKE 'a%' OR 
            CITY LIKE 'u%' OR 
            CITY LIKE 'o%' OR 
            CITY LIKE 'i%' OR 
            CITY LIKE 'e%'
        )
    )