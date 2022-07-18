-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id VARCHAR(30),
product_name VARCHAR(30),
product_price FLOAT, 
quantity INT
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

INSERT INTO orders (person_id, product_name, product_price, quantity)
	VALUES('Meg', 'puzzle', 24.99, 1),
  		  ('Austin', 'baseball cards', 14.99, 3),
          ('Sid', 'video game', 60, 1),
          ('Sri', 'flower pot', 17.99, 2),
          ('Neeha', 'purse', 30, 1);

-- Select all the records from the orders table.

SELECT * FROM orders

-- Calculate the total number of products ordered.

SELECT SUM(quantity) FROM orders;

--8

-- Calculate the total order price.

SELECT SUM(product_price * quantity) FROM orders;

--195.94

-- Calculate the total order price by a single person_id.

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 'Meg'