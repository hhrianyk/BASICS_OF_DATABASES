CREATE DEFINER=`root`@`localhost` PROCEDURE `l7_1`()
BEGIN
SELECT Код_товара ,(`Кількість` *`Ціна`) AS Прибуток FROM   партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY Код_товара
 UNION
 SELECT  'Сума:',SUM(Кількість*Ціна) FROM партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY 1
 union
 SELECT  'Сер.прибут.:',AVG(Кількість*Ціна) FROM партія WHERE `Кількість`>10&&`Ціна`<3000 GROUP BY 1;
END