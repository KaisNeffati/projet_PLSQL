CREATE OR REPLACE PROCEDURE Modifier_Catalogue(vtitre CATALOGUE.TITRE%TYPE,vnomAut CATALOGUE.NOMAUT%TYPE,vprenomAut CATALOGUE.PRENOMAUT%TYPE,vanEd CATALOGUE.ANED%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Catalogue(vtitre);
IF (n=true) THEN
  UPDATE CATALOGUE SET nomAut=vnomAut,prenomAut=vprenomAut,anEd=vanEd WHERE titre=vtitre;
ELSE
DBMS_OUTPUT.PUT_LINE('CATALOGUE n Exist pas');
END IF;
Commit;
END Modifier_Catalogue;