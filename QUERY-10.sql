SELECT 
    COUNT(*) AS GoldSignups,
    (SELECT COUNT(*) FROM Users_PROJECT) AS TotalSignups,
    ((SELECT COUNT(*) FROM GOLD_USER_SIGNUP WHERE Membership = 'GOLD') * 1.0 / (SELECT COUNT(*) FROM Users_PROJECT)) AS AverageGoldSignupRatio
FROM 
    GOLD_USER_SIGNUP 
WHERE 
    Membership = 'GOLD';
