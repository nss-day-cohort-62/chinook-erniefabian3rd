SELECT
COUNT(*) AS LineItemPerInvoice,
InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId