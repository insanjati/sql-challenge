-- #1
-- Update item price with SKU AROG-001 to 14000000.
UPDATE items
SET price = 14000000
WHERE sku = 'AROG-001';


-- #2
-- Find all users who have never logged in.
SELECT username
FROM users
WHERE last_login IS NULL;


-- #3
-- Find all items that contains "mac".
SELECT *
FROM items
WHERE name LIKE '%mac%';


-- #4
-- Count all paid orders with SKU IPHX-001.
SELECT SUM(total) AS paid_orders
FROM orders
WHERE item LIKE '%IPHX-001%' AND status = 'paid';


-- #5
-- Find lowest price of all items.
SELECT * FROM items
ORDER BY price LIMIT 1;


-- #6
-- Find highest price of all items.
SELECT * FROM items
ORDER BY price DESC
LIMIT 1;


-- #7
-- Find average price of all items.
SELECT AVG(price) AS average_price
FROM items;


-- #8
-- Find all orders made in February 2018.
SELECT *
FROM orders
WHERE created_at LIKE '%2018-02%';


-- #9
-- Find all orders made between 1st March to 15th March.
SELECT *
FROM orders
WHERE created_at BETWEEN '2018-03-01 00:00:00.000000' AND '2018-03-16 00:00:00.000000';


-- #10
-- Find all items was sold in February 2018.
SELECT items.name, orders.created_at AS sold_at
FROM items
JOIN orders ON items.price = orders.total -- unsure
WHERE orders.created_at LIKE '%2018-02%';

-- #11
-- Find all paid orders in March 2018.
SELECT item, created_at AS paid FROM orders
WHERE status = 'paid'AND created_at LIKE '%2018-03%';


-- #12
-- Sum all total orders, with status canceled – made by user with ID 1.
SELECT SUM(total) FROM orders
WHERE user_id = 1 AND status = 'canceled';

-- #13
-- Sum all total orders, with status paid – made by user with ID 3.
SELECT SUM(total) FROM orders
WHERE user_id = 3 AND status = 'paid';

-- #14
-- Find all paid orders with courier ID 2 made by user ID 1.
SELECT * FROM orders
JOIN couriers ON orders.courier_id = couriers.id
WHERE couriers.id = 2;

-- #15
-- Find all orders that contains SKU IPHX-001.
SELECT * FROM orders
WHERE item LIKE '%IPHX-001%';