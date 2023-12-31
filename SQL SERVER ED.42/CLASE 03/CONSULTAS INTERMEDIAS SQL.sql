--CONSULTAS INTERMEDIAS SQL SERVER
--TIPOS DE CONSULTA
--CONSULTAS DE SELECCION
SELECT * FROM Clientes
WHERE Idcliente = 'C0001'
--
--ORDER BY ASC
SELECT A.* FROM Articulos A
ORDER BY A.NomArticulo ASC
-- ORDER BY DESC
SELECT * FROM Facturas
ORDER BY Fecha DESC
---COMODINES (COMPARACION DE CARACTERES)
--- % (REPRESENTA CUALQUIER CARACTER)
--CLIENTES DONDE EL NOMBRE INICIE CON LA M
SELECT * FROM Clientes
WHERE NomCliente LIKE 'M%'
--QUE FINALIZE EN R (NOMCLIENTE)
SELECT * FROM Clientes
WHERE NomCliente LIKE '%r'
-- QUE CONTENGA LA LETRA A
SELECT * FROM Clientes 
WHERE NomCliente LIKE '%A%'
-- _ (GUION ABAJO)
-- REPRESENTA CUALQUIERA CARACTER PERO SOLO 1
--LISTAR CLIENTES CUYO 2 CARACTER DE SU 
-- NOMBRE SEA LA LETRA A
SELECT * FROM Clientes
WHERE NomCliente LIKE '_A%'
--DE 2 TABLAS
SELECT *
FROM Clientes C, Facturas F
WHERE C.Idcliente = F.IdCliente AND
C.NomCliente LIKE '__E%'
-- 3 TABLAS
SELECT C.Idcliente,D.Cantidad
FROM Clientes C, Facturas F,Detalles D
WHERE C.Idcliente = F.IdCliente AND
F.IdFactura = D.IdFactura AND
C.NomCliente LIKE '__E%'



