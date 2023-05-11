SELECT 
    (SELECT SUM(Total) FROM Invoice WHERE InvoiceDate LIKE '%2009%') AS "Sales(2009)",
    (SELECT SUM(Total) FROM Invoice WHERE InvoiceDate LIKE '%2011%') AS "Sales(2011)",
    ROUND(SUM(Total), 2) AS "TotalSales"
FROM Invoice
WHERE InvoiceDate LIKE '%2009%' OR InvoiceDate LIKE '%2011%'
