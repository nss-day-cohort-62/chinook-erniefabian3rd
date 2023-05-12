SELECT COUNT(*) AS line_item_per_invoice
FROM InvoiceLine
GROUP BY InvoiceId