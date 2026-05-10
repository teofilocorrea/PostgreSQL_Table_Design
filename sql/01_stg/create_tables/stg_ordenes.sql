-- ============================================================
-- Tabla: stg.ordenes
-- Descripción: Almacena la información básica de las ordenes
-- --              de la empresa. Cada registro representa una
-- --              ordenes.
-- Autor: Teofilo Correa Rojas
-- Fecha: 8 de mayo 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.ordenes (

    id              SERIAL                  PRIMARY KEY,
    cliente_id      INT,
    empleado_id     INT,
    fecha_orden     DATE                    NOT NULL,
    estado          VARCHAR(50)             NOT NULL,
    total           NUMERIC(10,2)           NOT NULL,
    created_at      TIMESTAMP               NOT NULL
);