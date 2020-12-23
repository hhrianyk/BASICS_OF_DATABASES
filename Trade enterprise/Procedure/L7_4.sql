CREATE DEFINER=`root`@`localhost` PROCEDURE `L7_4`(INOUT cnt INT, IN meterial CHAR(55))
BEGIN
DECLARE temp INT DEFAULT 0;
SELECT COUNT(*)  INTO temp
       FROM товари t1 
       LEFT JOIN матеріал t2
       USING (Код_матеріал) 
 WHERE  t2.матеріал =  meterial ;
 SET cnt = cnt+temp;
END