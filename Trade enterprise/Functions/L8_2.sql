CREATE DEFINER=`root`@`localhost` FUNCTION `L8_2`(Marka CHAR(52) ) RETURNS int
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
END