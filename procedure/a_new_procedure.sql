use test ;
DROP PROCEDURE IF EXISTS test.a_new_procedure;
Delimiter //
Create Procedure a_new_procedure(INOUT x INT)
BEGIN
SET x = x+5;
END//
DELIMITER ;