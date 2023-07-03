CREATE VIEW distributor_distributes AS
    SELECT S.*, P.*
    FROM Supplier S
    JOIN Available A ON S.SName = A.SName
    JOIN Product P ON A.Barcode = P.Barcode;

CREATE VIEW customer_orders AS
    SELECT C.*, P.*
    FROM Consumer C
    JOIN OrderTable O ON C.National_ID = O.National_ID
    JOIN Product P ON O.Barcode = P.Barcode;

CREATE VIEW product_type_brand_company AS
    SELECT P.Barcode, P.PName, P.Weight, P.TName, P.BName, B.BrandDate, P.CName, C.EstDate, C.Lic_Num, C.Street, C.City, C.Province
    FROM Product P
    JOIN Type T ON P.TName = T.TName
    JOIN Brand B ON P.BName = B.BName
    JOIN Company C ON P.CName = C.CName;

