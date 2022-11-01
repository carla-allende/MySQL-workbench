-- mostrar bases de datos
show databases; 
-- mostrar la estructura de una tabla
describe productos;
-- mostrar tablas de la base de datos activa
show tables; 
## comentario solo de MySql

-- tipo de dato enum (enumeracion) es comoo que yo defina una lista y en esa tabla puedo agregar esos posibles valores

create table personas
(
	Id int auto_increment,
    Nombre varchar(50),
    EstadoCivil ENUM('SOLTERO','CASADO','DIVORCIADO','OTROS') NOT NULL default 'SOLTERO'
    primary key (id)
);

INSERT INTO PERSONAS(NOMBRES) VALUES ('JUAN');

INSERT INTO PERSONAS(NOMBRE,ESTADOCIVIL) VALUES ('MARIA','CASADO')

SELECT * FROM PERSONAS:
