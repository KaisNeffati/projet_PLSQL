CREATE OR REPLACE PROCEDURE Ajouter_Adherent(vnoAdh ADHERENT.NOADH%TYPE,vnom ADHERENT.NOM%TYPE,vprenom ADHERENT.PRENOM%TYPE,vadresse ADHERENT.ADRESSE%TYPE,vdateAdh ADHERENT.DATEADH%TYPE
) IS
n BOOLEAN;
BEGIN
n:=Exist_Adherent(vnoAdh);
IF (n=true) THEN
  DBMS_OUTPUT.PUT_LINE('ADHRENT Exist');
ELSE
INSERT INTO ADHERENT Values(vnoAdh,vnom,vprenom,vadresse,vdateAdh);
END IF;
Commit;
END Ajouter_Adherent;