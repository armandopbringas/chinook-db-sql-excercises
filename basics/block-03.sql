--
-- Bloque 3 — ORDER BY
--
-- 11. Artistas ordenados alfabéticamente
--
-- Lista los artistas ordenados por Name en orden ascendente.
SELECT Name FROM Artist ORDER BY Name ASC;

-- 12. Facturas ordenadas por monto
-- Muestra las facturas ordenadas por Total descendente.
SELECT InvoiceId, CustomerId, InvoiceDate, Total FROM Invoice ORDER BY Total DESC;

-- 13. Tracks ordenados por duración y nombre
-- Ordena las pistas primero por Milliseconds (ASC), luego por Name (ASC).
SELECT * FROM (
  SELECT NAME, Milliseconds FROM Track
  ) AS nt
  ORDER BY nt.Milliseconds ASC, nt.Name ASC;
