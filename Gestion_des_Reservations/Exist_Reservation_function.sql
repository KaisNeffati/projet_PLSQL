CREATE OR REPLACE FUNCTION Exist_Reservation(vcoder RESERVATION.coder%TYPE) RETURN BOOLEAN IS
number_coder NUMBER;
BEGIN
SELECT COUNT(coder) INTO number_coder FROM RESERVATION Where coder=vcoder;
IF (number_coder=0) THEN
  RETURN false;
ELSE
  RETURN true;
END IF;
END Exist_Reservation;