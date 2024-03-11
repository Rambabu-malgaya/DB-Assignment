

-- Create the Database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS ECommerce;

-- Use the ECommerce Database
USE ECommerce;

-- Create the Product_Category Table
CREATE TABLE Product_Category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

-- Create the Product Table
CREATE TABLE Product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  SKU VARCHAR(255),
  category_id INT,
  inventory_id INT,
  price DECIMAL(10, 2),
  discount_id INT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);

-- Additional Tables (You can add more tables based on your needs)
CREATE TABLE Product_Inventory (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantity INT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE Discount (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  desc TEXT,
  discount_percent DECIMAL(5, 2),
  active BOOLEAN,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

-- Create a Foreign Key relationship between Product and Product_Inventory
ALTER TABLE Product
  ADD CONSTRAINT fk_inventory
  FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id);

-- Create a Foreign Key relationship between Product and Discount
ALTER TABLE Product
  ADD CONSTRAINT fk_discount
  FOREIGN KEY (discount_id) REFERENCES Discount(id);
