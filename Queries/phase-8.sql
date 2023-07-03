CREATE TRIGGER trg_PreventDuplicateBarcodeDifferentBrand
    ON Product
    INSTEAD OF INSERT
    AS
    BEGIN
        IF EXISTS (
            SELECT 1
            FROM Product p
            JOIN inserted i ON p.Barcode = i.Barcode
            WHERE p.BName <> i.BName
        )
        BEGIN
            RAISERROR ('Cannot insert two products with the same barcode and different brands.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END;

--- the second assertion define as trigger in phase-2