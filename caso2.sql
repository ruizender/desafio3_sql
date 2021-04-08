--caso 2

---Entrando a base de datos
\c desafio_modelamiento;
--Creando tabla curse 
CREATE TABLE curse (id SERIAL, name VARCHAR(40), PRIMARY KEY(id));
--Creando tabla students
CREATE TABLE students(rut VARCHAR(15) UNIQUE, name VARCHAR(40) NOT NULL, curse_id SMALLINT NOT NULL, PRIMARY KEY(rut), FOREIGN KEY(curse_id) REFERENCES curse(id));
--Creando tabla teachers
CREATE TABLE teachers(id SERIAL, name VARCHAR(40), department VARCHAR(50), PRIMARY KEY(id));
--Creando tabla test
CREATE TABLE test(id SERIAL, name VARCHAR(40), rut_students VARCHAR(40), id_teachers INT, notes  SMALLINT, FOREIGN KEY(rut_students) REFERENCES students(rut), FOREIGN KEY(id_teachers) REFERENCES teachers(id));