SELECT COUNT(*) AS NumberOfInvoices,
BillingCountry
FROM Invoice
GROUP BY BillingCountry