CREATE OR REPLACE PROCEDURE Modifier_Emprunt(vcotef EMPRUNT.cotef%TYPE,vdateEmp EMPRUNT.dateEmp%TYPE,vnoAdh EMPRUNT.NOADH%TYPE,vdateRet EMPRUNT.DATERET%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Emprunt(vcotef,vdateEmp);
IF (n=true) THEN
  UPDATE EMPRUNT SET noAdh=vnoAdh,dateRet=vdateRet WHERE cotef=vcotef AND TO_char(dateEmp)=vdateEmp;
ELSE
DBMS_OUTPUT.PUT_LINE('Emprunt n Exist pas');
END IF;
Commit;
END Modifier_Emprunt;