SELECT
    Product_ID,
    SUM(Quantity_Sold * Sale_Price) AS TotalRevenue
FROM
    Sale_PROJECT
GROUP BY
    Product_ID
ORDER BY
    TotalRevenue DESC
LIMIT 3;