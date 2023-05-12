SELECT
i.BillingCountry,
ROUND(SUM(i.Total),2) AS TotalSales
FROM Invoice i
GROUP BY i.BillingCountry