/*
CREATE PROCEDURE OpretFaktura(
    IN p_KundeID int,
    IN p_Dato date,
    OUT p_OrdreNummer int
)

BEGIN
    INSERT INTO Faktura(KundeID, Dato, TotalBeløb)
    VALUES (p_KundeID, p_Dato, 0);

    SET p_OrdreNummer = LAST_INSERT_ID();
END;
*/


DELIMITER $$

CREATE PROCEDURE OpretFaktura(
    IN p_KundeID int,
    IN p_Dato date,
    OUT p_OrdreNummer int
)
BEGIN
    INSERT INTO Faktura(KundeID, Dato, TotalBeløb)
    VALUES (p_KundeID, p_Dato, 0);

    SET p_OrdreNummer = LAST_INSERT_ID();
END $$

DELIMITER ;
