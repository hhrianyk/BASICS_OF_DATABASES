CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `l6_1` AS
    SELECT 
        `матеріал`.`Код_матеріал` AS `Код_матеріал`,
        `матеріал`.`матеріал` AS `матеріал`
    FROM
        `матеріал`