# JRDV-TSQL-Gestion-Publica
Material suplementario del artículo científico sobre modelo de datos orientado a objetos con clasificadores flexibles en temas transversales para la base de datos del Presupuesto Público del Perú.

## Descripción del Proyecto
Este repositorio aloja el material suplementario, artefactos tecnológicos y scripts de base de datos desarrollados en el marco del artículo científico titulado: **"Propuesta de modelo de datos orientado a objetos con clasificadores flexibles en temas transversales para la base de datos del Presupuesto Público del Perú."**.

El objetivo central de esta investigación de maestría es proponer e implementar un modelo de persistencia híbrido utilizando vistas de dualidad relacional de objetos (**JRDV**) en entornos Oracle SQL. Esta solución aborda el desajuste de impedancia y optimiza el rendimiento y la interoperabilidad al procesar estructuras jerárquicas complejas dentro de la administración pública peruana (tales como clasificadores tranversales, institucionales, geográficos y funcionales del Ministerio de Economía y Finanzas).

## Estructura del Repositorio
Para facilitar la evaluación de los revisores pares y editores de la revista científica, el ecosistema de código fuente se encuentra organizado bajo los siguientes directorios técnicos:

*   📁 **`/database`**: Contiene las definiciones de las vistas de dualidad relacional JSON (ej. `institucion_hier_dv.sql`).
*   📁 **`/queries`**: Consultas y operaciones SQL para creación de tablas y operaciones CRUD.

## Tecnologías Utilizadas
*   **Motor de Base de Datos:** Oracle Database (compatible con JSON Relational Duality Views).
*   **Lenguaje Procedimental:** T-SQL / PL-SQL de nivel corporativo.
*   **Formatos de Interoperabilidad:** Esquemas JSON anidados para el intercambio de datos entre entidades del Estado.

## Replicabilidad y Licencia
Este material se distribuye bajo la licencia de código abierto **MIT**, promoviendo la transparencia de datos y permitiendo a las instituciones del sector público replicar de manera íntegra los resultados de velocidad y eficiencia documentados en el manuscrito principal.

---
**Cita del Software (APA 7):**
Navarrete, J. F. (2026). *Repositorio JRDV-SQL-Gestion-Publica: Arquitectura de datos orientada a la modernización de los sistemas presupuestales del Estado* [Software]. GitHub. https://github.com
