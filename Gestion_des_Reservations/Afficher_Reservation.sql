CREATE OR REPLACE PROCEDURE Afficher_Reservation(vcoder RESERVATION.CODER%TYPE) IS
n BOOLEAN;
vtitre RESERVATION.TITRE%TYPE;
vnoAdh RESERVATION.NOADH%TYPE;
vdateRes RESERVATION.DATERES%TYPE;
vdateEmp RESERVATION.DATEEMP%TYPE;
BEGIN
n:=Exist_Reservation(vcoder);
IF (n=true) THEN
SELECT titre,noAdh,dateRes,dateEmp INTO vtitre,vnoAdh,vdateRes,vdateEmp FROM RESERVATION WHERE CODER=VCODER;
DBMS_OUTPUT.PUT_LINE('   Coder : '||vcoder||'   Titre : '||vtitre||'   noAdh : '||vnoAdh||'   DateRes : '||vdateRes||'   DateEmp : '||vdateEmp);
ELSE
DBMS_OUTPUT.PUT_LINE('Reservation n Exist pas');
END IF;
Commit;
END Afficher_Reservation;