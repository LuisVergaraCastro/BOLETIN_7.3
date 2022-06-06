--7 - Manipulaci�n de datos y consultas b�sicas de selecci�n
--Boletin 7.3 
--Consultas sobre una sola Tabla sin agregados
--Sobre la base de datos "pubs� (En la plataforma aparece como "Ejemplos 2000").
GO
USE pubs
GO
--1. T�tulo, precio y notas de los libros (titles) que tratan de cocina, ordenados de mayor a menor precio.
SELECT * FROM titles
GO

SELECT TI
FROM TI
GO
--2. ID, descripci�n y nivel m�ximo y m�nimo de los puestos de trabajo (jobs) que pueden tener un nivel 110.

--3. T�tulo, ID y tema de los libros que contengan la palabra "and� en las notas

--4. Nombre y ciudad de las editoriales (publishers) de los Estados Unidos que no est�n en California ni en Texas

--5. T�tulo, precio, ID de los libros que traten sobre psicolog�a o negocios y cuesten entre diez y 20 d�lares.

--6. Nombre completo (nombre y apellido) y direcci�n completa de todos los autores que no viven en California ni en Oreg�n.

--7. Nombre completo y direcci�n completa de todos los autores cuyo apellido empieza por D, G o S.

--8. ID, nivel y nombre completo de todos los empleados con un nivel inferior a 100, ordenado alfab�ticamente

--Modificaciones de datos

--1. Inserta un nuevo autor.

--2. Inserta dos libros, escritos por el autor que has insertado antes y publicados por la editorial "Ramona publishers�.

--3. Modifica la tabla jobs para que el nivel m�nimo sea 90.

--4. Crea una nueva editorial (publihers) con ID 9908, nombre Mostachon Books y sede en Utrera.

--5. Cambia el nombre de la editorial con sede en Alemania para que se llame "Machen W�cher" y traslasde su sede a Stuttgart