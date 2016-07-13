CREATE OR REPLACE TRIGGER date_anterieur
BEFORE UPDATE OF dateAdh ON Adherent
FOR EACH ROW
DECLARE 
CURSOR curs_adh IS
SELECT DATEEMP,DATERES FROM RESERVATION
WHERE RESERVATION.NOADH=:new.noadh;
vdateRes RESERVATION.dateRes%TYPE;
vdateEmp RESERVATION.dateEmp%TYPE;
ERREUR EXCEPTION;
BEGIN
OPEN curs_adh;
LOOP
FETCH curs_adh INTO vdateRes,vdateEmp;
IF (vdateRes<:NEW.dateAdh)OR(vdateEmp<:NEW.dateAdh) THEN RAISE_APPLICATION_ERROR(-20000, 'il existe deja des reservations ou des emprunts de cet adherent dont la date est anterieure a la nouvelle date.');
END IF;
EXIT WHEN curs_adh%NOTFOUND;
END LOOP;
CLOSE curs_adh;
END date_anterieur;