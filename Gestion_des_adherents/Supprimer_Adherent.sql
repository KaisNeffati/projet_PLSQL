CREATE OR REPLACE PROCEDURE Supprimer_Adherent(vnoAdh ADHERENT.NOADH%TYPE) IS
n BOOLEAN;
BEGIN
n:=Exist_Adherent(vnoAdh);
IF (n=true) THEN
DELETE FROM ADHERENT WHERE noAdh=vnoAdh;
ELSE
DBMS_OUTPUT.PUT_LINE('ADHRENT n Exist pas');
END IF;
Commit;
END Supprimer_Adherent;