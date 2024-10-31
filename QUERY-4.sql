SELECT
    SUM(Sale_PRICE) AS GoldUserRevenue
FROM
    GOLD_USER_SIGNUP AS S
JOIN
    Users_PROJECT AS U ON S.User_ID = U.User_ID
WHERE
    S.Membership = 'GOLD';
