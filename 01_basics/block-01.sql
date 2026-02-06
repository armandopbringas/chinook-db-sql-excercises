/* ---------------------------------------------------------
   Bloque 1 — SELECT básicos
----------------------------------------------------------*/

-- Modelo base
SHOW TABLES;

-----------------------------------------------------------

-- 1. Listar clientes (Customer)
-- Muestra los primeros 10 clientes, mostrando únicamente:
-- CustomerId, FirstName, LastName, Country.
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
LIMIT 10;

-----------------------------------------------------------

-- 2. Listar artistas (Artist)
-- Obtén la lista de todos los artistas, mostrando solo su ArtistId y Name.
SELECT 
    ArtistId,
    Name
FROM Artist;

-----------------------------------------------------------

-- 3. Seleccionar columnas específicas
-- Consulta la tabla Album y muestra solo:
-- AlbumId y Title.
SELECT 
    AlbumId,
    Title
FROM Album;

-----------------------------------------------------------

-- 4. Contar cuántos registros tiene cada tabla base
-- Consulta la tabla Track y devuelve cuántas pistas existen en total usando COUNT().
SELECT COUNT(*) AS TotalTracks
FROM Track;
