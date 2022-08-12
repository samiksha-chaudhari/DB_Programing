-----------INNER JOIN-------------
SELECT
    order_status,
    order_date,
    shipped_date,
	quantity,
	list_price
FROM
    sales.orders o
INNER JOIN  sales.order_items i 
    ON i.order_id = o.order_id;
	   	 


SELECT
    product_name,
    category_name,
    list_price
FROM
    production.products p
INNER JOIN production.categories c 
    ON c.category_id = p.category_id
ORDER BY
    product_name DESC;



SELECT
    product_name,
    category_name,
    brand_name,
    list_price
FROM
    production.products p
INNER JOIN production.categories c ON c.category_id = p.category_id
INNER JOIN production.brands b ON b.brand_id = p.brand_id
ORDER BY
    product_name DESC;



--------LEFT JOIN----------

SELECT
    product_name,
	model_year,
	p.list_price,
    order_id,
	quantity,
	o.list_price,
	discount
FROM
    production.products p
LEFT JOIN sales.order_items o ON o.product_id = p.product_id
ORDER BY
    order_id;


SELECT
    product_name,
    order_id
FROM
    production.products p
LEFT JOIN sales.order_items o 
   ON o.product_id = p.product_id
WHERE order_id = 100


SELECT
    p.product_id,
    product_name,
    order_id
FROM
    production.products p
    LEFT JOIN sales.order_items o 
         ON o.product_id = p.product_id AND 
            o.order_id = 100




--------RIGHT JOIN---------

SELECT
    product_name,
	model_year,
	p.list_price,
    order_id,
	quantity,
	o.list_price,
	discount
FROM
    production.products p
RIGHT JOIN sales.order_items o ON o.product_id = p.product_id
ORDER BY
    order_id;


SELECT
    product_name,
    order_id
FROM
    production.products p
RIGHT JOIN sales.order_items o 
   ON o.product_id = p.product_id
WHERE order_id = 100


SELECT
    p.product_id,
    product_name,
    order_id
FROM
    production.products p
    RIGHT JOIN sales.order_items o 
         ON o.product_id = p.product_id AND 
            o.order_id = 100



SELECT
    product_name,
    order_id,	    
	quantity,
	o.list_price,
	discount

FROM
    sales.order_items o
    RIGHT JOIN production.products p 
        ON o.product_id = p.product_id
WHERE 
    order_id IS NULL
ORDER BY
    product_name;


-------FULL OUTER JOIN---------


SELECT
    product_name,
	model_year,
	p.list_price,
    order_id,
	quantity,
	o.list_price,
	discount
FROM
    production.products p
FULL OUTER JOIN sales.order_items o ON o.product_id = p.product_id
ORDER BY
    order_id;