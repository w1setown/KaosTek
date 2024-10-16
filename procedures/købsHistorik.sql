CREATE DEFINER=`root`@`localhost` PROCEDURE `KøbsHistorik`()
BEGIN
    SELECT 
        k.Navn AS KundeNavn,
        k.Email AS KundeEmail,
        f.OrdreNummer,
        f.Dato AS FakturaDato,
        v.VareNavn AS Varenavn,
        fl.Antal AS Antal,
        (fl.Pris / 1.25) AS PrisEksMoms,  -- Pris uden moms. 
        fl.Pris AS PrisInklMoms,  -- Pris med moms. (Gemt i FakturaLinje)
        fl.Subtotal AS LinjeSubtotal,  
        f.TotalBeløb AS FakturaTotal  
    FROM 
        kunde k
    JOIN 
        faktura f ON k.KundeID = f.KundeID
    JOIN 
        fakturalinje fl ON f.OrdreNummer = fl.OrdreNummer
    JOIN 
        vare v ON fl.VareID = v.VareID
    ORDER BY 
        f.KundeID DESC;
END