CREATE TABLE  AUTO (       
        REGNUM VARCHAR(10) PRIMARY KEY, 
        MARK VARCHAR(10), 
        COLOR VARCHAR(15),
        RELEASEDT DATE, 
        PHONENUM VARCHAR(15)
	);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111114,'LADA', 'КРАСНЫЙ', '2008-01-01', '9152222221');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111115,'VOLVO', 'КРАСНЫЙ', '2013-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111116,'BMW', 'СИНИЙ', '2015-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111121,'AUDI', 'СИНИЙ', '2009-01-01', '9173333332');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111122,'AUDI', 'СИНИЙ', '2011-01-01', '9213333336');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111113,'BMW', 'ЗЕЛЕНЫЙ', '2007-01-01', '9214444444');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111126,'LADA', 'ЗЕЛЕНЫЙ', '2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111117,'BMW', 'СИНИЙ', '2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111119,'LADA', 'СИНИЙ', '2017-01-01', 9213333331);

SELECT * from AUTO 

/* Задание №1 */

SELECT color, mark, count(1)
FROM auto 
WHERE mark IN ('BMW','LADA') 
GROUP BY color, mark;

/* Задание №2 */

SELECT DISTINCT mark, (select count(1) 
FROM auto a1 
WHERE a1.mark != a.mark) AS c 
FROM auto a;

/* Задание №3 */

create table test_a (
      id int, 
      data VARCHAR (1)
  );
create table test_b (
  id int
  );
  
insert into test_a (id, data) 
values
    (10, 'A'),
    (20, 'A'),
    (30, 'F'),
    (40, 'D'),
    (50, 'C');
insert into test_b (id) 
values
      (10),
      (30),
      (50);
      
SELECT *
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;      