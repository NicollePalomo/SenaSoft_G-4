CREATE DATABASE bd_historiapp;

USE bd_historiapp;

CREATE TABLE usuario1 (
  id_usuario1 INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  usuario VARCHAR(20) NOT NULL,
  contraseña BINARY(20) NOT NULL,
  CONSTRAINT pk_usuario1 PRIMARY KEY (id_usuario1)
;)



CREATE TABLE usuario2 (
  id_usuario2 INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  tipo_documento VARCHAR(20) NOT NULL,
  numero_documento VARCHAR(20) NOT NULL,
  correo VARCHAR(45) NOT NULL,
  usuario VARCHAR(20) NOT NULL,
  contraseña BINARY(20) NOT NULL,
  CONSTRAINT pk_usuario2 PRIMARY KEY (id_usuario2)
);



CREATE TABLE capturar_historial (
  id_capturar_historial INT NOT NULL AUTO_INCREMENT,
  id_usuario2 INT NOT NULL,
  historial_clinico BLOB NOT NULL,
  CONSTRAINT pk_capturar_historial PRIMARY KEY (id_capturar_historial),
  CONSTRAINT fk_usuario2 FOREIGN KEY (id_usuario2) REFERENCES usuario2 (id_usuario2)
);





CREATE TABLE consultar_historial (
  id_consultar_historial INT NOT NULL AUTO_INCREMENT,
  id_capturar_historial INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  edad VARCHAR(3) NOT NULL,
  sexo VARCHAR(10) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  estado_civil VARCHAR(20) NOT NULL,
  lugar_nacimiento VARCHAR(10) NOT NULL,
  dianostico LONGTEXT NOT NULL,
  resumen LONGTEXT NOT NULL,
  tratamiento LONGTEXT NOT NULL,
  CONSTRAINT pk_colsultar_historial PRIMARY KEY (id_consultar_historial),
  CONSTRAINT fk_capturar_historial FOREIGN KEY (id_capturar_historial) REFERENCES capturar_historial (id_capturar_historial)
);
