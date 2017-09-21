-- 1. Get all customers and their addresses.
SELECT * FROM customers
LEFT JOIN addresses on customers.id = addresses.customer_id;
-- 2. Get all orders and their line items.
SELECT * FROM orders
LEFT JOIN line_items on orders.id = line_items.order_id;
-- 3. Which warehouses have cheetos?
SELECT warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE product_id = 5;
-- 4. Which warehouses have diet pepsi?
SELECT warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE product_id = 6;
-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT COUNT(*), customers.first_name from orders
join addresses on orders.address_id = addresses.id
JOIN customers on addresses.customer_id = customers.id
GROUP BY customers.id;
-- 6. How many customers do we have?
SELECT COUNT(*) from customers;
-- 7. How many products do we carry?
SELECT COUNT(*) from products;
-- 8. What is the total available on-hand quantity of diet pepsi?
