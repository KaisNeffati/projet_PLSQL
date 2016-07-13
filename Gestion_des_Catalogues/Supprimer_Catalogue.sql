CREATE OR REPLACE PROCEDURE Supprimer_Catalogue(vtitre CATALOGUE.TITRE%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Catalogue(vtitre);
IF (n=true) THEN
DELETE FROM CATALOGUE WHERE titre=vtitre;
ELSE
DBMS_OUTPUT.PUT_LINE('CATALOGUE Exist');
END IF;
Commit;
END Supprimer_Catalogue;