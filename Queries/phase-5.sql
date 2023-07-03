WITH SupplierPopularProducts AS (
  SELECT s.SName, p.PName, COUNT(*) as total_sales,
    ROW_NUMBER() OVER (PARTITION BY s.SName ORDER BY COUNT(*) DESC) AS rn
  FROM Supplier s
  JOIN Available a ON s.SName = a.SName
  JOIN Product p ON a.Barcode = p.Barcode
  JOIN OrderTable o ON a.SName = o.SName AND a.Barcode = o.Barcode
  GROUP BY s.SName, p.PName
)
SELECT SName, PName, total_sales
FROM SupplierPopularProducts
WHERE rn <= 10;


WITH CityPopularProducts AS (
  SELECT c.City, p.PName, COUNT(*) as total_sales,
    ROW_NUMBER() OVER (PARTITION BY c.City ORDER BY COUNT(*) DESC) AS rn
  FROM Consumer c
  JOIN OrderTable o ON c.National_ID = o.National_ID
  JOIN Product p ON o.Barcode = p.Barcode
  GROUP BY c.City, p.PName
)
SELECT City, PName, total_sales
FROM CityPopularProducts
WHERE rn <= 10;


SELECT TOP 5 SName, SUM(Count) AS total_sales
FROM OrderTable
WHERE YEAR(OrderDate) = 2022
GROUP BY SName
ORDER BY total_sales DESC;


SELECT product1_sales.SName
FROM (
    SELECT OT.SName, SUM(OT.Count) AS total_product1_sales
    FROM OrderTable OT
    INNER JOIN Product P ON OT.Barcode = P.Barcode
    WHERE P.PName = 'Product1'
    GROUP BY OT.SName
) AS product1_sales
INNER JOIN (
    SELECT OT.SName, SUM(OT.Count) AS total_product2_sales
    FROM OrderTable OT
    INNER JOIN Product P ON OT.Barcode = P.Barcode
    WHERE P.PName = 'Product2'
    GROUP BY OT.SName
) AS product2_sales ON product1_sales.SName = product2_sales.SName
WHERE product1_sales.total_product1_sales > product2_sales.total_product2_sales;


SELECT TOP 3 P2.PName, COUNT(*) AS total_sales
FROM OrderTable OT1
INNER JOIN Product P1 ON OT1.Barcode = P1.Barcode
INNER JOIN OrderTable OT2 ON OT1.National_ID = OT2.National_ID
INNER JOIN Product P2 ON OT2.Barcode = P2.Barcode
WHERE P1.PName = 'Product3' AND P2.PName <> 'Product3'
GROUP BY P2.PName
ORDER BY total_sales DESC;