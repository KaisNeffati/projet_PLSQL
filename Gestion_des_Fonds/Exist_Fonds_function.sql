CREATE OR REPLACE FUNCTION Exist_fonds(vcotef FONDS.cotef%TYPE) RETURN BOOLEAN IS
nbr number;
BEGIN
SELECT Count(cotef) INTO nbr FROM FONDS Where cotef=vcotef ;
IF (nbr=0) THEN
  RETURN false;
ELSE
  RETURN true;
END IF;
END Exist_fonds;