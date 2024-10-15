CREATE PROCEDURE TilføjFakturaLinje (
    IN p_OrdreNummer INT,
    IN p_VareID INT,
    IN p_Antal INT
)
BEGIN
    DECLARE v_Pris DECIMAL(10, 2);
    
    -- Get the product price
    SELECT Pris INTO v_Pris FROM Vare WHERE VareID = p_VareID;
    
    -- Insert line into FakturaLinje
    INSERT INTO FakturaLinje (OrdreNummer, VareID, Antal, Pris)
    VALUES (p_OrdreNummer, p_VareID, p_Antal, v_Pris);
    
    -- Update total amount in Faktura
    UPDATE Faktura
    SET TotalBeløb = TotalBeløb + (p_Antal * v_Pris)
    WHERE OrdreNummer = p_OrdreNummer;
    
    -- Reduce product stock
    UPDATE Vare
    SET LagerAntal = LagerAntal - p_Antal
    WHERE VareID = p_VareID;
END;
