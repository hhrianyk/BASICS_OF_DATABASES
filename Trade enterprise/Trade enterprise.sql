# ///////4////
#4.1
SELECT * FROM товари ORDER BY Ціна_закупки;
#4.2
SELECT Назва_товару,Ціна_закупки FROM товари WHERE  `Ціна_закупки`>3000 ORDER BY `Ціна_закупки` DESC;
#4.3
SELECT sum(Кількість * Ціна) AS прибуток FROM партія ;
#4.4
SELECT Код_товара, (`Кількість`*`Ціна`) AS Прибуток FROM Партія WHERE `Кількість`>10 AND `Ціна`<3000  GROUP BY Код_товара
UNION
SELECT 'Сума', sum(`Кількість`*`Ціна`)   FROM Партія WHERE `Кількість`>10 AND `Ціна`<3000  GROUP BY 1
UNION
SELECT 'Сер. прибуток', avg(`Кількість`*`Ціна`)   FROM Партія WHERE `Кількість`>10 AND `Ціна`<3000  GROUP BY 1;
#4.5
SELECT DISTINCT Під_тип FROM під_тип;
#4.6
SELECT t1.Назва_товару, AVG(t1.Ціна_закупки*t2.Кількість) AS Затрати
FROM товари t1
RIGHT JOIN партія t2
USING (Код_товара)
GROUP BY Назва_товару
HAVING Затрати >20000;

#///////////////5////////////
 #5.1
SELECT товари.Назва_товару,
торгові_марки.Код_торгової_марки,
товари.Ціна_закупки,
торгові_марки.торгова_марка,
торгові_марки.Країна
FROM товари
INNER JOIN торгові_марки
ON товари.Код_торгової_марки=торгові_марки.Код_торгової_марки;
#5.2
SELECT t1.Назва_товару AS `Назва товару`,
       t2.матеріал   AS  `матеріал`
       FROM товари t1
       LEFT JOIN матеріал t2
       ON t1.`Код_матеріал`=t2.`Код_матеріал`;
 #5.3
 SELECT * 
 FROM товари
 RIGHT JOIN партія
 USING (Код_товара);
 #5.4
 SELECT t1.Назва_товару, t3.під_тип, t4.матеріал, (t2.Кількість*t1.Ціна_закупки) AS Затрати , t5.торгова_марка
 FROM товари t1
INNER JOIN партія t2
ON t1.Код_товара=t2.Код_товара
INNER JOIN під_тип t3
ON t1.Код_під_типу=t3.Код_під_типу
INNER JOIN матеріал t4
ON t1.Код_матеріал=t4.Код_матеріал
INNER JOIN торгові_марки t5
ON t1.Код_торгової_марки=t5.Код_торгової_марки
WHERE t1.Ціна_закупки>1000 AND t4.матеріал ='Plastic';
#5.5

SELECT t1.Дата, t2.Прізвище, t3.Статус, t4.Назва_операції 
FROM накладна t1
INNER JOIN співробітник t2
ON t1.Код_співробітника=t2.Код_співробітника
INNER JOIN статус t3
ON t1.Код_статусу_операції=t3.Код_статусу_операції
INNER JOIN вид_операції t4
ON t1.Код_виду_операції=t4.Код_виду_операції;
#///////////////6////////////
#6.1
DROP VIEW L6_1 ;
CREATE VIEW L6_1 AS SELECT * FROM trade_enterprise.матеріал;
SELECT * FROM l6_1;
#6.2
CREATE VIEW L6_2 AS 
SELECT * 
FROM товари
RIGHT JOIN партія
USING (Код_товара);
SELECT Назва_товару, Ціна_закупки,Ціна,Кількість,(Ціна*Кількість - Ціна_закупки*Кількість) AS `Чистий прибуток` FROM L6_2;
#6.3
CREATE VIEW L6_3 AS 
  SELECT t1.Назва_товару, t3.під_тип, t4.матеріал, (t2.Кількість*t1.Ціна_закупки) AS Затрати
 FROM товари t1
INNER JOIN партія t2
USING (Код_товара) 
INNER JOIN під_тип t3
USING (Код_під_типу)
INNER JOIN матеріал t4
USING  (Код_матеріал);
#6.4
CREATE VIEW L6_4_1 AS 
SELECT t1.Код_накладної, t1.Дата, t2.Прізвище, t3.Статус, t4.Назва_операції 
FROM накладна t1
INNER JOIN співробітник t2
ON t1.Код_співробітника=t2.Код_співробітника
INNER JOIN статус t3
ON t1.Код_статусу_операції=t3.Код_статусу_операції
INNER JOIN вид_операції t4
ON t1.Код_виду_операції=t4.Код_виду_операції;

CREATE VIEW L6_4_2 AS 
SELECT t3.Назва_товару, t2.Дата, t2.Прізвище,t2.Статус,t2.Назва_операції
FROM  партія t1
RIGHT JOIN L6_4_1 t2
USING (Код_накладної)
LEFT JOIN товари t3
USING (Код_товара);

