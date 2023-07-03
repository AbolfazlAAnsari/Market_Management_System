ALTER TABLE Product
    ADD is_sold BIT;

UPDATE Product
    SET is_sold = 0;

BEGIN TRY
        BEGIN TRANSACTION;

        -- Perform the insert into OrderTable
        INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (?, ?, ?, ?, ?);

        -- Update is_sold to True for the related product in the Product table
        UPDATE Product SET is_sold = 1 WHERE Barcode = ? AND is_sold = 0;

        COMMIT;
        PRINT 'Transaction completed successfully.';
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;
        PRINT 'Transaction failed. Rolling back changes.';
        PRINT ERROR_MESSAGE();
    END CATCH;

