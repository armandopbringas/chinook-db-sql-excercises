/* ---------------------------------------------------------
   Bloque 7 — GROUP BY
----------------------------------------------------------*/

-- 26. Ventas por país
-- Suma los ingresos totales (Invoice.Total) agrupados por BillingCountry.
SELECT
  SUM(Total) AS TotalRevenue
FROM
Invoice
GROUP BY BillingCountry
ORDER BY TotalRevenue DESC;

-- 27. Número de clientes por país
-- Cuenta cuántos clientes hay en cada país usando GROUP BY.
SELECT
  Country,
  COUNT(*) AS NumClients
FROM Customer
GROUP BY Country
ORDER BY NumClients DESC;

-- 28. Tracks por género
-- Devuelve cuántas pistas pertenecen a cada género (Genre.Name).
SELECT
  g.Name AS GenreName,
  COUNT(*) AS TrackCount
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY TrackCount DESC;

-- 29. Duración promedio por compositor
-- Muestra el promedio de Milliseconds agrupado por Composer.
-- (Tip: excluir NULL con WHERE Composer IS NOT NULL)
SELECT
  Composer,
  AVG(Milliseconds) AS AVGDuration
FROM Track
WHERE Composer IS NOT NULL
GROUP BY Composer
ORDER BY AVGDuration DESC;

-- 30. Ventas por año
-- Muestra el total de ventas agrupado por YEAR(InvoiceDate).
SELECT
    YEAR(InvoiceDate) AS Year,
    SUM(Total) AS TotalSales
FROM Invoice
GROUP BY YEAR(InvoiceDate)
ORDER BY Year ASC;
