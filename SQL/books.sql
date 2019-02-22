-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Author` (
  `idAuthor` INT NOT NULL,
  `name` VARCHAR(300) NULL,
  PRIMARY KEY (`idAuthor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Book` (
  `idBook` INT NOT NULL,
  `title` VARCHAR(300) NULL,
  `year` INT NULL,
  `price` VARCHAR(45) NULL,
  `Author_idAuthor` INT NOT NULL,
  PRIMARY KEY (`idBook`),
  INDEX `fk_Book_Author_idx` (`Author_idAuthor` ASC),
  CONSTRAINT `fk_Book_Author`
    FOREIGN KEY (`Author_idAuthor`)
    REFERENCES `mydb`.`Author` (`idAuthor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Person` (
  `idPerson` INT NOT NULL,
  `name` VARCHAR(300) NULL,
  `FavoriteidBook` INT,
  PRIMARY KEY (`idPerson`),
  INDEX `fk_Person_Book1_idx` (`FavoriteidBook` ASC),
  CONSTRAINT `fk_Person_Book1`
    FOREIGN KEY (`FavoriteidBook`)
    REFERENCES `mydb`.`Book` (`idBook`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;