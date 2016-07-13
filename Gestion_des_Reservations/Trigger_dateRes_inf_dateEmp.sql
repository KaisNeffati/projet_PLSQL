CREATE OR REPLACE TRIGGER dateRes_inf_darEmp
BEFORE INSERT OR UPDATE ON RESERVATION
FOR EACH ROW
DECLARE
BEGIN
IF(:new.dateRes>=:new.dateEmp) THEN Raise_application_error(-20100,'la date de reservation doit etre precedente à la date d emprunt');
END IF;
END dateRes_inf_darEmp;