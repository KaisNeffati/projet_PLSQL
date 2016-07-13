CREATE OR REPLACE PROCEDURE Afficher_Emprunt(vcotef EMPRUNT.cotef%TYPE,vdateEmp EMPRUNT.dateEmp%TYPE) IS
n BOOLEAN;
vnoAdh EMPRUNT.NOADH%TYPE;
vdateRet EMPRUNT.DATERET%TYPE;
BEGIN
n:=Exist_Emprunt(vcotef,vdateEmp);
IF (n=true) THEN
SELECT noAdh,dateRet INTO vnoAdh,vdateRet FROM EMPRUNT WHERE cotef=vcotef AND To_char(DATEEMP)=vdateEmp;
DBMS_OUTPUT.PUT_LINE('   Cotef : '||vcotef||'   DateEmp : '||vdateEmp||'   noAdh : '||vnoAdh||'   DateRet : '||vdateRet);
ELSE
DBMS_OUTPUT.PUT_LINE('Emprunt n Exist pas');
END IF;
Commit;
END Afficher_emprunt;