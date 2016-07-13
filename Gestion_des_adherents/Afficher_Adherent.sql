CREATE OR REPLACE PROCEDURE Afficher_Adherent(vnoAdh ADHERENT.NOADH%TYPE) IS
n BOOLEAN;
vnom ADHERENT.NOM%TYPE;
vprenom ADHERENT.PRENOM%TYPE;
vadresse ADHERENT.ADRESSE%TYPE;
vdateAdh ADHERENT.DATEADH%TYPE;
BEGIN
n:=Exist_Adherent(vnoAdh);
IF (n=true) THEN
SELECT nom,prenom,adresse,dateAdh INTO vnom,vprenom,vadresse,vdateAdh FROM ADHERENT WHERE noAdh=vnoAdh;
DBMS_OUTPUT.PUT_LINE('noAdh : '||vnoAdh||'   nom : '||vnom||'   prenom : '||vprenom||'   adresse : '||vadresse||'  dateAdh : '||vdateAdh);
ELSE
DBMS_OUTPUT.PUT_LINE('ADHRENT Exist');
END IF;
Commit;
END Afficher_Adherent;