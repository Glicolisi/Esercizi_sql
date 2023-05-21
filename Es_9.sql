
CREATE TABLE CUSTOMERS (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(40),
  SURNAME VARCHAR(40),
  UNIQUE (ID)
);

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Aldo','Baglio');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Giovanni','Storti');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Giacomo','Poretti');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Silvana','Fallisi');

UPDATE CUSTOMERS
SET NAME = 'Giacomino'
WHERE ID = 3;

DELETE FROM CUSTOMERS
WHERE ID = 4;

TRUNCATE TABLE CUSTOMERS;



Look at the tables below and write which column(s) you think would make a good primary key.

Question->La colonna customer_id verrà utilizzata come chiave primaria perchè univoca per ogni riga

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
);

Question->Tutte le colonne dovrebbero essere chiavi primarie perchè nessuna può essere considerata univoca

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);

Question->La colonna order_id verrà utilizzata come chiave primaria perchè univoca per ogni riga

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);

9 - Question->Le colonne product_name e total_revenue insieme perchè order_id verrà utilizzata come foreign key

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);

