# Chinook Project Queries

Proyecto de práctica SQL sobre la base de datos Chinook, organizado en ruta progresiva.

## Estructura

- `00_setup/`
  - `smoke-test-chinook.sql` → consultas rápidas para validar conexión, tablas y datos base.

- `01_basics/`
  - `block-01.sql` → SELECT básicos
  - `block-02.sql` → WHERE (filtros)
  - `block-03.sql` → ORDER BY
  - `block-04.sql` → DISTINCT + LIMIT/OFFSET
  - `block-05.sql` → agregaciones básicas
  - `block-06.sql` → llaves y relaciones (PK/FK/N:N)

- `02_intermediate/`
  - `block-07.sql` → GROUP BY
  - `block-08.sql` → HAVING
  - `block-09.sql` → JOINs
  - `block-10.sql` → JOIN avanzado + análisis
  - `block-11.sql` → subconsultas

## Orden recomendado de estudio

1. Ejecuta `00_setup/smoke-test-chinook.sql`.
2. Recorre `01_basics/` en orden (01 → 06).
3. Recorre `02_intermediate/` en orden (07 → 11).

## Convención de bloques

- Cada bloque contiene ejercicios por tema.
- Mantén numeración secuencial (`block-12.sql`, `block-13.sql`, etc.) para nuevos temas.
- Documenta arriba de cada query el objetivo analítico.
