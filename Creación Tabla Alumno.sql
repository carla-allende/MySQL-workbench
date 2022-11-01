/*Productos
Tipo           	permite nulo
IdProducto	Int 	no
Nombre	varchar  	no
Precio	double	    no
Marca	varchar	     no
categoria	varchar	 no
stock	int	         no
Disponible	boolean */
use indroBD; -- activa la base de datos
create table productos 
(
    -- campos
     IdPRODUCTO int auto_increment primary key,
     Nombre varchar (50) not null,
     Precio double not null,
     Marca varchar (50) not null,
     Categoria varchar (50) not null,
     Stock int not null,
     Disponible boolean default false
    );
    -- agregar un producto
    insert into productos(IdPRODUCTO,nombre,precio,marca,categoria,stock,disponible)
    values('Teclado 101 teclas',2000,'genius','informatica',100,true);
    select * from productos;
    