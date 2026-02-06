/* ---------------------------------------------------------
   Bloque 11 — Subconsultas
----------------------------------------------------------*/

-- 46. Clientes que compran por encima del promedio
-- Muestra CustomerId de quienes han comprado más que el promedio de facturación global.

-- 47. Tracks más caros que el precio promedio
-- Devuelve Track.Name y UnitPrice donde UnitPrice > (SELECT AVG(UnitPrice) FROM Track).

-- 48. Facturas mayores al monto promedio anual
-- Compara cada factura con el promedio agregando por año.

-- 49. Géneros con duración total mayor al promedio global
-- SUM(Milliseconds) > (SELECT AVG(Milliseconds) FROM Track).

-- 50. Clientes que hicieron su primera compra en 2012
-- Usar subconsulta para encontrar MIN(InvoiceDate) por cliente.
