CREATE OR REPLACE TRIGGER dateEmp_anterieur
BEFORE INSERT OR UPDATE ON EMPRUNT
FOR EACH ROW
DECLARE
vdateAdh date;
BEGIN
SELECT dateAdh INTO vdateAdh FROM ADHERENT WHERE ADHERENT.noAdh=:new.noAdh;
IF(:new.dateEmp<vdateAdh) THEN :new.dateEmp:=vdateAdh;
END IF;
END dateEmp_anterieur;