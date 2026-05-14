# PostgreSQL Table Design — STG Layer

![Banner](docs/table_design_SQL.png)

## 📌 Descripción

Este proyecto tiene como objetivo construir y documentar las **tablas
de la capa STG (Staging)** de una plataforma de datos en PostgreSQL,
aplicando la arquitectura Medallion como base de organización.

El enfoque es práctico y progresivo, aprendiendo el diseño de tablas,
tipos de datos, inserción manual de registros y documentación técnica
como Data Steward.

---

## 🎯 Objetivos del proyecto~~~~

- Diseñar tablas siguiendo buenas prácticas de nomenclatura
- Aplicar tipos de datos correctos según el contexto de negocio
- Documentar el modelo de datos como Data Steward
- Insertar datos manualmente con INSERT INTO~~~~
- Validar la correcta implementación de las tablas
- Sentar las bases para las capas Bronze y Silver

---

## 🏗️ Arquitectura — STG Layer

```
Arquitectura Medallion
│
├── STG     ← este proyecto
├── Bronze  ← Proyecto 3
├── Silver  ← Proyecto 4
└── Gold    ← Proyecto 5
```
La capa STG es la zona de aterrizaje crudo. Los datos llegan
tal como son, sin transformaciones ni validaciones estrictas.

**Reglas de esta capa:**
- Solo PRIMARY KEY como constraint
- NOT NULL en campos mínimos obligatorios
- Sin UNIQUE, CHECK ni FK formales
- Acepta datos tal como vienen de la fuente

---

## 🧱 Estructura del proyecto

```
PostgreSQL_Table_Design/
│
├── docs/
│   ├── table_design_decisions.png
│   ├── data_dictionary.md
│   └── diagram_erd_stg.png
│
├── sql/
│   └── 01_stg/
│       ├── create_tables/
│       │   ├── create_categorias.sql
│       │   ├── create_proveedores.sql
│       │   ├── create_productos.sql
│       │   ├── create_empleados.sql
│       │   ├── create_clientes.sql
│       │   ├── create_ordenes.sql
│       │   └── create_orden_detalle.sql
│       ├── insert_data/
│       │   ├── insert_categorias.sql
│       │   ├── insert_proveedores.sql
│       │   ├── insert_productos.sql
│       │   ├── insert_empleados.sql
│       │   ├── insert_clientes.sql
│       │   ├── insert_ordenes.sql
│       │   └── insert_orden_detalle.sql
│       ├── README.md
│       └── validation/
│           └── query_validation.sql
│
├── .gitignore
└── README.md
```
---

## 📊 Entidades del modelo

| Tabla | Descripción | Campos |
|---|---|---|
| `stg.categorias` | Categorías de productos | 5 |
| `stg.proveedores` | Proveedores de la empresa | 8 |
| `stg.productos` | Catálogo de productos | 9 |
| `stg.empleados` | Empleados de la empresa | 7 |
| `stg.clientes` | Clientes registrados | 9 |
| `stg.ordenes` | Órdenes de compra | 7 |
| `stg.orden_detalle` | Detalle de cada orden | 7 |

---

## 🔵 Data Steward

### Inventario de tipos de datos — STG Layer

| Tipo | Descripción | Usado en |
|---|---|---|
| `SERIAL` | Entero autoincremental — PK | Todas las tablas |
| `VARCHAR(n)` | Texto corto con longitud definida | nombre, email, estado |
| `TEXT` | Texto sin límite de longitud | descripcion en productos |
| `INTEGER` | Número entero | stock, campos de referencia |
| `NUMERIC(10,2)` | Decimal con precisión exacta | precio, total, subtotal |
| `BOOLEAN` | Verdadero o falso | activo en todas las tablas |
| `DATE` | Solo fecha sin hora | fecha_ingreso, fecha_registro |
| `TIMESTAMP` | Fecha y hora exacta | created_at en todas las tablas |

### Documentación completa
📄 [data_steward_stg.md](sql/01_stg/data_steward_stg.md)

---

## 🗺️ Diagrama ERD — STG Layer

> Las tablas STG son independientes entre sí.
> Las relaciones formales se implementan en la capa Silver.

![ERD STG](docs/erd_stg.png)

---

## 🔗 Proyectos relacionados

| # | Proyecto | Descripción |
|---|---|---|
| 1 | [PostgreSQL_Database_Infrastructure](https://github.com/teofilocorrea/PostgreSQL_Database_Infrastructure) | Base de datos y esquemas |
| 2 | PostgreSQL_Table_Design | STG Layer ← estás aquí |
| 3 | PostgreSQL_Bronze_Layer | Bronze + auditoría |
| 4 | PostgreSQL_Silver_Layer | Silver + constraints + FK |
| 5 | PostgreSQL_Data_Modeling | Gold + Star Schema |

---

## 👤 Autor

### Teófilo Correa Rojas

**Analista de Datos | Data Steward**

🔗 [LinkedIn](https://www.linkedin.com/in/teófilo-correa-rojas/)
