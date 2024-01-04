-- Перевірка функції
SELECT del_id(1);
SELECT * FROM Happening;

-- Перевірка процедури
CALL change_reason(2);
SELECT * FROM Happening;

-- Перевірка тригера
INSERT INTO Colonies (id_colonies, year)
VALUES
(12, '2017-01-23');
INSERT INTO State (id_state, state)
VALUES
(12, 'Alabama');
INSERT INTO Happening (id_con, id_state, id_colonies, condition, reason, con_year)
VALUES
( 12, 12, 12, 'decreased', 'weather', '2017-09-23');