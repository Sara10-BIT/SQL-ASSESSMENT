SELECT
    S.Product_ID,
    SUM(S.Quantity_SOLD) AS TotalQuantitySold
FROM
    Sale_PROJECT AS S
JOIN
    GOLD_USER_SIGNUP AS U ON S.User_ID = U.User_ID
WHERE
    U.Membership = 'GOLD'
GROUP BY
    S.Product_ID
ORDER BY
    TotalQuantitySold DESC
LIMIT 1;
