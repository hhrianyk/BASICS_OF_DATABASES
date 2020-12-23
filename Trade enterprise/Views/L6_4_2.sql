CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `l6_4_2` AS
    SELECT 
        `t3`.`Назва_товару` AS `Назва_товару`,
        `t2`.`Дата` AS `Дата`,
        `t2`.`Прізвище` AS `Прізвище`,
        `t2`.`Статус` AS `Статус`,
        `t2`.`Назва_операції` AS `Назва_операції`
    FROM
        ((`l6_4_1` `t2`
        LEFT JOIN `партія` `t1` ON ((`t1`.`Код_накладної` = `t2`.`Код_накладної`)))
        LEFT JOIN `товари` `t3` ON ((`t1`.`Код_товара` = `t3`.`Код_товара`)))