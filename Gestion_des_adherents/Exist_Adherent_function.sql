CREATE OR REPLACE FUNCTION Exist_Adherent(vnoAdh ADHERENT.NOADH%TYPE) RETURN BOOLEAN IS
number_noAdh NUMBER;
BEGIN
SELECT COUNT(noAdh) INTO number_noAdh FROM ADHERENT Where noAdh=vnoAdh;
IF (number_noAdh=0) THEN
  RETURN false;
ELSE
  RETURN true;
END IF;
END Exist_Adherent;