CREATE OR REPLACE TRIGGER date_sup
BEFORE INSERT OR UPDATE ON Catalogue
FOR EACH ROW
DECLARE
err EXCEPTION;
BEGIN
IF (:new.anEd <= 1950) THEN RAISE_APPLICATION_ERROR(-20100, 'l annee doit etre superieur a 1950.');
END IF;
END date_sup;