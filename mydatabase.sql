-- Create the database
CREATE DATABASE IF NOT EXISTS mydatabase;

-- Switch to the new database
USE mydatabase;

-- Create the 'users' table
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50)
);

-- Create the 'orders' table
CREATE TABLE IF NOT EXISTS orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  product VARCHAR(50),
  quantity INT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert sample data into the 'users' table
INSERT INTO users (name, email) VALUES
  ('John Doe', 'john@example.com'),
  ('Jane Smith', 'jane@example.com');

-- Insert sample data into the 'orders' table
INSERT INTO orders (user_id, product, quantity) VALUES
  (1, 'Product A', 2),
  (2, 'Product B', 1);
