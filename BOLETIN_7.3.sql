--7 - Manipulación de datos y consultas básicas de selección
--Boletin 7.3 
--Consultas sobre una sola Tabla sin agregados
--Sobre la base de datos "pubs” (En la plataforma aparece como "Ejemplos 2000").
GO
USE pubs
GO
--1. Título, precio y notas de los libros (titles) que tratan de cocina, ordenados de mayor a menor precio.
SELECT * FROM titles
GO

SELECT TI
FROM TI
GO
--2. ID, descripción y nivel máximo y mínimo de los puestos de trabajo (jobs) que pueden tener un nivel 110.

--3. Título, ID y tema de los libros que contengan la palabra "and” en las notas

--4. Nombre y ciudad de las editoriales (publishers) de los Estados Unidos que no estén en California ni en Texas

--5. Título, precio, ID de los libros que traten sobre psicología o negocios y cuesten entre diez y 20 dólares.

--6. Nombre completo (nombre y apellido) y dirección completa de todos los autores que no viven en California ni en Oregón.

--7. Nombre completo y dirección completa de todos los autores cuyo apellido empieza por D, G o S.

--8. ID, nivel y nombre completo de todos los empleados con un nivel inferior a 100, ordenado alfabéticamente

--Modificaciones de datos

--1. Inserta un nuevo autor.

--2. Inserta dos libros, escritos por el autor que has insertado antes y publicados por la editorial "Ramona publishers”.

--3. Modifica la tabla jobs para que el nivel mínimo sea 90.

--4. Crea una nueva editorial (publihers) con ID 9908, nombre Mostachon Books y sede en Utrera.

--5. Cambia el nombre de la editorial con sede en Alemania para que se llame "Machen Wücher" y traslasde su sede a Stuttgart