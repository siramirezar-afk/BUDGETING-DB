# BUDGETING - Controla tus gastos, libera tu futuro

## Descripción

El proyecto Budgeting tiene como propósito facilitar al usuario el control de sus finanzas personales mediante una base de datos relacional (PostgreSQL) que permite registrar, visualizar y analizar gastos e ingresos. El sistema ofrece una forma clara y accesible de organizar las transacciones diarias, clasificarlas por categorías, establecer presupuestos y generar reportes periódicos. Para su desarrollo se implementaron conceptos fundamentales de Sistemas de Gestión de Bases de Datos como diseño DDL para entidades (usuarios, transacciones, presupuestos y reportes), restricciones de integridad con llaves primarias y foráneas, optimización mediante índices únicos, consultas DML y triggers.

## Integrantes

- Luna Sofia Santis Alvarez
- Silvana Ramírez Ardila
- Jesus Samuel Avellaneda Perico

## Lenguajes y herramientas

- SQL (Structured Query Language)
- PostgreSQL


## Funcionalidades del sistema

- Gestión Integral de Usuarios: Registro, almacenamiento y control de perfiles únicos en el sistema.

- Registro y Clasificación de Transacciones: Almacenamiento detallado de ingresos y gastos vinculados a categorías personalizadas.

- Control de Presupuestos Financieros: Configuración de topes máximos de gasto por categoría y usuario sin duplicidad.

- Generación de Reportes Periódicos: Consolidación de historiales financieros estructurados por fechas.

- Validación Automatizada de Datos: Restricción por servidor (trigger) que impide el ingreso de montos menores o iguales a cero.

- Consultas de Rendimiento y Análisis: Extracción cronológica y optimizada del historial financiero mediante uniones de tablas.

## Estructura del proyecto

```
Budgeting/
│
├── README.md
├── database/
│   ├── schema.sql              # DDL (tablas, alteraciones, índices)
│   ├── triggers.sql            # Código del trigger
│   └── queries.sql             # Consulta de transacciones
│
└── src/
    ├── Main.java               
    ├── DatabaseConnection.java # Clase para conectar Java con PostgreSQL (JDBC)
    ├── User.java               # Modelo de usuario 
    ├── Transaction.java        # Modelo de transacción 
    └── Budget.java             # Modelo de presupuesto 
```

## Guía de instalación

1. Clonar el repositorio:
```bash
git clone https://github.com/siramirezar-afk/BUDGETING-DB.git
```

2. Configurar la base de datos:
  -Abre tu cliente de PostgreSQL (pgAdmin, DBeaver o la terminal).
  -Crea una nueva base de datos llamada budgeting.
  -Ejecuta los scripts en el siguiente orden:
      database/schema.sql (Crea las tablas e índices)
      database/triggers.sql (Crea el trigger de validación)
   
3. Configurar la conexión de la base de datos:
  -Abre src/DatabaseConnection.java y actualiza la URL de la base de datos, el usuario y la contraseña con tus credenciales de PostgreSQL.

4. Compilar el proyecto:
```bash
javac -d bin src/*.java
```

5. Ejecutar el sistema (elige una):
```bash
java -cp bin Main
```
