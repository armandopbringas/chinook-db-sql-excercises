/* ---------------------------------------------------------
   Bloque 8 — HAVING
----------------------------------------------------------*/

-- 31. Países con ventas mayores a 100
-- Suma Total por BillingCountry y muestra solo los países con total > 100.
SELECT
  BillingCountry,
  SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry
HAVING SUM(Total) > 100
ORDER BY TotalSales DESC;

-- 32. Compositores más productivos
-- Muestra compositores que tengan más de 50 pistas registradas.
SELECT
  Composer,
  COUNT(*) AS NumTracks
FROM Track
WHERE Composer IS NOT NULL
GROUP BY Composer
HAVING COUNT(*) > 50
ORDER BY NumTracks DESC;

-- 33. Géneros populares
-- Lista los géneros que tengan más de 100 tracks en total.
SELECT
  g.Name AS GenreName,
  COUNT(t.TrackId) AS TrackCount
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.GenreId, g.Name
HAVING COUNT(t.TrackId) > 100
ORDER BY TrackCount DESC;

-- 34. Clientes grandes compradores
-- Muestra los CustomerId cuyo monto total de compras supere 20 dólares.
-- (Tip: SUM(Total) > 20)
SELECT
    CustomerId,
    SUM(Total) AS TotalSpent
FROM Invoice
GROUP BY CustomerId
HAVING SUM(Total) > 20
ORDER BY TotalSpent DESC;

-- 35. Facturación por año con filtro
-- Agrupa las ventas por año y muestra solo los años donde el total supere 500.
SELECT
  YEAR(InvoiceDate) AS SalesByYear,
  SUM(Total) AS TotalSales
FROM Invoice
GROUP BY YEAR(InvoiceDate);
