-- ============================================================
-- Tabla: stg.empleados
-- Descripción: Almacena la información básica de los empleados
-- --              de la empresa. Cada registro representa un
-- --              empleado.
-- Autor: Teofilo Correa Rojas
-- Fecha: 9 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.empleados (

    id              SERIAL              PRIMARY KEY,
    nombre          VARCHAR(250)        NOT NULL,
    email           VARCHAR(100)        NOT NULL,
    cargo           VARCHAR(250)        NOT NULL,
    fecha_ingreso   DATE                NOT NULL,
    activo          BOOLEAN             NOT NULL,
    created_at      TIMESTAMP           NOT NULL
);