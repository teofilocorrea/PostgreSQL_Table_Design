-- ============================================================
-- Tabla: stg.categorias
-- Descripción: Almacena la información básica de las categorias
-- --              de la empresa. Cada registro representa una
-- --              categoria adquirida.
-- Autor: Teofilo Correa Rojas
-- Fecha: 8 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.categorias (

   id           SERIAL          PRIMARY KEY,
   nombre       VARCHAR(100)    NOT NULL,
   descripcion  VARCHAR(2000),
   activo       BOOLEAN         NOT NULL,
   created_at   TIMESTAMP       NOT NULL
);