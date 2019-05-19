-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema campaign
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema campaign
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `campaign` DEFAULT CHARACTER SET utf8 ;
USE `campaign` ;

-- -----------------------------------------------------
-- Table `campaign`.`d_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`d_product` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `family` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_product`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`d_shopping_center`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`d_shopping_center` (
  `id_shopping_centre` INT NOT NULL AUTO_INCREMENT,
  `SC_name` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `zone` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_shopping_centre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`d_date`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`d_date` (
  `id_date` DATE NOT NULL,
  `quarter` INT NOT NULL,
  `day_of_week` CHAR(2) NOT NULL,
  PRIMARY KEY (`id_date`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`d_bridge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`d_bridge` (
  `id_bridge` INT NOT NULL AUTO_INCREMENT,
  `id_shopping_center` INT NOT NULL,
  `id_date` DATE NOT NULL,
  PRIMARY KEY (`id_bridge`),
  INDEX `id_shopping_center_idx` (`id_shopping_center` ASC) VISIBLE,
  INDEX `id_date_idx` (`id_date` ASC) VISIBLE,
  CONSTRAINT `id_shopping_center`
    FOREIGN KEY (`id_shopping_center`)
    REFERENCES `campaign`.`d_shopping_center` (`id_shopping_centre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_date`
    FOREIGN KEY (`id_date`)
    REFERENCES `campaign`.`d_date` (`id_date`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`f_sales_marketing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`f_sales_marketing` (
  `sales_id` INT NOT NULL,
  `id_bridge` INT NOT NULL,
  `sales_qty` INT NOT NULL,
  `id_product` INT NULL,
  PRIMARY KEY (`sales_id`),
  INDEX `id_product_idx` (`id_product` ASC) VISIBLE,
  INDEX `key_idx` (`id_bridge` ASC) VISIBLE,
  CONSTRAINT `id_product_sales_marketing`
    FOREIGN KEY (`id_product`)
    REFERENCES `campaign`.`d_product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_bridge_sales_marketing`
    FOREIGN KEY (`id_bridge`)
    REFERENCES `campaign`.`d_bridge` (`id_bridge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`f_visits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`f_visits` (
  `id_visits` INT NOT NULL,
  `id_bridge` INT NOT NULL,
  `visits_qty` INT NOT NULL,
  PRIMARY KEY (`id_visits`),
  CONSTRAINT `id_bridge_visits`
    FOREIGN KEY (`id_bridge`)
    REFERENCES `campaign`.`d_bridge` (`id_bridge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign`.`f_Impact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign`.`f_Impact` (
  `impact_id` INT NOT NULL,
  `id_bridge` INT NOT NULL,
  `impact_point_bs` INT NOT NULL,
  `Impact_point_i` INT NOT NULL,
  `id_product` INT NOT NULL,
  PRIMARY KEY (`impact_id`),
  INDEX `id_producvt_idx` (`id_product` ASC) VISIBLE,
  INDEX `key_idx` (`id_bridge` ASC) VISIBLE,
  CONSTRAINT `id_product_impact`
    FOREIGN KEY (`id_product`)
    REFERENCES `campaign`.`d_product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_bridge_impacts`
    FOREIGN KEY (`id_bridge`)
    REFERENCES `campaign`.`d_bridge` (`id_bridge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
