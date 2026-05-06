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

## Tabla: stg.empleados_ejemplo

### Descripción
Almacena la información básica de los empleados de la empresa.
Cada registro representa a una persona contratada.

### Campos

| Campo          | ¿Qué guarda?                        | Obligatorio | Único | Tipo elegido | Razón del tipo                                          |
|----------------|-------------------------------------|-------------|-------|--------------|---------------------------------------------------------|
| id             | Identificador único del empleado    | Sí          | Sí    | SERIAL       | Se genera automático, no necesitamos asignarlo          |
| nombre         | Nombre completo del empleado        | Sí          | No    | NVARCHAR(100) | Texto corto, sabemos que no superará 100 caracteres     |
| email          | Correo electrónico de trabajo       | Sí          | Sí    | VARCHAR(150) | Texto corto con longitud máxima conocida 150 caracteres |
| salario        | Sueldo mensual en pesos             | Sí          | No    | NUMERIC(10,2) | Necesita decimales exactos, es un valor monetario       |
| activo         | Si el empleado está activo o no     | Sí          | No    | BOOLEAN      | Solo puede ser verdadero o falso                        |
| fecha_ingreso  | Fecha en que entró a la empresa     | Sí          | No    | DATE         | Solo necesitamos la fecha, no la hora                   |
| created_at     | Cuándo se creó el registro en la BD | Sí          | No    | TIMESTAMP    | Necesitamos fecha y hora exacta de carga                |

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