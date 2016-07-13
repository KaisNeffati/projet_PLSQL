CREATE OR REPLACE TRIGGER dateEmp_inf_dateRet
BEFORE INSERT OR UPDATE ON EMPRUNT
FOR EACH ROW
DECLARE
BEGIN
IF(:new.dateEmp>=:new.dateRet) THEN Raise_application_error(-20100,'la date de reservation doit etre precedente a la date d retour');
END IF;
END dateEmp_inf_dateRet;