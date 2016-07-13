CREATE OR REPLACE PROCEDURE Supprimer_Fonds(vcotef FONDS.cotef%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_fonds(vcotef);
IF (n=true) THEN
DELETE FROM FONDS WHERE cotef=vcotef;
ELSE
DBMS_OUTPUT.PUT_LINE('Fonds Exist');
END IF;
Commit;
END Supprimer_Fonds;