CREATE OR REPLACE TRIGGER emprunt_seul_titre
BEFORE INSERT ON EMPRUNT
FOR EACH ROW
DECLARE
nbr number:=0;
BEGIN
SELECT Count(titre) INTO nbr FROM EMPRUNT,FONDS
WHERE EMPRUNT.cotef=FONDS.cotef
      AND
      (:new.dateEmp BETWEEN dateEmp AND dateRet)
      OR
      (:new.dateRet BETWEEN dateEmp AND dateRet)
      AND 
      NOADH=:new.noAdh;
IF (nbr=1) THEN RAISE_APPLICATION_ERROR(-20100, 'Un seul examplaire de chaque titre peut etre emprunte');
END IF;
END emprunt_seul_titre;