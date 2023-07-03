--- Supplier
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier1', 'supplier1@example.com', '6 AM - 5 PM', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier2', 'supplier2@example.com', '7 AM - 5 PM', 'Street 1', 'City 2', 'Province 1');
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier3', 'supplier3@example.com', '8 AM - 5 PM', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Supplier (SName, Email, Hours, Street, City, Province) VALUES ('Supplier4', 'supplier4@example.com', '9 AM - 5 PM', 'Street 1', 'City 2', 'Province 1');


--- Consumer
    INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province) VALUES (1001, 'Consumer1', 'Lastname1', '1001', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province) VALUES (1002, 'Consumer2', 'Lastname2', '1002', 'Street 1', 'City 2', 'Province 1');
    INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province) VALUES (1003, 'Consumer3', 'Lastname3', '1003', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province) VALUES (1004, 'Consumer4', 'Lastname4', '1004', 'Street 1', 'City 2', 'Province 1');
    INSERT INTO Consumer (National_ID, Name, Last_Name, Telephone, Street, City, Province) VALUES (1005, 'Consumer5', 'Lastname5', '1005', 'Street 1', 'City 1', 'Province 1');

--- Company
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company1', '2022-01-01', 'License1', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company2', '2022-01-01', 'License2', 'Street 2', 'City 1', 'Province 1');
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company3', '2022-01-01', 'License3', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company4', '2022-01-01', 'License4', 'Street 2', 'City 1', 'Province 1');
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company5', '2022-01-01', 'License5', 'Street 1', 'City 1', 'Province 1');
    INSERT INTO Company (CName, EstDate, Lic_Num, Street, City, Province) VALUES ('Company6', '2022-01-01', 'License6', 'Street 2', 'City 1', 'Province 1');

--- Type
    INSERT INTO Type (TName) VALUES ('Type1');
    INSERT INTO Type (TName) VALUES ('Type2');
    INSERT INTO Type (TName) VALUES ('Type3');
    INSERT INTO Type (TName) VALUES ('Type4');
    INSERT INTO Type (TName) VALUES ('Type5');
    INSERT INTO Type (TName) VALUES ('Type6');
    INSERT INTO Type (TName) VALUES ('Type7');
    INSERT INTO Type (TName) VALUES ('Type8');
    INSERT INTO Type (TName) VALUES ('Type9');
    INSERT INTO Type (TName) VALUES ('Type10');

--- Brand
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand1', 'Company1', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand2', 'Company2', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand3', 'Company3', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand4', 'Company4', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand5', 'Company5', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand6', 'Company6', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand7', 'Company1', '2022-01-01');
    INSERT INTO Brand (BName, CName, BrandDate) VALUES ('Brand8', 'Company2', '2022-01-01');

--- Manufacture
    INSERT INTO Manufacture (TName, BName) VALUES ('Type1', 'Brand1');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type2', 'Brand2');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type3', 'Brand3');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type4', 'Brand4');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type5', 'Brand5');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type6', 'Brand6');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type7', 'Brand7');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type8', 'Brand8');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type9', 'Brand1');
    INSERT INTO Manufacture (TName, BName) VALUES ('Type10', 'Brand2');

--- Product
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1001, 'Product1', 'Type1', 'Brand1', 'Company1', 1.5);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1002, 'Product2', 'Type2', 'Brand2', 'Company2', 1);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1003, 'Product3', 'Type3', 'Brand3', 'Company3', 1.5);    
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1004, 'Product4', 'Type4', 'Brand4', 'Company4', 1);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1005, 'Product5', 'Type5', 'Brand5', 'Company5', 1.5);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1006, 'Product6', 'Type6', 'Brand6', 'Company6', 1);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1007, 'Product7', 'Type7', 'Brand7', 'Company1', 1.5);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1008, 'Product8', 'Type8', 'Brand8', 'Company2', 1);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1009, 'Product9', 'Type9', 'Brand1', 'Company1', 1.5);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1010, 'Product10', 'Type10', 'Brand2', 'Company2', 1);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1011, 'Product11', 'Type1', 'Brand1', 'Company3', 1.5);
    INSERT INTO Product (Barcode, PName, TName, BName, CName, Weight) VALUES (1012, 'Product12', 'Type2', 'Brand2', 'Company4', 1);

	--- Available
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1001, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1002, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1003, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1004, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1005, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1006, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1007, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1008, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1009, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1010, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1011, '2022-01-01', 10, 9.99);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier1', 1012, '2022-01-01', 10, 9.99);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1001, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1002, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1003, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1004, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1005, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1006, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1007, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1008, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1009, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1010, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1011, '2022-01-01', 10, 9.98);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier2', 1012, '2022-01-01', 10, 9.98);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1001, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1002, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1003, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1004, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1005, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1006, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1007, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1008, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1009, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1010, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1011, '2022-01-01', 10, 9.97);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier3', 1012, '2022-01-01', 10, 9.97);

    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1001, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1002, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1003, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1004, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1005, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1006, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1007, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1008, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1009, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1010, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1011, '2022-01-01', 10, 9.96);
    INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price) VALUES ('Supplier4', 1012, '2022-01-01', 10, 9.96);

--- Order
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1001, 'Supplier1', 1001, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1001, 'Supplier2', 1002, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1001, 'Supplier3', 1003, 2, '2022-01-01');    

    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1002, 'Supplier1', 1002, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1002, 'Supplier2', 1003, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1002, 'Supplier3', 1001, 2, '2022-01-01');

    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1003, 'Supplier1', 1003, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1003, 'Supplier2', 1001, 2, '2022-01-01');
    INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate) VALUES (1003, 'Supplier3', 1002, 2, '2022-01-01');    

