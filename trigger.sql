-- При вставці нового рядка в таблицю Happening записує стан 'decreased' у верхньому регістрі
CREATE OR REPLACE FUNCTION decreased_func()
RETURNS trigger AS
$$
     DECLARE
 
     BEGIN
	    IF NEW.condition = 'decreased' THEN
          UPDATE Happening SET condition = upper(condition)  
          WHERE Happening.id_con = NEW.id_con;
		END IF;
		RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER decreased_trig
     AFTER INSERT ON Happening
     FOR EACH ROW EXECUTE PROCEDURE decreased_func();
