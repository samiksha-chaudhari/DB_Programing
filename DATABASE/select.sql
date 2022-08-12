SELECT
   *
FROM
    sales.customers;


SELECT
    first_name,
    last_name
FROM
    sales.customers;


SELECT
    first_name,
    last_name,
	phone
FROM
    sales.customers
WHERE
	phone  is null;


SELECT
    first_name,
    last_name,
	phone
FROM
    sales.customers
WHERE
	phone  is not null;


SELECT
    *
FROM
    sales.customers
WHERE
	state  = 'ny'
ORDER BY
    first_name;

SELECT
    *
FROM
    sales.customers
WHERE
	state  = 'ny'
ORDER BY
    first_name desc;


SELECT
    city,
    COUNT (*)
FROM
    sales.customers
WHERE
    state = 'CA'
GROUP BY
    city
ORDER BY
    city;

SELECT
    city,
    COUNT (*)
FROM
    sales.customers
WHERE
    state = 'CA'
GROUP BY
    city
HAVING
    COUNT (*) > 10
ORDER BY
    city;
