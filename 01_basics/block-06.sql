/* ---------------------------------------------------------
   Bloque 6 — Comprensión de llaves y relaciones
----------------------------------------------------------*/

-- 23. Identificar Primary Keys
-- Devuelve la lista de columnas que sean Primary Key dentro de la tabla Track.
-- (Tip: usa SHOW CREATE TABLE Track o revisa información del diccionario.)
SHOW KEYS FROM Track 
WHERE Key_name = 'PRIMARY';

-----------------------------------------------------------

-- 24. Identificar Foreign Keys
-- Identifica las llaves foráneas de la tabla InvoiceLine.
-- (Tip: apunta a Invoice e InvoiceLine→Track.)
SELECT 
    COLUMN_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'chinook'
  AND TABLE_NAME = 'InvoiceLine'
  AND REFERENCED_TABLE_NAME IS NOT NULL;


SHOW KEYS FROM Invoice WHERE Key_name = 'PRIMARY';

-----------------------------------------------------------

-- 25. Relación N:N
-- Describe la relación entre Playlist y Track indicando qué tabla intermedia se usa.
-- (Tip: la tabla puente es PlaylistTrack.)
SELECT 
    p.PlaylistId,
    p.Name AS PlaylistName,
    t.TrackId,
    t.Name AS TrackName
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
JOIN Track t ON pt.TrackId = t.TrackId
LIMIT 20;
