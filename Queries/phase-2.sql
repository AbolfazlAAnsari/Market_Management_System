-- Supplier table
CREATE TABLE Supplier (
  SName varchar(50) PRIMARY KEY,
  Email varchar(50),
  Hours varchar(50),
  Street varchar(50),
  City varchar(50),
  Province varchar(50)
);

-- Consumer table
CREATE TABLE Consumer (
  National_ID int PRIMARY KEY,
  Name varchar(50),
  Last_Name varchar(50),
  Telephone varchar(20),
  Street varchar(50),
  City varchar(50),
  Province varchar(50)
);

-- Company table
CREATE TABLE Company (
  CName varchar(50) PRIMARY KEY,
  EstDate date,
  Lic_Num varchar(50),
  Street varchar(50),
  City varchar(50),
  Province varchar(50)
);

-- Type table
CREATE TABLE Type (
  TName varchar(50) PRIMARY KEY
);

-- Brand table
CREATE TABLE Brand (
  BName varchar(50) PRIMARY KEY,
  CName varchar(50),
  BrandDate date,
  FOREIGN KEY (CName) REFERENCES Company(CName)
);


-- Manufacture table
CREATE TABLE Manufacture (
  BName varchar(50),
  TName varchar(50),
  PRIMARY KEY (BName, TName),
  FOREIGN KEY (BName) REFERENCES Brand(BName),
  FOREIGN KEY (TName) REFERENCES Type(TName)
);

-- Product table
CREATE TABLE Product (
  Barcode int PRIMARY KEY,
  PName varchar(50),
  TName varchar(50),
  BName varchar(50),
  CName varchar(50),
  Weight decimal(10,2),
  FOREIGN KEY (CName) REFERENCES Company(CName),
  FOREIGN KEY (BName, TName) REFERENCES Manufacture(BName, TName)
);

-- Available table
CREATE TABLE Available (
  SName varchar(50),
  Barcode int,
  AvailableDate date,
  Quantity int,
  Price decimal(10,2),
  PRIMARY KEY (SName, Barcode, AvailableDate),
  FOREIGN KEY (SName) REFERENCES Supplier(SName),
  FOREIGN KEY (Barcode) REFERENCES Product(Barcode)
);

-- Order table
CREATE TABLE OrderTable (
  National_ID int,
  SName varchar(50),
  Barcode int,
  Count int,
  OrderDate date,
  PRIMARY KEY (National_ID, SName, Barcode),
  FOREIGN KEY (National_ID) REFERENCES Consumer(National_ID),
  FOREIGN KEY (SName, Barcode, OrderDate) REFERENCES Available(SName, Barcode, AvailableDate)
);

CREATE TRIGGER ReduceAvailability
    ON OrderTable
    INSTEAD OF INSERT
    AS
    BEGIN
        -- Decrease availability count only for valid orders
        UPDATE Available
        SET Quantity = Quantity - I.Count
        FROM Available A
        INNER JOIN INSERTED I ON A.SName = I.SName AND A.Barcode = I.Barcode AND A.AvailableDate = I.OrderDate
        WHERE A.Quantity >= I.Count;

        -- Insert the valid orders into OrderTable
        INSERT INTO OrderTable (National_ID, SName, Barcode, Count, OrderDate)
        SELECT National_ID, SName, Barcode, Count, OrderDate
        FROM INSERTED I
        WHERE NOT EXISTS (
            SELECT *
            FROM Available A
            WHERE A.SName = I.SName AND A.Barcode = I.Barcode AND A.AvailableDate = I.OrderDate AND A.Quantity < I.Count
        );
    END;

CREATE TRIGGER IncreaseAvailability
    ON Available
    INSTEAD OF INSERT
    AS
    BEGIN
        -- Insert new rows for products that don't exist in the table
        INSERT INTO Available (SName, Barcode, AvailableDate, Quantity, Price)
        SELECT I.SName, I.Barcode, I.AvailableDate, I.Quantity, I.Price
        FROM INSERTED I
        LEFT JOIN Available A ON A.SName = I.SName AND A.Barcode = I.Barcode AND A.AvailableDate = I.AvailableDate
        WHERE A.SName IS NULL;

        -- Update the existing availability count for products that already exist in the table
        UPDATE A
        SET A.Quantity = A.Quantity + I.Quantity
        FROM Available A
        INNER JOIN INSERTED I ON A.SName = I.SName AND A.Barcode = I.Barcode AND A.AvailableDate = I.AvailableDate
        WHERE A.SName IS NOT NULL;
    END;
