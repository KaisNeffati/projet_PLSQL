CREATE OR REPLACE PROCEDURE Modifier_Reservation(vcoder RESERVATION.CODER%TYPE,vtitre RESERVATION.TITRE%TYPE,vnoAdh RESERVATION.NOADH%TYPE,vdateRes RESERVATION.DATERES%TYPE,vdateEmp RESERVATION.DATEEMP%TYPE
) IS
n BOOLEAN;
BEGIN
n:=Exist_Reservation(vcoder);
IF (n=true) THEN
  UPDATE RESERVATION SET titre=vtitre,noAdh=vnoAdh,dateRes=vdateRes,dateEmp=vdateEmp WHERE coder=vcoder;
ELSE
DBMS_OUTPUT.PUT_LINE('RESERVATION n Exist pas');
END IF;
Commit;
END Modifier_Reservation;