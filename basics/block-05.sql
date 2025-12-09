-- Bloque 5 — Agregaciones básicas
--
-- 18. Total de clientes
--
-- Cuenta cuántos clientes existen usando COUNT(*).
SELECT COUNT(*) FROM Customer;
-- 19. Precio máximo y mínimo de pistas
--
-- Obtén el precio máximo (UnitPrice) y el precio mínimo de la tabla Track.
SELECT
    MAX(UnitPrice) AS MaxPrice,
    MIN(UnitPrice) AS MinPrice
FROM Track;
-- ⸻
--
-- 20. Ventas totales
-- Suma todos los montos de facturas (Invoice.Total).
SELECT SUM(Total) AS TotalReveanue FROM Invoice;
-- ⸻
--
-- 21. Duración promedio
-- Calcula la duración promedio de todas las pistas (Milliseconds).
SELECT AVG(Milliseconds) AS AvgDuration FROM Track;
--
--
-- 22. Promedio redondeado
-- Calcula el precio promedio de las pistas (UnitPrice) redondeado a dos decimales.
SELECT ROUND(AVG(UnitPrice), 2) AS AvgPriceTrack FROM Track;
