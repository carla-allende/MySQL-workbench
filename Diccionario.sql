-- sentencia : select : recuperar filas/registros de una tabla
-- mostrar todos los campos y todas las filas de la tabla articulos
select * -- todos los campos
from articulos; -- tabla a consultar

-- ordenar la salida del select, clausula order by
-- mostrar la marca como primer columna, codigo, descripcion, nombre y precio
-- ademas ordenar por marca alfabeticamente de la A a la Z ( ascendente )

select
     marca,
     codigo,
     descripcion,
     nombre,
     precio,
 from articulos;
order by marca asc;

--  mostrar codigo, nombre y precio
-- ordenando por precio de forma descendente
select
    codigo,
    nombre,
    precio,
    precio*0.21 as IVA -- ejemplo de alias
    precio+precio*0.21 as 'precio final'
from articulos
order by precio desc;

-- ordenar x descripcion y marca
    descripcion,
    marca,
    nombre, 
    stock
from articulos
order by descipcion,marca;

-- limitar la cantidad de registros, clausula limit
select *
from articulos
limit 10;

-- filtrando filas, clausula WHERE
-- mostrar los articulas de la marca LG
select * 
from articulos
where marca = 'lg';

-- mostrar los articulos con mas de 10 unidades de stock
select * 
from articulos
where stock>10; -- no incluye el 10

-- mostrar los art con mas de 10 y menos de 30
-- A: STOCK>10 B:STOCK<30
select *
from articulos
where stock>10 and stock<30;

-- mostrar los articulos con precios mayores o iguales a 1000
-- y menores o iguales a 4000
select *
from articulos
where precio>=1000 and precio<=4000;


-- simplificacion del >= y <= con el and (y) , existe la clausula llamada Between
select *
from articulos
where precio between 1000 and 3000;

-- mostrar los articulos de marca LG , noblex , hitachi
select * 
from articulos
where marca ='lg' or marca='noblex' or marca='hitachi';

-- SIMPLIFICACION PARA MUCHOS OR
-- clausula in
select * 
from articulos
where marca in ('lg', 'noblex', 'hitachi');

-- todos, menos noblex y sony
select * 
from articulos 
where marca not in ('lg', 'sony');

select *
from articulos
where marca <>'lg' and marca <>'sony';
-- mostrar los televisores de marca noblex, lg, samsung
-- cont stock mayor a 10
select * 
from articulos
where descripcion ='televisores' and marca in('noblex','lg','samsung')
and stock>10;

