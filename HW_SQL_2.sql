/*
1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
*/

CREATE TABLE sales (
      id INT NOT NULL,
      order_date DATE NOT NULL,
      bucket VARCHAR(45) NOT NULL,
      PRIMARY KEY (id)
    );
  
INSERT INTO sales 
VALUES
	(1, '2021-01-01', '100 to 300'),
    (2, '2021-01-02', '100 to 300'),
    (3, '2021-01-03', 'less than equal to 100'),
    (4, '2021-01-04', '100 to 300'),
    (5, '2021-01-05', 'greater than 300');
    
SELECT * from sales  

/*
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
*/

SELECT id, order_date, bucket,
CASE bucket
    WHEN 'less than equal to 100' THEN 'меньше 100'
    WHEN  '100 to 300' THEN '100-300'
    ELSE 'больше 300'
END AS order_size
FROM sales;

/*
3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
*/

CREATE TABLE orders_ (
    orderid INT NOT NULL,
    employeeid VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    orderstatus VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderid)
);

INSERT INTO orders
VALUES
	(1, 'e03', 15.00, 'OPEN'),
  	(2, 'e01', 25.50, 'OPEN'),
 	(3, 'e05', 100.70, 'CLOSED'),
  	(4, 'e02', 22.18, 'OPEN'),
  	(5, 'e04', 9.50, 'CANCELLED'),
  	(6, 'e04', 99.99, 'OPEN');

SELECT * from orders

SELECT orderid, orderstatus,
CASE orderstatus
    WHEN 'OPEN' THEN 'Order is in open state.'
    WHEN 'CLOSED' THEN 'Order is closed.'
    ELSE 'Order is cancelled.'
END AS order_summary
FROM orders;

/*
4. Чем NULL отличается от 0?
"0" — это значение, константа. 
A "NULL" указывает на "пустое место" — объявленную, но неинициализированную переменную, объект и т.п.
*/
