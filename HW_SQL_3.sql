/*
Создание таблицы 1.
*/

CREATE TABLE salespeople (
      snum INT UNIQUE,
      sname CHAR(15) NOT NULL,
      city CHAR(15) NOT NULL,
      comm DECIMAL(5,2) NOT NULL,
      PRIMARY KEY (snum)
  	);

INSERT INTO salespeople
VALUES
      (1001, 'Peel', 'London', 0.12),
      (1002, 'Serres', 'San Jose', 0.13),
      (1004, 'Motika', 'London', 0.11),
      (1007, 'Rifkin', 'Barcelona', 0.15),
      (1003, 'Axelrod', 'New York', 0.10);

SELECT * from salespeople

/*
Создание таблицы 2.
*/

CREATE TABLE customers (
      cnum INT UNIQUE,
      cname CHAR(10) NOT NULL,
      city CHAR(10) NOT NULL,
      rating INT NOT NULL,
      snum INT,
      PRIMARY KEY (cnum),
	  FOREIGN KEY (snum) REFERENCES salespeople (snum)
	);

INSERT INTO customers(cnum, cname, city, rating, snum)
VALUES
      (2001, 'Hoffman', 'London', 100, 1001),
      (2002, 'Giovanni', 'Rome', 200, 1003),
      (2003, 'Liu', 'SanJose', 200, 1002),
      (2004, 'Grass', 'Berlin', 300, 1002),
      (2006, 'Clemens', 'London', 100, 1001),
      (2008, 'Cisneros', 'SanJose', 300, 1007),
      (2007, 'Pereira', 'Rome', 100, 1004);
      
SELECT * from customers
/*
Создание таблицы 3.
*/

CREATE TABLE orders (
      onum INT UNIQUE,
      amt DECIMAL(7,2) NOT NULL,
      odate DATE NOT NULL,
      cnum INT,
      snum INT,
      PRIMARY KEY (onum),
      FOREIGN KEY (cnum)  REFERENCES customers (cnum),
      FOREIGN KEY (snum)  REFERENCES salespeople (snum)
	);

INSERT INTO orders(onum, amt, odate, cnum, snum)
VALUES
      (3001, 18.69, '10/03/1990', 2008, 1007),
      (3003, 767.19, '10/03/1990', 2001, 1001),
      (3002, 1900.10, '10/03/1990', 2007, 1004),
      (3005, 5160.45, '10/03/1990', 2003, 1002),
      (3006, 1098.16, '10/03/1990', 2008, 1007),
      (3009, 1713.23, '10/04/1990', 2002, 1003),
      (3007, 75.75, '10/04/1990', 2004, 1002),
      (3008, 4723.00, '10/05/1990', 2006, 1001),
      (3010, 1309.95, '10/06/1990', 2004, 1002),
      (3011, 9891.88, '10/06/1990', 2006, 1001);

SELECT * from orders

 /*
Задание №1
*/
SELECT city, sname, sname, comm
FROM salespeople;

 /*
Задание №2
*/
SELECT DISTINCT(cname) AS name, rating 
FROM customers
WHERE city = 'SanJose';

 /*
Задание №3
*/
SELECT DISTINCT(snum) AS продавцы  
FROM orders;

 /*
Задание №4
*/
SELECT cname
FROM customers
WHERE cname LIKE 'G%';

 /*
Задание №5
*/
SELECT *
FROM orders
WHERE amt > 1000;

 /*
Задание №6
*/
SELECT MIN(amt)
FROM orders;

 /*
Задание №7
*/
SELECT *
FROM customers
WHERE (rating > 100) AND (city != 'Rome');

 /*
Создание таблицы
*/ 

CREATE TABLE workers (
      id INT UNIQUE,
      name VARCHAR(20) NOT NULL,
      surname VARCHAR(20) NOT NULL,
      specialty VARCHAR(20) NOT NULL,
      seniority INT NOT NULL,
      salary INT NOT NULL,
      age INT NOT NULL,
      PRIMARY KEY (id),
	);

INSERT INTO workers
VALUES
      (1, 'Вася', 'Васькин', 'начальник', 40, 100000, 60),
      (2, 'Петя', 'Петькин', 'начальник', 8, 70000, 30),
      (3, 'Катя', 'Каткина', 'инженер', 2, 70000, 25),
      (4, 'Саша', 'Сашкин', 'инженер', 12, 50000, 35),
      (5, 'Иван', 'Иванов', 'рабочий', 40, 30000, 59),
      (6, 'Петр', 'Петров', 'рабочий', 20, 25000, 40),
      (7, 'Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
      (8, 'Антон', 'Антонов', 'рабочий', 8, 19000, 28),
      (9, 'Юра', 'Юркин', 'рабочий', 5, 15000, 25),
      (10, 'Максим', 'Воронин', 'рабочий', 2, 11000, 22),
      (11, 'Юра', 'Галкин', 'рабочий', 3, 12000, 24),
      (12, 'Люся', 'Люськина', 'уборщик', 10, 10000, 49);

SELECT * from workers

/*
Задание №1 сортировка по возрастанию
*/
SELECT * FROM workers
ORDER BY salary;

/* Задание №1 сортировка по убыванию */
SELECT * FROM workers
ORDER BY salary DESC;

/* Задание №2 */
SELECT * FROM workers
ORDER BY salary
LIMIT 5;

/* Задание №3 */
SELECT specialty, COUNT(*) AS specialty FROM workers
WHERE salary > 100000
GROUP BY workers;



