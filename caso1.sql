--caso 1

--Creando base de datos Desafio_modelamiento
CREATE DATABASE desafio_modelamiento;
---Entrando a base de datos
\c desafio_modelamiento;
--Creando tabla departamento
CREATE TABLE departamento(id SERIAL, nombre VARCHAR(50), PRIMARY KEY(id));
--Creando tabla de datos trabajadores
CREATE TABLE trabajadores(rut VARCHAR(15) NOT NULL, nombre VARCHAR(50), direccion VARCHAR(150), id_departamento INT, PRIMARY KEY(rut), FOREIGN KEY(id_departamento) REFERENCES departamento(id));
--Creando tabla de datos
CREATE TABLE liquidaciones(id SERIAL, drive VARCHAR(40), rut_trabajador VARCHAR(15));


