SELECT p.Product_Name, SUM(s.Quantity_SOLD) AS TotalQuantitySold FROM Sale_PROJECT AS s
JOIN USERS_PROJECT u ON s.User_ID = u.User_ID
JOIN GOLD_USER_SIGNUP AS G ON U.USER_ID = G.USER_ID
JOIN Products_PROJECT p ON s.Product_ID = p.Product_ID
WHERE G.Membership = 'GOLD'
GROUP BY p.Product_Name
ORDER BY TotalQuantitySold DESC
LIMIT 1;

