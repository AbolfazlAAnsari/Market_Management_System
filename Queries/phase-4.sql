INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province)
VALUES (12345, 'Harry', 'Kane', '+44796268462', '212 Baker Street', 'London', 'London');

INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES
    (12345, 'Supplier1', 1001, 3, '2022-01-01'),
    (12345, 'Supplier2', 1002, 3, '2022-01-01'),
    (12345, 'Supplier3', 1003, 3, '2022-01-01');

UPDATE Consumer
    SET Telephone = '+447342780080'
    WHERE Name = 'Harry' AND Last_Name = 'Kane';

DELETE FROM Consumer
WHERE National_ID NOT IN (
    SELECT DISTINCT National_ID
    FROM OrderTable
);


--- Some more insertion

--- Supplier
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier5', 'supplier5@example.com', '10 AM - 5 PM', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier6', 'supplier6@example.com', '11 AM - 5 PM', 'Street 1', 'City 2', 'Province 1');

	--- Add Available to new Suppliers
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1001, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1002, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1003, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1004, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1005, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1006, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1007, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1008, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1009, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1010, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1011, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier5', 1012, '2022-01-01', 80, 9.99);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1001, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1002, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1003, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1004, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1005, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1006, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1007, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1008, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1009, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1010, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1011, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier6', 1012, '2022-01-01', 80, 9.99);
    

    --- Some Available
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1001, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1002, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1003, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1004, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1005, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1006, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1007, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1008, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1009, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1010, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1011, '2022-01-01', 80, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1012, '2022-01-01', 80, 9.99);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1001, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1002, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1003, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1004, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1005, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1006, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1007, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1008, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1009, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1010, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1011, '2022-01-01', 80, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1012, '2022-01-01', 80, 9.98);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1001, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1002, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1003, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1004, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1005, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1006, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1007, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1008, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1009, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1010, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1011, '2022-01-01', 80, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1012, '2022-01-01', 80, 9.97);
    
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1001, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1002, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1003, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1004, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1005, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1006, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1007, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1008, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1009, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1010, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1011, '2022-01-01', 80, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1012, '2022-01-01', 80, 9.96);

