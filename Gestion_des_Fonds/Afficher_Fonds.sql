CREATE OR REPLACE PROCEDURE Afficher_Fonds(vcotef FONDS.cotef%TYPE) IS
n BOOLEAN;
vtitre FONDS.TITRE%TYPE;
BEGIN
n:=Exist_fonds(vcotef);
IF (n=true) THEN
SELECT titre INTO vtitre FROM FONDS WHERE cotef=vcotef;
DBMS_OUTPUT.PUT_LINE('   Cotef : '||vcotef||'   Titre : '||vtitre);
ELSE
DBMS_OUTPUT.PUT_LINE('Fonds n Exist pas');
END IF;
Commit;
END Afficher_Fonds;