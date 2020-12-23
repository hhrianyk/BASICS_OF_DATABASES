CREATE DEFINER=`root`@`localhost` FUNCTION `L8_3`( T CHAR(26) ) RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
DECLARE dolg DECIMAL(10,2);
SELECT AVG(Ціна_закупки) into dolg
 FROM товари
 LEFT JOIN під_тип
 USING (Код_під_типу)
  WHERE під_тип.під_тип=T;
RETURN (dolg);
END