DROP PROCEDURE IF EXISTS change_reason(integer); 
 
CREATE OR REPLACE PROCEDURE change_reason(IN x integer) 
LANGUAGE plpgsql 
AS $$ 
  BEGIN 
    Update Happening
	Set reason = 'unknown'
	WHERE id_con = x;
  END; 
$$;