-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema produce_store
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema produce_store
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `produce_store` DEFAULT CHARACTER SET utf8 ;
USE `produce_store` ;

-- -----------------------------------------------------
-- Table `produce_store`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`customer` (
  `customerId` VARCHAR(45) NOT NULL,
  `customerNum` INT(5) NOT NULL,
  `customerFN` VARCHAR(25) NULL,
  `customerLN` VARCHAR(25) NULL,
  `customercol` VARCHAR(45) NULL,
  PRIMARY KEY (`customerId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`customerAddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`customerAddress` (
  `addressId` INT(5) NOT NULL AUTO_INCREMENT,
  `customerId` INT(5) NOT NULL,
  `street` VARCHAR(25) NULL,
  `city` VARCHAR(25) NULL,
  `zip` VARCHAR(25) NULL,
  `country` VARCHAR(25) NULL,
  `customer_customerId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`addressId`),
  INDEX `fk_customerAddress_customer1_idx` (`customer_customerId` ASC) VISIBLE,
  CONSTRAINT `fk_customerAddress_customer1`
    FOREIGN KEY (`customer_customerId`)
    REFERENCES `produce_store`.`customer` (`customerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`customerPhone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`customerPhone` (
  `phoneId` INT(5) NOT NULL AUTO_INCREMENT,
  `customerId` INT(5) NOT NULL,
  `areaCode` VARCHAR(5) NULL,
  `prefix` VARCHAR(5) NULL,
  `number` VARCHAR(5) NULL,
  `countryCode` VARCHAR(5) NULL,
  `customer_customerId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`phoneId`),
  INDEX `fk_customerPhone_customer1_idx` (`customer_customerId` ASC) VISIBLE,
  CONSTRAINT `fk_customerPhone_customer1`
    FOREIGN KEY (`customer_customerId`)
    REFERENCES `produce_store`.`customer` (`customerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`customerEmail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`customerEmail` (
  `emailId` INT(5) NOT NULL AUTO_INCREMENT,
  `customerId` INT(5) NOT NULL,
  `username` VARCHAR(25) NULL,
  `atToDot` VARCHAR(25) NULL,
  `domain` VARCHAR(10) NULL,
  `customer_customerId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`emailId`),
  INDEX `fk_customerEmail_customer1_idx` (`customer_customerId` ASC) VISIBLE,
  CONSTRAINT `fk_customerEmail_customer1`
    FOREIGN KEY (`customer_customerId`)
    REFERENCES `produce_store`.`customer` (`customerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`product` (
  `productId` INT(5) NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `description` VARCHAR(45) NULL,
  `productInventory` INT(5) NULL,
  `productCostPerPound` DECIMAL NULL,
  PRIMARY KEY (`productId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`employees` (
  `employeeId` INT(5) NOT NULL,
  `employeeNum` INT(5) NOT NULL,
  `employeeFN` VARCHAR(25) NOT NULL,
  `employeeLN` VARCHAR(25) NOT NULL,
  `employeePos` VARCHAR(20) NULL,
  `employeeWage` DECIMAL NOT NULL,
  `employeeHireDate` DATE NOT NULL,
  PRIMARY KEY (`employeeId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`salesTransaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`salesTransaction` (
  `stxId` INT(5) NOT NULL AUTO_INCREMENT,
  `customerId` INT(5) NOT NULL,
  `employeeId` INT(5) NULL,
  `productId` INT(5) NOT NULL,
  `saleDate` DATE NOT NULL,
  `saleTime` TIME NOT NULL,
  `saleAmount` DECIMAL(6,2) NOT NULL,
  `inventory_productId` INT(5) NOT NULL,
  `employees_employeeId` INT(5) NOT NULL,
  `customer_customerId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`stxId`),
  INDEX `fk_salesTransaction_inventory1_idx` (`inventory_productId` ASC) VISIBLE,
  INDEX `fk_salesTransaction_employees1_idx` (`employees_employeeId` ASC) VISIBLE,
  INDEX `fk_salesTransaction_customer1_idx` (`customer_customerId` ASC) VISIBLE,
  CONSTRAINT `fk_salesTransaction_inventory1`
    FOREIGN KEY (`inventory_productId`)
    REFERENCES `produce_store`.`product` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_salesTransaction_employees1`
    FOREIGN KEY (`employees_employeeId`)
    REFERENCES `produce_store`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_salesTransaction_customer1`
    FOREIGN KEY (`customer_customerId`)
    REFERENCES `produce_store`.`customer` (`customerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`salesTransactionDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`salesTransactionDetail` (
  `stxDetId` INT(5) NOT NULL AUTO_INCREMENT,
  `stxId` INT(5) NOT NULL,
  `productId` INT(5) NOT NULL,
  `quantity` INT(5) NULL,
  `productPrice` DECIMAL NULL,
  `totalPrice` DECIMAL NULL,
  `salesTransaction_stxId` INT(5) NOT NULL,
  PRIMARY KEY (`stxDetId`),
  INDEX `fk_salesTransactionDetail_salesTransaction1_idx` (`salesTransaction_stxId` ASC) VISIBLE,
  CONSTRAINT `fk_salesTransactionDetail_salesTransaction1`
    FOREIGN KEY (`salesTransaction_stxId`)
    REFERENCES `produce_store`.`salesTransaction` (`stxId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`vendor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`vendor` (
  `vendorId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorNum` INT(5) NOT NULL,
  `vendorName` VARCHAR(25) NOT NULL,
  `lastUsed` DATE NULL,
  `firstUsed` DATE NULL,
  PRIMARY KEY (`vendorId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`vendorAddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`vendorAddress` (
  `addressId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorId` INT(5) NOT NULL,
  `street` VARCHAR(25) NULL,
  `city` VARCHAR(25) NULL,
  `zip` VARCHAR(25) NULL,
  `country` VARCHAR(25) NULL,
  `vendor_vendorId` INT(5) NOT NULL,
  PRIMARY KEY (`addressId`),
  INDEX `fk_vendorAddress_vendor1_idx` (`vendor_vendorId` ASC) VISIBLE,
  CONSTRAINT `fk_vendorAddress_vendor1`
    FOREIGN KEY (`vendor_vendorId`)
    REFERENCES `produce_store`.`vendor` (`vendorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`vendorPhone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`vendorPhone` (
  `phoneId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorId` INT(5) NOT NULL,
  `areaCode` VARCHAR(5) NULL,
  `prefix` VARCHAR(5) NULL,
  `number` VARCHAR(5) NULL,
  `countryCode` VARCHAR(5) NULL,
  `vendor_vendorId` INT(5) NOT NULL,
  PRIMARY KEY (`phoneId`),
  INDEX `fk_vendorPhone_vendor1_idx` (`vendor_vendorId` ASC) VISIBLE,
  CONSTRAINT `fk_vendorPhone_vendor1`
    FOREIGN KEY (`vendor_vendorId`)
    REFERENCES `produce_store`.`vendor` (`vendorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`vendorEmail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`vendorEmail` (
  `emailId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorId` INT(5) NOT NULL,
  `username` VARCHAR(25) NULL,
  `atToDot` VARCHAR(25) NULL,
  `domain` VARCHAR(10) NULL,
  `vendor_vendorId` INT(5) NOT NULL,
  PRIMARY KEY (`emailId`),
  INDEX `fk_vendorEmail_vendor1_idx` (`vendor_vendorId` ASC) VISIBLE,
  CONSTRAINT `fk_vendorEmail_vendor1`
    FOREIGN KEY (`vendor_vendorId`)
    REFERENCES `produce_store`.`vendor` (`vendorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`vendorProducts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`vendorProducts` (
  `vendorProductId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorId` INT(5) NOT NULL,
  `productId` INT(5) NOT NULL,
  `produceName` VARCHAR(25) NULL,
  `price` DECIMAL(5,2) NULL,
  `vendor_vendorId` INT(5) NOT NULL,
  PRIMARY KEY (`vendorProductId`),
  INDEX `fk_vendorProducts_vendor1_idx` (`vendor_vendorId` ASC) VISIBLE,
  CONSTRAINT `fk_vendorProducts_vendor1`
    FOREIGN KEY (`vendor_vendorId`)
    REFERENCES `produce_store`.`vendor` (`vendorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`purchaseTransaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`purchaseTransaction` (
  `ptxId` INT(5) NOT NULL AUTO_INCREMENT,
  `vendorProductId` INT(5) NOT NULL,
  `productId` INT(5) NOT NULL,
  `invoiceNum` INT(5) NULL,
  `vendorId` INT(5) NULL,
  `employeeId` INT(5) NULL,
  `purchaseDate` DATE NOT NULL,
  `purchaseTime` TIME NOT NULL,
  `purchaseAmount` DECIMAL(6,2) NOT NULL,
  `vendorProducts_vendorProductId` INT(5) NOT NULL,
  `inventory_productId` INT(5) NOT NULL,
  `employees_employeeId` INT(5) NOT NULL,
  PRIMARY KEY (`ptxId`),
  INDEX `fk_purchaseTransaction_vendorProducts1_idx` (`vendorProducts_vendorProductId` ASC) VISIBLE,
  INDEX `fk_purchaseTransaction_inventory1_idx` (`inventory_productId` ASC) VISIBLE,
  INDEX `fk_purchaseTransaction_employees1_idx` (`employees_employeeId` ASC) VISIBLE,
  CONSTRAINT `fk_purchaseTransaction_vendorProducts1`
    FOREIGN KEY (`vendorProducts_vendorProductId`)
    REFERENCES `produce_store`.`vendorProducts` (`vendorProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchaseTransaction_inventory1`
    FOREIGN KEY (`inventory_productId`)
    REFERENCES `produce_store`.`product` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchaseTransaction_employees1`
    FOREIGN KEY (`employees_employeeId`)
    REFERENCES `produce_store`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`employeeAddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`employeeAddress` (
  `addressId` INT(5) NOT NULL AUTO_INCREMENT,
  `employeeId` INT(5) NOT NULL,
  `street` INT(5) NULL,
  `city` VARCHAR(25) NULL,
  `zip` VARCHAR(25) NULL,
  `country` VARCHAR(25) NULL,
  `employees_employeeId` INT(5) NOT NULL,
  PRIMARY KEY (`addressId`),
  INDEX `fk_employeeAddress_employees1_idx` (`employees_employeeId` ASC) VISIBLE,
  CONSTRAINT `fk_employeeAddress_employees1`
    FOREIGN KEY (`employees_employeeId`)
    REFERENCES `produce_store`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`employeeEmail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`employeeEmail` (
  `emailId` INT(5) NOT NULL AUTO_INCREMENT,
  `employeeId` INT(5) NOT NULL,
  `username` VARCHAR(25) NULL,
  `atToDot` VARCHAR(25) NULL,
  `domain` VARCHAR(10) NULL,
  `employees_employeeId` INT(5) NOT NULL,
  PRIMARY KEY (`emailId`),
  INDEX `fk_employeeEmail_employees1_idx` (`employees_employeeId` ASC) VISIBLE,
  CONSTRAINT `fk_employeeEmail_employees1`
    FOREIGN KEY (`employees_employeeId`)
    REFERENCES `produce_store`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`employeeEmail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`employeeEmail` (
  `emailId` INT(5) NOT NULL AUTO_INCREMENT,
  `employeeId` INT(5) NOT NULL,
  `username` VARCHAR(25) NULL,
  `atToDot` VARCHAR(25) NULL,
  `domain` VARCHAR(10) NULL,
  `employees_employeeId` INT(5) NOT NULL,
  PRIMARY KEY (`emailId`),
  INDEX `fk_employeeEmail_employees1_idx` (`employees_employeeId` ASC) VISIBLE,
  CONSTRAINT `fk_employeeEmail_employees1`
    FOREIGN KEY (`employees_employeeId`)
    REFERENCES `produce_store`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produce_store`.`purchaseTransactionDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produce_store`.`purchaseTransactionDetail` (
  `ptxDetId` INT(5) NOT NULL AUTO_INCREMENT,
  `ptxId` INT(5) NOT NULL,
  `productId` INT(5) NOT NULL,
  `quantity` INT(5) NULL,
  `productPrice` DECIMAL NULL,
  `totalPrice` DECIMAL NULL,
  `purchaseTransaction_ptxId` INT(5) NOT NULL,
  PRIMARY KEY (`ptxDetId`),
  INDEX `fk_purchaseTransactionDetail_purchaseTransaction1_idx` (`purchaseTransaction_ptxId` ASC) VISIBLE,
  CONSTRAINT `fk_purchaseTransactionDetail_purchaseTransaction1`
    FOREIGN KEY (`purchaseTransaction_ptxId`)
    REFERENCES `produce_store`.`purchaseTransaction` (`ptxId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
