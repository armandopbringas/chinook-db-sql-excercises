-- Bloque 4 — DISTINCT + LIMIT
--
-- 14. Países únicos
--
-- Muestra todos los países únicos donde hay clientes (Customer.Country).
SELECT DISTINCT CustomerId, Country FROM Customer;
-- ⸻
--
-- 15. Primeras 5 pistas
--
-- Devuelve las primeras cinco pistas de la tabla Track.
SELECT TrackId, NAME FROM Track LIMIT 5;
--
-- 16. Paginación
-- Devuelve las pistas entre las posiciones 11 y 20 usando LIMIT y OFFSET.
SELECT TrackId, NAME FROM Track ORDER BY TrackId LIMIT 10 OFFSET 10;
--
-- 17. Géneros únicos ordenados
-- Muestra los valores únicos de Genre.Name, ordenados alfabéticamente.
SELECT Name FROM Genre ORDER BY Name ASC;
