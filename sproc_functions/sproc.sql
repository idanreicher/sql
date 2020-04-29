select * from language;

DELIMITER //
create PROCEDURE getLanguage()
BEGIN
	SELECT * from language;
END //

DELIMITER ;

call getLanguage();

drop procedure  getLanguage;

DeLIMITER //
create procedure WhileLoop()
begin
 DECLARE i int default 1;
	WHILE i < 6 do
		select pow(i, i);
        set i = i + 1;
	END WHILE;
end //

delimiter ;

call WhileLoop();

drop procedure WhileLoop;













