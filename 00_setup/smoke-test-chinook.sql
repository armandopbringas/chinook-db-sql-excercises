
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
LIMIT 10;

SELECT ArtistId, Name
FROM Artist
LIMIT 10;

SELECT 
    i.InvoiceId,
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
LIMIT 10;

SELECT Country, COUNT(*) AS total_clientes
FROM Customer
GROUP BY Country
ORDER BY total_clientes DESC
LIMIT 5;

SELECT 
    t.TrackId,
    t.Name AS Track,
    a.Title AS Album
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
LIMIT 10;
