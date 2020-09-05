use test ;
DROP PROCEDURE IF EXISTS test.STAR_PATTERN_REPEAT_UNTIL;
Delimiter //
Create Procedure STAR_PATTERN_REPEAT_UNTIL(IN number_of_rows int)
BEGIN
	declare i int default 0;
	declare pattern varchar(250) default "";
	declare star_to_add varchar(100) default "";
	REPEAT
		if i = 0 then
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern, star_to_add,"\n");
		else 
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern,"| ", star_to_add,"\n");
		end if;
		SET i = i + 1;
	UNTIL i>number_of_rows 
	END REPEAT;
SELECT pattern "FINAL PATTERN";
END//
DELIMITER ;