-- crear  una tabla (columnas/ campos y filas/ registros (informacion)
-- nombre: alumnos
-- campos: DNI (entero), apellido(texto) y nombre (texto)
-- 1. activar la BD 
use introBD;
-- creo la tabla
create table Alumnos
(
   -- campos y tipo de dato
   dni int ,
   apellido varchar(50),
   nombre varchar (50)
);

