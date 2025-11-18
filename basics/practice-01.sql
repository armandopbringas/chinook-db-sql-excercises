-- Bloque 1 — SELECT + comprensión del modelo

SHOW TABLES;

-- 1. Listar clientes (Customer)
-- Muestra los primeros 10 clientes, mostrando únicamente:
-- CustomerId, FirstName, LastName, Country.DESC Customer;

SELECT * FROM Customer LIMIT 10;

-- 2. Listar artistas (Artist)
-- Obtén la lista de todos los artistas, mostrando solo su ArtistId y Name.

DESC Artist;
SELECT * FROM Artist;

-- 3. Seleccionar columnas específicas
-- Consulta la tabla Album y muestra solo:
-- AlbumId y Title.

DESC Album;
SELECT AlbumId, Title FROM Album;

-- 4. Contar cuántos registros tiene cada tabla base
--  Consulta la tabla Track y devuelve cuántas pistas existen en total usando COUNT().

SELECT COUNT(*) FROM Track;
