--Consulta 1:
SELECT
    p.name,
    SUM(
        CASE
            WHEN im.movement_type = 'IN' THEN im.quantity
            ELSE -im.quantity
        END
    ) AS stock_available
FROM riwi_movements im
JOIN riwi_products p
    ON im.id_product = p.id_product
GROUP BY p.name
ORDER BY stock_available DESC;


-- consulta  2

SELECT
    im.id_movements,
    p.name,
    w.name,
    im.movement_type,
    im.quantity,
    im.movement_date
FROM riwi_movements im
JOIN riwi_products p
    ON im.id_product= p.id_product
JOIN riwi_warehouse w
    ON im.id_warehouse = w.id_warehouse
ORDER BY im.movement_date DESC;

--consulta 3

SELECT
    s.name,
    SUM(im.quantity * im.unit_price) AS total_purchased
FROM riwi_supplier s
JOIN riwi_purchases pu
    ON s.id_supplier = pu.id_supplier
JOIN riwi_movements im
    ON pu.id_purchase = im.id_purchase
GROUP BY s.name
ORDER BY total_purchased DESC;

--consulta 4
SELECT
    w.name,
    COUNT(im.id_movements) AS total_movements
FROM riwi_warehouse w
JOIN riwi_movements im
    ON w.id_warehouse = im.id_warehouse
GROUP BY w.name
ORDER BY total_movements DESC;

--Consulta 5
SELECT
    p.name,
    SUM(im.quantity) AS total_quantity
FROM riwi_products p
JOIN riwi_movements im
    ON p.id_product= im.id_product
WHERE im.movement_type = 'IN'
GROUP BY p.name
ORDER BY total_quantity DESC
LIMIT 1;

--consulta 6 
SELECT
    w.name,
    SUM(
        CASE
            WHEN im.movement_type = 'IN'
            THEN im.quantity * im.unit_price
            ELSE -(im.quantity * im.unit_price)
        END
    ) AS inventory_value
FROM riwi_warehouse w
JOIN riwi_movements im
    ON w.id_warehouse = im.id_warehouse 
GROUP BY w.name
ORDER BY inventory_value DESC;

