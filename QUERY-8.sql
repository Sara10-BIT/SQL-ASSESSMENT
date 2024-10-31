SELECT
    EXTRACT(YEAR FROM CREATED_DATE) AS Year,
    SUM(Quantity_Sold * Sale_Price) AS TotalRevenue
FROM
    SALE_PROJECT
GROUP BY
    Year
ORDER BY
    Year;


