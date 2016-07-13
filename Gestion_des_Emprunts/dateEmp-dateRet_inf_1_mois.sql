CREATE OR REPLACE TRIGGER dateEmp_dateRet_inf_1_mois
BEFORE INSERT OR UPDATE ON EMPRUNT
FOR EACH ROW
DECLARE
BEGIN
IF(:new.dateRet-:new.dateEmp > 30) THEN Raise_application_error(-20100,'la duree d emprunt doit etre inf a 1 mois');
END IF;
END dateEmp_dateRet_inf_1_mois;