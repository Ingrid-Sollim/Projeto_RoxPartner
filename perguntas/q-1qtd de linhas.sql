
--SELECT top(10) * FROM [sollim].[sales_detail]
SELECT sales_order_id, COUNT(*) AS QuantidadeDeLinhas
FROM [sollim].[sales_detail]
GROUP BY sales_order_id
HAVING COUNT(*) >= 3;
