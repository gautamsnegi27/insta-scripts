use test ;
DROP PROCEDURE IF EXISTS test.STAR_PATTERN_WHILE_END_WHILE;
Delimiter //
Create Procedure STAR_PATTERN_WHILE_END_WHILE(IN number_of_rows int)
BEGIN
	declare i int default 0;
	declare pattern varchar(250) default "";
	declare star_to_add varchar(100) default "";
	WHILE i<number_of_rows  DO
		if i = 0 then
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern, star_to_add,"\n");
		else 
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern,"| ", star_to_add,"\n");
		end if;
		SET i = i + 1;
	end WHILE;
SELECT pattern "FINAL PATTERN";
END//
DELIMITER ;