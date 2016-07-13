CREATE OR REPLACE TRIGGER emprunt_5_titre
BEFORE INSERT ON EMPRUNT
FOR EACH ROW
DECLARE
nbr number:=0;
BEGIN
SELECT Count(noAdh) INTO nbr FROM EMPRUNT
WHERE (:new.dateEmp BETWEEN dateEmp AND dateRet)
      OR
      (:new.dateRet BETWEEN dateEmp AND dateRet)
      AND 
      NOADH=:new.noAdh;
IF (nbr=5) THEN RAISE_APPLICATION_ERROR(-20100, 'nombre d emprunt est superieur a 5');
END IF;
END emprunt_5_titre;