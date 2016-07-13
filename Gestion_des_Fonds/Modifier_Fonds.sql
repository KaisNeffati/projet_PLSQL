CREATE OR REPLACE PROCEDURE Modifier_Fonds(vcotef FONDS.cotef%TYPE,vtitre FONDS.TITRE%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_fonds(vcotef);
IF (n=true) THEN
  UPDATE FONDS SET titre=vtitre WHERE vcotef=vcotef;
ELSE
DBMS_OUTPUT.PUT_LINE('Fonds n Exist pas');
END IF;
Commit;
END Modifier_Fonds;