CREATE DEFINER=`root`@`localhost` FUNCTION `L8_4`( ) RETURNS char(44) CHARSET utf8
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
END