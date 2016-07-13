CREATE OR REPLACE PROCEDURE Afficher_Catalogue(vtitre CATALOGUE.TITRE%TYPE) IS
n BOOLEAN;
vnomAut CATALOGUE.NOMAUT%TYPE;
vprenomAut CATALOGUE.PRENOMAUT%TYPE;
vanEd CATALOGUE.ANED%TYPE;
BEGIN
n:=Exist_Catalogue(vtitre);
IF (n=true) THEN
SELECT NOMAUT,PRENOMAUT,ANED INTO vnomAut,vprenomAut,vanEd FROM CATALOGUE WHERE TITRE=vtitre;
DBMS_OUTPUT.PUT_LINE('   Titre : '||vtitre||'   NomAut : '||vnomAut||'   PrenomAut : '||vprenomAut||'   AnEd : '||vanEd);
ELSE
DBMS_OUTPUT.PUT_LINE('Catalogue n Exist pas');
END IF;
Commit;
END Afficher_Catalogue;