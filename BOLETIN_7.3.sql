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

SELECT title, price, notes --, type
FROM titles
WHERE type LIKE '%_cook'
ORDER BY price DESC
GO
--2. ID, descripción y nivel máximo y mínimo de los puestos de trabajo (jobs) que pueden tener un nivel 110.
SELECT * FROM jobs
GO

SELECT job_id, job_desc, max_lvl, min_lvl
FROM jobs
WHERE max_lvl <= 110
GO
--3. Título, ID y tema de los libros que contengan la palabra "and” en las notas
SELECT * FROM titles
GO

SELECT title_id, type--, notes
FROM titles
WHERE notes LIKE '% and %'
GO
--4. Nombre y ciudad de las editoriales (publishers) de los Estados Unidos que no estén en California ni en Texas
SELECT * FROM publishers
GO

SELECT pub_name, city--, state
FROM publishers
WHERE country LIKE 'USA' AND (state NOT LIKE 'CA' AND STATE NOT LIKE 'TX')
GO
--5. Título, precio, ID de los libros que traten sobre psicología o negocios y cuesten entre diez y 20 dólares.
SELECT * FROM titles
GO

SELECT title, price, title_id
FROM titles
WHERE (type NOT LIKE 'psychology' AND type NOT LIKE 'businness') AND price BETWEEN 10 AND 20
GO
--6. Nombre completo (nombre y apellido) y dirección completa de todos los autores que no viven en California ni en Oregón.
SELECT * FROM authors
GO

SELECT CONCAT(au_fname, ' ', au_lname) AS [NOMBRE COMPLETO], state, city, address
FROM authors
WHERE state NOT LIKE 'CA' AND state NOT LIKE 'OR'
GO
--7. Nombre completo y dirección completa de todos los autores cuyo apellido empieza por D, G o S.
SELECT * FROM authors
GO

SELECT CONCAT(au_fname, ' ', au_lname) AS [NOMBRE COMPLETO], state, city, address
FROM authors
WHERE au_lname NOT LIKE 'D%' AND au_lname NOT LIKE 'G%' AND au_lname NOT LIKE 'S%'
GO
--8. ID, nivel y nombre completo de todos los empleados con un nivel inferior a 100, ordenado alfabéticamente
SELECT * FROM employee
GO

SELECT emp_id, job_lvl, CONCAT(fname, ' ', lname) AS [NOMBRE COMPLETO]
FROM employee
WHERE job_lvl < 100
ORDER BY [NOMBRE COMPLETO]
GO

--Modificaciones de datos

--1. Inserta un nuevo autor.
SELECT * FROM authors
GO

INSERT INTO [dbo].[authors]
           ([au_id]
           ,[au_lname]
           ,[au_fname]
           ,[phone]
           ,[address]
           ,[city]
           ,[state]
           ,[zip]
           ,[contract])
     VALUES
           ('123-45-7890','Vergara','Luis','+34685408579','Calle Sierra Arrieta','Sevilla','ES','12345',1)
GO
--2. Inserta dos libros, escritos por el autor que has insertado antes y publicados por la editorial "Ramona publishers”.
SELECT * FROM titles
--3. Modifica la tabla jobs para que el nivel mínimo sea 90.
UPDATE [dbo].[jobs]
   SET [min_lvl] = 90
GO

SELECT * FROM jobs
GO
--4. Crea una nueva editorial (publihers) con ID 9908, nombre Mostachon Books y sede en Utrera.
INSERT INTO [dbo].[publishers]
           ([pub_id]
           ,[pub_name]
           ,[city]
           ,[state]
           ,[country])
     VALUES
           (9908, 'Mostachon Books', 'Utrera', 'ES', 'Sevilla')
GO

SELECT * FROM publishers
GO
--5. Cambia el nombre de la editorial con sede en Alemania para que se llame "Machen Wücher" y traslasde su sede a Stuttgart
UPDATE [dbo].[publishers]
   SET [city] = 'Stuttgart'
 WHERE pub_name = 'Manchen Wücher'
GO