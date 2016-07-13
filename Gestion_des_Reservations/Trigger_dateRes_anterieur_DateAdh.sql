CREATE OR REPLACE TRIGGER dateRes_anterieur
BEFORE INSERT OR UPDATE ON RESERVATION
FOR EACH ROW
DECLARE
vdateAdh date;
BEGIN
SELECT dateAdh INTO vdateAdh FROM ADHERENT WHERE ADHERENT.noAdh=:new.noAdh;
IF(:new.dateRes<vdateAdh) THEN :new.dateRes:=vdateAdh;
END IF;
END dateRes_anterieur;