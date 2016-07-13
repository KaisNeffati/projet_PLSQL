CREATE OR REPLACE PROCEDURE Ajouter_Fonds(vcotef FONDS.cotef%TYPE,vtitre FONDS.TITRE%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_fonds(vcotef);
IF (n=true) THEN
  DBMS_OUTPUT.PUT_LINE('Fonds Exist');
ELSE
INSERT INTO FONDS Values(vcotef,vtitre);
END IF;
Commit;
END Ajouter_Fonds;