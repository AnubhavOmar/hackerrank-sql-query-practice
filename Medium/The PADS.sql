-- The PADS
-- Difficulty : Medium 

SELECT
    CASE
        WHEN Occupation = 'Doctor'    THEN CONCAT(Name, '(D)')
        WHEN Occupation = 'Actor'     THEN CONCAT(Name, '(A)')
        WHEN Occupation = 'Professor' THEN CONCAT(Name, '(P)')
        WHEN Occupation = 'Singer'    THEN CONCAT(Name, '(S)')
    END AS Result
FROM
    OCCUPATIONS
ORDER BY
    Name;
    
   SELECT
    CONCAT(
        'There are a total of ',
        COUNT(Occupation),
        ' ',
        LOWER(Occupation),
        's.'
    ) AS Summary
FROM
    OCCUPATIONS
GROUP BY
    Occupation
ORDER BY
    COUNT(Occupation),
    Occupation;