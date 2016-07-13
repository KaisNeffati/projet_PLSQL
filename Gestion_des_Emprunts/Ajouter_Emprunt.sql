CREATE OR REPLACE PROCEDURE Ajouter_Emprunt(vcotef EMPRUNT.cotef%TYPE,vdateEmp EMPRUNT.dateEmp%TYPE,vnoAdh EMPRUNT.NOADH%TYPE,vdateRet EMPRUNT.DATERET%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Emprunt(vcotef,vdateEmp);
IF (n=true) THEN
  DBMS_OUTPUT.PUT_LINE('Emprunt Exist');
ELSE
INSERT INTO EMPRUNT Values(vcotef,vdateEmp,vnoAdh,vdateRet);
END IF;
Commit;
END Ajouter_Emprunt;