SELECT total AS toplam_tutar
FROM invoice
WHERE billing_country = 'USA' 
  AND EXTRACT(YEAR FROM invoice_date) = 2009;