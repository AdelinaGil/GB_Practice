/* Задание №1 */

DELIMITER $$

CREATE PROCEDURE times(seconds INT)
BEGIN
    DECLARE days INT default 0;
    DECLARE hours INT default 0;
    DECLARE minutes INT default 0;

    WHILE seconds >= 84600 DO
    SET days = seconds / 84600;
    SET seconds = seconds % 84600;
    END WHILE;

    WHILE seconds >= 3600 DO
    SET hours = seconds / 3600;
    SET seconds = seconds % 3600;
    END WHILE;

    WHILE seconds >= 60 DO
    SET minutes = seconds / 60;
    SET seconds = seconds % 60;
    END WHILE;

SELECT days, hours, minutes, seconds;
END $$
DELIMITER ;

CALL times(123456);

/* Задание №2 */

DELIMITER $$
CREATE PROCEDURE numbers()
BEGIN
    DECLARE n INT default 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (n INT);

    WHILE n < 10 DO
    SET n = n + 2;
    INSERT INTO nums VALUES(n);
    END WHILE;

SELECT * FROM nums;
END $$
DELIMITER ;

CALL numbers();