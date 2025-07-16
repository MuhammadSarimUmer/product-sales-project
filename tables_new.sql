-- customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name TEXT
);

-- orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- support_tickets table
CREATE TABLE support_tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    ticket_date DATE,
    issue TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
