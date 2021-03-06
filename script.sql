-- MySQL Script generated by MySQL Workbench
-- 06/21/17 19:22:21
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dai
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dai
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dai` DEFAULT CHARACTER SET utf8 ;
USE `dai` ;

-- -----------------------------------------------------
-- Table `dai`.`PERFIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dai`.`PERFIL` (
  `ID` INT NULL AUTO_INCREMENT,
  `DESCRIPCION` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dai`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dai`.`CLIENTE` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `RUT` VARCHAR(45) NOT NULL,
  `NOMBRE_COMPLETO` VARCHAR(255) NULL,
  `FECHA_DE_INCORPORACION` DATE NULL,
  `DIRECCION` VARCHAR(45) NULL,
  `TELEFONO` INT(10) NULL,
  `PERFIL_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `PERFIL_ID`),
  INDEX `fk_CLIENTE_PERFIL_idx` (`PERFIL_ID` ASC),
  CONSTRAINT `fk_CLIENTE_PERFIL`
    FOREIGN KEY (`PERFIL_ID`)
    REFERENCES `dai`.`PERFIL` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dai`.`USUARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dai`.`USUARIO` (
  `ID` INT NOT NULL,
  `RUT` VARCHAR(45) NULL,
  `NOMBRE_COMPLETO` VARCHAR(255) NULL,
  `FECHA_CONTRATACION` DATE NULL,
  `ESPECIALIDAD` VARCHAR(45) NULL,
  `VALOR HORA` INT(1000000) NULL,
  `PERFIL_ID` INT NOT NULL,
  PRIMARY KEY (`PERFIL_ID`),
  CONSTRAINT `fk_USUARIO_PERFIL1`
    FOREIGN KEY (`PERFIL_ID`)
    REFERENCES `dai`.`PERFIL` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dai`.`ESTADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dai`.`ESTADO` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` VARCHAR(128) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dai`.`ATENCION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dai`.`ATENCION` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FECHA` DATE NULL,
  `CLIENTE_ID` INT NOT NULL,
  `USUARIO_ID` INT NOT NULL,
  `ESTADO_ID` INT NOT NULL,
  PRIMARY KEY (`CLIENTE_ID`, `USUARIO_ID`, `ESTADO_ID`),
  INDEX `fk_ATENCION_USUARIO1_idx` (`USUARIO_ID` ASC),
  INDEX `fk_ATENCION_ESTADO1_idx` (`ESTADO_ID` ASC),
  CONSTRAINT `fk_ATENCION_CLIENTE1`
    FOREIGN KEY (`CLIENTE_ID`)
    REFERENCES `dai`.`CLIENTE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ATENCION_USUARIO1`
    FOREIGN KEY (`USUARIO_ID`)
    REFERENCES `dai`.`USUARIO` (`PERFIL_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ATENCION_ESTADO1`
    FOREIGN KEY (`ESTADO_ID`)
    REFERENCES `dai`.`ESTADO` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
