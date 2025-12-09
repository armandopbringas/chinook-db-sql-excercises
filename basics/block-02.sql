/* ---------------------------------------------------------
   Bloque 2 — WHERE (filtros)
----------------------------------------------------------*/

-- 5. Clientes por país
-- Muestra los clientes cuya columna Country sea “Brazil”.
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Country = 'Brazil';

-----------------------------------------------------------

-- 6. Clientes de varios países
-- Obtén los clientes que sean de Brazil, Germany o USA, usando IN.
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Country IN ('Brazil', 'Germany', 'USA');

-----------------------------------------------------------

-- 7. Artistas cuyo nombre empieza con A
-- Devuelve todos los artistas cuyo Name comience con la letra A usando LIKE.
SELECT 
    ArtistId,
    Name
FROM Artist
WHERE Name LIKE 'A%';

-----------------------------------------------------------

-- 8. Pistas más largas
-- Muestra todas las pistas (Track) cuya duración (Milliseconds) sea mayor a 250000.
SELECT 
    TrackId,
    Name,
    Milliseconds
FROM Track
WHERE Milliseconds > 250000;

-----------------------------------------------------------

-- 9. Facturas entre fechas
-- Muestra todas las facturas con fecha (InvoiceDate) entre:
--   • 2009-01-01
--   • 2011-12-31
-- Usa BETWEEN.
SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31';

-----------------------------------------------------------

-- 10. Condiciones múltiples
-- Trae todos los clientes que:
--   • Sean de Brazil, AND
--   • Su nombre comience con la letra J.
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Country = 'Brazil'
  AND FirstName LIKE 'J%';
