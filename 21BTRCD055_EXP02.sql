#NAME : RAJESHWAR VOLETI
#USN : 21BTRCD055
#BRANCH : CSE - DATA SCIENCE


CREATE DATABASE EXPP;
USE EXPP;

-- create the orders table
CREATE TABLE Bikes (
  Model VARCHAR(50) PRIMARY KEY,
  Company VARCHAR(50) NOT NULL,
  Chassis INT NOT NULL,
  Torque INT NOT NULL
);

-- insert sample data
INSERT INTO Bikes VALUES
('GSA 1250','BMW', 12345 ,35),
('GS 1200','BMW', 92344 ,33),
('Rocket 2500','Triumph',67434 ,27),
('Tiger 1200','Triumph', 51345 ,29);


SELECT company,Torque FROM Bikes;
-- create the recent_orders view
CREATE VIEW Models AS
SELECT *
FROM Bikes
WHERE Torque>30;


-- show the recent_orders view
SELECT * FROM Models;

-- alter the recent_orders view to show only the order_id, product_name, and quantity columns
ALTER VIEW Models AS
SELECT Model
FROM Bikes
WHERE Torque>30;

-- show the recent_orders view with the updated columns
SELECT * FROM Models;

-- update the recent_orders view to include only orders with a quantity greater than 10
CREATE OR REPLACE VIEW Models AS
SELECT Model,Chassis
FROM Bikes
WHERE Torque>=29;

-- show the recent_orders view with the updated quantity condition
SELECT * FROM Models;