CREATE OR REPLACE PROCEDURE Ajouter_Catalogue(vtitre CATALOGUE.TITRE%TYPE,vnomAut CATALOGUE.NOMAUT%TYPE,vprenomAut CATALOGUE.PRENOMAUT%TYPE,vanEd CATALOGUE.ANED%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Catalogue(vtitre);
IF (n=true) THEN
  DBMS_OUTPUT.PUT_LINE('Catalogue Exist');
ELSE
INSERT INTO Catalogue Values(vtitre,vnomAut,vprenomAut,vanEd);
END IF;
Commit;
END Ajouter_Catalogue;