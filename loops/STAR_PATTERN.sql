use test ;
DROP PROCEDURE IF EXISTS test.STAR_PATTERN;
Delimiter //
Create Procedure STAR_PATTERN(IN number_of_rows int)
BEGIN
declare i int default 0;
declare pattern varchar(250) default "";
declare star_to_add varchar(100) default "";
block1: LOOP
	if i<number_of_rows then
		if i = 0 then
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern, star_to_add,"\n");
		else 
			SET star_to_add = CONCAT(star_to_add, "*");
			SET pattern = CONCAT(pattern,"| ", star_to_add,"\n");
		end if;
		SET i = i + 1;
	else
		LEAVE block1;
	end if;
end LOOP block1;
SELECT pattern "FINAL PATTERN";
END//
DELIMITER ;