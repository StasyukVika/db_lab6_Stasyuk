DROP FUNCTION IF EXISTS del_id(integer); 
 
CREATE OR REPLACE FUNCTION del_id(x integer) RETURNS void 
LANGUAGE plpgsql 
AS $$ 
BEGIN  
    DELETE FROM Happening  
    WHERE Happening.id_state IN  
        (SELECT Happening.id_state FROM Happening LEFT JOIN 
         State USING(id_state) WHERE State.id_state = x); 
END; 
$$;

