SELECT
    p.Product_Name,
    SUM(s.QUANTITY_SOLD) AS TotalQuantitySold
FROM
    SALE_PROJECT AS s
JOIN
    PRODUCTS_PROJECT AS p ON s.Product_ID = p.Product_ID
GROUP BY
    p.Product_Name
ORDER BY
    TotalQuantitySold DESC
LIMIT 1;