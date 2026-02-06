/* ---------------------------------------------------------
   Bloque 3 — ORDER BY
----------------------------------------------------------*/

-- 11. Artistas ordenados alfabéticamente
-- Lista los artistas ordenados por Name en orden ascendente.
SELECT ArtistId, Name
FROM Artist
ORDER BY Name ASC;

-----------------------------------------------------------

-- 12. Facturas ordenadas por monto
-- Muestra las facturas ordenadas por Total descendente.
SELECT InvoiceId, CustomerId, InvoiceDate, Total
FROM Invoice
ORDER BY Total DESC;

-----------------------------------------------------------

-- 13. Tracks ordenados por duración y nombre
-- Ordena las pistas primero por Milliseconds (ASC), luego por Name (ASC).
SELECT TrackId, Name, Milliseconds
FROM Track
ORDER BY Milliseconds ASC, Name ASC;
