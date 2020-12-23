CREATE DEFINER=`root`@`localhost` PROCEDURE `L7_2`(IN price INT)
BEGIN
SELECT Назва_товару,Ціна_закупки FROM товари WHERE `Ціна_закупки`<price ORDER BY `Ціна_закупки` DESC;
END