SELECT * FROM trade_enterprise.l6_4_2;
#6.5
CREATE VIEW L6_5 AS 
SELECT *
FROM  товари
RIGHT JOIN партія
USING (Код_товара)
WHERE (Ціна*Кількість-Ціна*Кількість)>10000;

SELECT * FROM trade_enterprise.l6_5;

#///////////////7////////////
#7.1
DELIMITER //
CREATE PROCEDURE `l7_1`()
BEGIN
SELECT Код_товара ,(`Кількість` *`Ціна`) AS Прибуток FROM   партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY Код_товара
 UNION
 SELECT  'Сума:',SUM(Кількість*Ціна) FROM партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY 1
 union
 SELECT  'Сер.прибут.:',AVG(Кількість*Ціна) FROM партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY 1;
END //
DELIMITER ;
call trade_enterprise.l7_1();
#7.2

DELIMITER //
CREATE PROCEDURE  L7_2 (IN price INT)  
BEGIN
SELECT Назва_товару,Ціна_закупки FROM товари WHERE `Ціна_закупки`<price ORDER BY `Ціна_закупки` DESC;
END //
DELIMITER ;
call trade_enterprise.L7_2(2000);
 #7.3
DROP PROCEDURE  L7_3;
 
 DELIMITER //
CREATE PROCEDURE  L7_3 (OUT s1  CHAR(45) ,OUT s2 INT,OUT s3  CHAR(45) ,OUT s4 INT  )  
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
END //
DELIMITER ;

CALL  L7_3(@r1,@r2,@r3,@r4  );
select @r1 AS "Найдорожчиій товара", @r2 AS "Затрати",@r3 AS "Найдешевий товар", @r4 AS " Затрати";
 #7.4
 
 DROP PROCEDURE  L7_4;
DELIMITER //
CREATE PROCEDURE L7_4(INOUT cnt INT, IN meterial CHAR(55))
BEGIN
DECLARE temp INT DEFAULT 0;
SELECT COUNT(*)  INTO temp
       FROM товари t1 
       LEFT JOIN матеріал t2
       USING (Код_матеріал) 
 WHERE  t2.матеріал =  meterial ;
 SET cnt = cnt+temp;
END //
DELIMITER ;
 
 
SET @temp=0; 
CALL L7_4(@temp,  'Eco-leather');  
CALL L7_4(@temp,  'Aluminum');
SELECT @temp AS "Кількість товарів";
 
#///////////////8////////////
#8.1
DROP FUNCTION   L8_1;

DELIMITER //
CREATE FUNCTION L8_1()
RETURNS INT
READS SQL DATA
BEGIN
RETURN (SELECT AVG(`Кількість`) FROM партія);
END //
DELIMITER ;

SELECT L8_1() AS 'Середня кількість товарів';

#8.2
DROP FUNCTION   L8_2;

DELIMITER //
CREATE FUNCTION L8_2(Marka CHAR(52) ) RETURNS int 
READS SQL DATA
BEGIN
DECLARE dolg int;
 SELECT Sum(Ціна_закупки*партія.Кількість) INTO dolg
 FROM товари
 RIGHT JOIN торгові_марки
 USING (Код_торгової_марки)
 LEFT JOIN партія
 USING (Код_товара)
 WHERE торгові_марки.торгова_марка=Marka ;
RETURN (dolg);
END //
DELIMITER ;

SELECT CONCAT("Сумарна кількість витрат на товари компанії 'Xiaomi'") AS "Заголовок",
L8_2('Xiaomi') AS 'Значення';
 
 #8.3
 DROP FUNCTION   L8_3;

DELIMITER //
CREATE FUNCTION L8_3( T CHAR(26) ) RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
DECLARE dolg DECIMAL(10,2);
SELECT AVG(Ціна_закупки) into dolg
 FROM товари
 LEFT JOIN під_тип
 USING (Код_під_типу)
  WHERE під_тип.під_тип=T;
RETURN (dolg);
END //
DELIMITER ;

SELECT під_тип.під_тип, AVG(Ціна_закупки)
 FROM товари
 LEFT JOIN під_тип
 USING (Код_під_типу)
GROUP BY під_тип.під_тип
HAVING AVG(Ціна_закупки)<L8_3("Сhair");

  #8.4

 DROP FUNCTION   L8_4;

DELIMITER //
CREATE FUNCTION L8_4( ) RETURNS CHAR(44)
READS SQL DATA
BEGIN
DECLARE material CHAR(44);
  SELECT  t2.матеріал  
        INTO material
       FROM товари t1
       INNER JOIN матеріал t2
       ON t1.`Код_матеріал`=t2.`Код_матеріал`
       GROUP BY матеріал
       ORDER BY SUM(t1.Ціна_закупки) DESC LIMIT 1;  
RETURN (material);
END //
DELIMITER ;

SELECT Назва_товару,Ціна_закупки,матеріал
 FROM товари
 LEFT JOIN матеріал
 USING (Код_матеріал)
 WHERE матеріал.матеріал=L8_4();
 
