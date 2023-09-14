WITH VendasPorProduto AS (
    SELECT
        p.name AS NomeProduto,
        p.days_to_manufacture,
        SUM(sod.order_qtd) AS TotalVendido
    FROM sollim.sales_detail sod
    INNER JOIN sollim.special_offer sop ON sod.product_id = sop.product_id
    INNER JOIN sollim.product p ON sod.product_id = p.product_id
    GROUP BY p.Name, p.days_to_manufacture
)

SELECT
    NomeProduto,
    days_to_manufacture,
    TotalVendido
FROM (
    SELECT
        NomeProduto,
        days_to_manufacture,
        TotalVendido,
        RANK() OVER (PARTITION BY days_to_manufacture ORDER BY TotalVendido DESC) AS Ranking
    FROM VendasPorProduto
) AS RankedData
WHERE Ranking <= 3
ORDER BY days_to_manufacture, Ranking;

