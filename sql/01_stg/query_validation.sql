SELECT 'stg.categorias' AS tabla, COUNT(*) AS registro FROM stg.categorias UNION ALL
SELECT 'stg.clientes' AS tabla, COUNT(*) AS registro FROM stg.clientes UNION ALL
SELECT 'stg.empleados' AS tabla, COUNT(*) AS registro FROM stg.empleados UNION ALL
SELECT 'stg.orden_detalle' AS tabla, COUNT(*) AS registro FROM stg.orden_detalle UNION ALL
SELECT 'stg.ordenes' AS tabla, COUNT(*) AS registro FROM stg.ordenes UNION ALL
SELECT 'stg.productos' AS tabla, COUNT(*) AS registro FROM stg.productos UNION ALL
SELECT 'stg.proveedores' AS tabla, COUNT(*) AS registro FROM stg.proveedores