CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (
	item_id INT AUTO_iNCREMENT PRIMARY KEY NOT NULL,
	product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(11,2) NOT NULL,
    stock_quantity INT NOT NULL
);
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Basketball", "Sporting Goods", "10.99", "10");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Baseball", "Sporting Goods", "2.49", "30");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Football", "Sporting Goods", "19.99", "5");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Soccer ball", "Sporting Goods", "14.99", "7");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Golf ball", "Sporting Goods", "3.49", "100");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Xbox One", "Electronics", "449.99", "5");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Playstation 4 pro", "Electronics", "449.99", "5");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("Nintendo Switch", "Electronics", "249.99", "5");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("45 Inch TV", "Electronics", "199.99", "4");
INSERT INTO products(product_name, department_name, price, stock_quantity) VALUES ("55 Inch TV", "Electronics", "299.99", "4");

