# Data Steward — STG Layer

## Propósito de la capa
Zona de aterrizaje crudo. Los datos llegan tal como son,
sin transformaciones ni validaciones.

## Reglas generales de la capa
- Sin constraints estrictos
- Solo PRIMARY KEY
- Sin validaciones de formato
- Acepta datos tal como vienen

---

## Tabla: stg.categorias

### Descripción
Almacena la información básica de los empleados de la empresa.
Cada registro representa a una persona contratada.

### Campos

| Campo          | ¿Qué guarda?                        | Obligatorio | Único | Tipo elegido  | Razón del tipo                                           |
|----------------|-------------------------------------|-------------|-------|---------------|----------------------------------------------------------|
| id             | Identificador único de la categoría    | Sí          | Sí    | SERIAL        | Se genera automático, no necesitamos asignarlo           |
| nombre         | Nombre de la categoría ej: Ropa, Electrónica        | Sí          | Sí    | NVARCHAR(100) | Texto corto, sabemos que no superará 100 caracteres      |
| descripcion          | Detalle de qué incluye la categoría       | No          | No    | VARCHAR(2000) | Texto corto con longitud máxima conocida 2000 caracteres |
| activo        | Si la categoría está disponible o no             | Sí          | No    | BOOLEAN | Solo puede ser verdadero o falso        |
| created_at     | Cuándo se creó el registro en la BD | Sí          | No    | TIMESTAMP     | Necesitamos fecha y hora exacta de carga                 |

## Tabla: stg.proveedores

### Descripción
Almacena la información básica de los proveedores de la empresa.
Cada registro representa un proveedor contratado.

### Campos

| Campo          | ¿Qué guarda?                        | Obligatorio | Único | Tipo elegido  | Razón del tipo                                                     |
|----------------|-------------------------------------|-------------|-------|---------------|--------------------------------------------------------------------|
| id             | Identificador único del proveedor   | Sí          | Sí    | SERIAL        | Se genera automático, no necesitamos asignarlo                     |
| nombre         | Nombre de la empresa proveedora        | Sí          | No    | NVARCHAR(100) | Texto corto, sabemos que no superará 100 caracteres                |
| contacto          | Nombre de la persona de contacto       | No          | No    | NVARCHAR(150) | Texto corto, sabemos que no superará 150 caracteres                |
| email        | Correo electrónico del proveedor             | No          | Sí    | NVARCHAR(150) | Texto corto con longitud máxima conocida                           |
| telefono         | Número de teléfono     | No          | No    | VARCHAR(15)   | Solo puede aceptar 15 digitos que no incluye Guiones ni parentesis |
| pais  | País de origen del proveedor     | No          | No    | VARCHAR(100)  | Texto corto con longitud máxima conocida 100 caracteres            |
| activo  | Si el proveedor está activo     | Sí          | No    | BOOLEAN       | Solo puede ser verdadero o falso            |
| created_at     | Cuándo se creó el registro | Sí          | No    | TIMESTAMP     | Necesitamos fecha y hora exacta de carga                           |

## Tabla: stg.productos

### Descripción
Almacena la información básica de los productos de la empresa.
Cada registro representa un producto adquirido.

### Campos

| Campo          | ¿Qué guarda?                        | Obligatorio | Único | Tipo elegido  | Razón del tipo                                                  |
|----------------|-------------------------------------|-------------|-------|---------------|-----------------------------------------------------------------|
| id             | Identificador único del producto   | Sí          | Sí    | SERIAL        | Se genera automático, no necesitamos asignarlo                  |
| nombre         | Nombre del producto        | Sí          | No    | NVARCHAR(100) | Texto corto, sabemos que no superará 100 caracteres             |
| descripcion          | Descripción detallada del producto       | No          | No    | NVARCHAR(250) | Texto corto, sabemos que no superará 250 caracteres             |
| precio        | Precio de venta             | Sí          | No    | NUMERIC(4,2)  | Necesita decimales exactos, es un valor monetario               |
| stock         | Cantidad disponible en inventario     | Sí          | No    | INT           | Aceptar cantidad de mas de 2 millones de numeros para no limitar |
| categoria_id  | FK — a qué categoría pertenece     | Sí          | No    | INT           | Se relaciona con la tabla de categorias                         |
| proveedor_id  | FK — quién lo suministra     | Sí          | No    | INT           | Se relaciona con la tabla de proveedor                          |
| activo     | Si el producto está disponible | Sí          | No    | BOOLEAN     | Solo puede ser verdadero o falso                                |
| created_at     | Cuándo se creó el registro | Sí          | No    | TIMESTAMP     | Necesitamos fecha y hora exacta de carga          |