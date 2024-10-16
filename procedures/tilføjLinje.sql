/* CREATE PROCEDURE TilføjFakturaLinje (
    IN p_OrdreNummer INT,
    IN p_VareID INT,
    IN p_Antal INT
)
BEGIN
    DECLARE v_Pris DECIMAL(10, 2);
    
    
    SELECT Pris INTO v_Pris FROM Vare WHERE VareID = p_VareID;
    
    
    INSERT INTO FakturaLinje (OrdreNummer, VareID, Antal, Pris)
    VALUES (p_OrdreNummer, p_VareID, p_Antal, v_Pris);
    
    
    UPDATE Faktura
    SET TotalBeløb = TotalBeløb + (p_Antal * v_Pris)
    WHERE OrdreNummer = p_OrdreNummer;
    
    
    UPDATE Vare
    SET LagerAntal = LagerAntal - p_Antal
    WHERE VareID = p_VareID;
END;
*/

DELIMITER $$

CREATE PROCEDURE TilføjFakturaLinje (
    IN p_OrdreNummer INT,
    IN p_VareID INT,
    IN p_Antal INT
)
BEGIN
    DECLARE v_Pris DECIMAL(10, 2);
    DECLARE v_PrisMedMoms DECIMAL(10, 2);
    
   
    SELECT Pris INTO v_Pris FROM Vare WHERE VareID = p_VareID;
    
   
    SET v_PrisMedMoms = v_Pris * 1.25;
    
    
    INSERT INTO FakturaLinje (OrdreNummer, VareID, Antal, Pris)
    VALUES (p_OrdreNummer, p_VareID, p_Antal, v_PrisMedMoms);
    
   
    UPDATE Faktura
    SET TotalBeløb = TotalBeløb + (p_Antal * v_PrisMedMoms)
    WHERE OrdreNummer = p_OrdreNummer;
    
   
    UPDATE Vare
    SET LagerAntal = LagerAntal - p_Antal
    WHERE VareID = p_VareID;
END $$

DELIMITER ;



-- DDL --

CREATE DEFINER=`root`@`localhost` PROCEDURE `TilføjFakturaLinje`(
    IN p_OrdreNummer INT,
    IN p_VareID INT,
    IN p_Antal INT
)
BEGIN
    DECLARE v_Pris DECIMAL(10, 2);
    DECLARE v_PrisMedMoms DECIMAL(10, 2);
    
    -- Get the product price
    SELECT Pris INTO v_Pris FROM Vare WHERE VareID = p_VareID;
    
    -- Calculate price including VAT
    SET v_PrisMedMoms = v_Pris * 1.25;
    
    -- Insert line into FakturaLinje with price including VAT
    INSERT INTO FakturaLinje (OrdreNummer, VareID, Antal, Pris)
    VALUES (p_OrdreNummer, p_VareID, p_Antal, v_PrisMedMoms);
    
    -- Update total amount in Faktura with price including VAT
    UPDATE Faktura
    SET TotalBeløb = TotalBeløb + (p_Antal * v_PrisMedMoms)
    WHERE OrdreNummer = p_OrdreNummer;
    
    -- Reduce product stock
    UPDATE Vare
    SET LagerAntal = LagerAntal - p_Antal
    WHERE VareID = p_VareID;
END