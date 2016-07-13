CREATE OR REPLACE PROCEDURE Supprimer_Emprunt(vcotef EMPRUNT.cotef%TYPE,vdateEmp EMPRUNT.dateEmp%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Emprunt(vcotef,vdateEmp);
IF (n=true) THEN
DELETE FROM EMPRUNT WHERE cotef=vcotef AND To_char(dateEmp)=vdateEmp;
ELSE
DBMS_OUTPUT.PUT_LINE('RESERVATION Exist');
END IF;
Commit;
END Supprimer_Emprunt;