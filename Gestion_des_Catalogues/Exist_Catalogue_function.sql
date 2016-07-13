CREATE OR REPLACE FUNCTION Exist_Catalogue(vtitre CATALOGUE.TITRE%TYPE) RETURN BOOLEAN IS
nbr number;
BEGIN
SELECT Count(titre) INTO nbr FROM Catalogue Where titre=vtitre;
IF (nbr=0) THEN
  RETURN false;
ELSE
  RETURN true;
END IF;
END Exist_Catalogue;