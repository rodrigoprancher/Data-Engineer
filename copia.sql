# Creación y uso del DATABASE
CREATE DATABASE proyecto_individual;
USE proyecto_individual;

# Creación de las tablas

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
	`id` 					VARCHAR(500),
    `comercioID` 			VARCHAR(500),
    `banderaId` 			VARCHAR(600), 
    `banderaDescripcion` 	VARCHAR(600),
    `comercioRazonSocial` 	VARCHAR(600),
    `provincia` 			VARCHAR(600),
    `localidad` 			VARCHAR(600),
    `direccion` 			VARCHAR(600),
    `lat` 					VARCHAR(600),
    `lng` 					VARCHAR(600),
    `sucursalNombre`		VARCHAR(600),
    `sucursalTipo`			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\sucursal.csv'
INTO TABLE `sucursal`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
	`id` 					VARCHAR(500),
    `marca` 				VARCHAR(500),
    `nombre` 				VARCHAR(600), 
    `presentacion` 			VARCHAR(600),
    `categoria1` 			VARCHAR(600),
    `categoria2` 			VARCHAR(600),
    `categoria3` 			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\producto.csv'
INTO TABLE `producto`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semana_20200413`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200413`(
	`precio` 				VARCHAR(500),
    `producto_id` 			VARCHAR(500),
    `sucursal_id` 			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200413.csv'
INTO TABLE `precios_semana_20200413`
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semana_20200503`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200503`(
	`precio` 				VARCHAR(500),
    `producto_id` 			VARCHAR(500),
    `sucursal_id` 			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200503.csv'
INTO TABLE `precios_semana_20200503`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semana_20200518`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200518`(
	`precio` 				VARCHAR(500),
    `producto_id` 			VARCHAR(500),
    `sucursal_id` 			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200518.csv'
INTO TABLE `precios_semana_20200518`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semanas_20200419_20200426`;
CREATE TABLE IF NOT EXISTS `precios_semanas_20200419_20200426`(
	`precio` 				VARCHAR(500),
    `producto_id` 			VARCHAR(500),
    `sucursal_id` 			VARCHAR(600)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_spanish_ci;