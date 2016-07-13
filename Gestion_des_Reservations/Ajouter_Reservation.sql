CREATE OR REPLACE PROCEDURE Ajouter_Reservation(vtitre RESERVATION.TITRE%TYPE,vnoAdh RESERVATION.NOADH%TYPE,vdateRes RESERVATION.DATERES%TYPE,vdateEmp RESERVATION.DATEEMP%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Reservation(vcoder);
IF (n=true) THEN
  DBMS_OUTPUT.PUT_LINE('Reservation Exist');
ELSE
INSERT INTO RESERVATION Values(seq_coder.nextval,vtitre,vnoAdh,vdateRes,vdateEmp);
END IF;
Commit;
END Ajouter_Reservation;