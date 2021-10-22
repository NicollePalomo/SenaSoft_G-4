CREATE DATABASE bd_historiapp;

USE bd_historiapp;


CREATE TABLE usuario1 (
  id_usuario1 INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  tipo_documento VARCHAR(20) NOT NULL,
  numero_documento VARCHAR(20) NOT NULL,
  correo VARCHAR(45) NOT NULL,
  usuario VARCHAR(20) NOT NULL,
  contraseña BINARY(20) NOT NULL,
  CONSTRAINT pk_usuario1 PRIMARY KEY (id_usuario1)
);



CREATE TABLE capturar_historial (
  id_capturar_historial INT NOT NULL AUTO_INCREMENT,
  id_usuario1 INT NOT NULL,
  historial_clinico BLOB NOT NULL,
  CONSTRAINT pk_capturar_historial PRIMARY KEY (id_capturar_historial),
  CONSTRAINT fk_usuario1 FOREIGN KEY (id_usuario1) REFERENCES usuario1 (id_usuario1)
);