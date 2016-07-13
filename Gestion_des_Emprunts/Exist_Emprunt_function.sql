CREATE OR REPLACE FUNCTION Exist_Emprunt(vcotef EMPRUNT.cotef%TYPE,vdateEmp EMPRUNT.dateEmp%TYPE) RETURN BOOLEAN IS
nbr number;
BEGIN
SELECT Count(cotef) INTO nbr FROM EMPRUNT Where cotef=vcotef AND To_char(DATEEMP)=vdateEmp;
IF (nbr=0) THEN
  RETURN false;
ELSE
  RETURN true;
END IF;
END Exist_Emprunt;