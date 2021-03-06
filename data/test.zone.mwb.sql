-- MySQL Script generated by MySQL Workbench
-- Tue Nov  3 17:00:37 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema test_zone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test_zone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test_zone` DEFAULT CHARACTER SET utf8 ;
USE `test_zone` ;

-- -----------------------------------------------------
-- Table `test_zone`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`product` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` VARCHAR(255) NULL,
  `alt` VARCHAR(255) NULL,
  `header` VARCHAR(255) NOT NULL,
  `text` TEXT(65000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_zone`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`menu` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `link` VARCHAR(255) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `header` VARCHAR(255) NOT NULL,
  `subheader` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `link_UNIQUE` (`link` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_zone`.`main`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`main` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `header` VARCHAR(255) NOT NULL,
  `content` TEXT(65000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_zone`.`about`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`about` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `block_name` VARCHAR(255) NOT NULL,
  `header` VARCHAR(255) NOT NULL,
  `content` TEXT(65000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_zone`.`contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`contact` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `block_name` VARCHAR(255) NOT NULL,
  `header` VARCHAR(255) NOT NULL,
  `content` TEXT(65000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_zone`.`element`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_zone`.`element` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NOT NULL,
  `header` VARCHAR(255) NULL,
  `content` TEXT(65000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
