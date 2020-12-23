CREATE DEFINER=`root`@`localhost` PROCEDURE `L7_3`(OUT s1  CHAR(45) ,OUT s2 INT,OUT s3  CHAR(45) ,OUT s4 INT  )
BEGIN
SELECT   t1.Назва_товару  ,   (t1.Ціна_закупки*t2.Кількість) AS Закупки
INTO s1,s2
FROM товари t1
RIGHT JOIN партія t2
USING (Код_товара)
GROUP BY  t1.Назва_товару 
ORDER BY Закупки DESC
LIMIT 1;
SELECT   t1.Назва_товару  ,   (t1.Ціна_закупки*t2.Кількість) AS Закупки
INTO s3,s4
FROM товари t1
RIGHT JOIN партія t2
USING (Код_товара)
GROUP BY  t1.Назва_товару 
ORDER BY Закупки 
LIMIT 1;
END