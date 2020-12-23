CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `l7_3_1` AS
    SELECT 
        `t1`.`Назва_товару` AS `Назва_товару`,
        `t3`.`Під_тип` AS `під_тип`,
        `t4`.`матеріал` AS `матеріал`,
        (`t2`.`Кількість` * `t1`.`Ціна_закупки`) AS `Затрати`
    FROM
        (((`товари` `t1`
        JOIN `партія` `t2` ON ((`t1`.`Код_товара` = `t2`.`Код_товара`)))
        JOIN `під_тип` `t3` ON ((`t1`.`Код_під_типу` = `t3`.`Код_під_типу`)))
        JOIN `матеріал` `t4` ON ((`t1`.`Код_матеріал` = `t4`.`Код_матеріал`)))
    WHERE
        ((`t1`.`Ціна_закупки` > 1000)
            AND (`t4`.`матеріал` = 'Plastic'))