CREATE OR REPLACE PROCEDURE Supprimer_Reservation(vcoder RESERVATION.CODER%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Reservation(vcoder);
IF (n=true) THEN
DELETE FROM RESERVATION WHERE coder=vcoder;
ELSE
DBMS_OUTPUT.PUT_LINE('RESERVATION Exist');
END IF;
Commit;
END Supprimer_Reservation;