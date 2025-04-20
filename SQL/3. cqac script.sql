-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cqac
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cqac` ;

-- -----------------------------------------------------
-- Schema cqac
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cqac` DEFAULT CHARACTER SET utf8 ;
USE `cqac` ;

-- -----------------------------------------------------
-- Table `cqac`.`Resident`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Resident` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Resident` (
  `ResidentID` INT NOT NULL,
  `FullName` VARCHAR(100) NULL,
  `Address` VARCHAR(100) NULL,
  `Phone` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  PRIMARY KEY (`ResidentID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`Staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Staff` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Staff` (
  `StaffID` INT NOT NULL,
  `FullName` VARCHAR(100) NULL,
  `Address` VARCHAR(100) NULL,
  `DOB` DATE NULL,
  `Phone` VARCHAR(45) NULL,
  `Salary` INT NULL,
  `StaffType` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`CareManager`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`CareManager` ;

CREATE TABLE IF NOT EXISTS `cqac`.`CareManager` (
  `CareManagerID` INT NOT NULL,
  `Bonus` INT NULL,
  `YearsOfExperience` INT NULL,
  `StaffID` INT NULL,
  PRIMARY KEY (`CareManagerID`),
  INDEX `FK_CMStaffID_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `FK_CMStaffID`
    FOREIGN KEY (`StaffID`)
    REFERENCES `cqac`.`Staff` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`Room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Room` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Room` (
  `RoomID` INT NOT NULL,
  `Type` VARCHAR(45) NULL,
  `DailyRental` INT NULL,
  `RoomSize` VARCHAR(45)  NULL,
  `DateAvailable` DATE NULL,
  `RoomPhoto` BLOB NULL,
  `CareManagerID` INT NULL,
  PRIMARY KEY (`RoomID`),
  INDEX `FK_RMCaremanager_idx` (`CareManagerID` ASC) VISIBLE,
  CONSTRAINT `FK_RMCaremanager`
    FOREIGN KEY (`CareManagerID`)
    REFERENCES `cqac`.`CareManager` (`CareManagerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`Care`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Care` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Care` (
  `CareID` INT NOT NULL,
  `ContractStartDate` DATE NULL,
  `ContractEndDate` DATE NULL,
  `TypeOfCare` VARCHAR(45) NULL,
  `RoomID` INT NULL,
  `ResidentID` INT NULL,
  PRIMARY KEY (`CareID`),
  INDEX `FK_CRRoomID_idx` (`RoomID` ASC) VISIBLE,
  INDEX `FK_CRResidentID_idx` (`ResidentID` ASC) VISIBLE,
  CONSTRAINT `FK_CRRoom`
    FOREIGN KEY (`RoomID`)
    REFERENCES `cqac`.`Room` (`RoomID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CRResident`
    FOREIGN KEY (`ResidentID`)
    REFERENCES `cqac`.`Resident` (`ResidentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`Application`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Application` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Application` (
  `ApplicationID` INT NOT NULL,
  `SubmittedDate` DATE NULL,
  `ProposedDate` DATE NULL,
  `Comments` VARCHAR(45) NULL,
  `Status` VARCHAR(45) NULL,
  `CareNeeds` VARCHAR(45) NULL,
  `ResidentID` INT NULL,
  `RoomID` INT NULL,
  PRIMARY KEY (`ApplicationID`),
  INDEX `FK_APPRoom_idx` (`RoomID` ASC) VISIBLE,
  INDEX `FK_APPResident_idx` (`ResidentID` ASC) VISIBLE,
  CONSTRAINT `FK_APPRoom`
    FOREIGN KEY (`RoomID`)
    REFERENCES `cqac`.`Room` (`RoomID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_APPResident`
    FOREIGN KEY (`ResidentID`)
    REFERENCES `cqac`.`Resident` (`ResidentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`ExternalStaff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`ExternalStaff` ;

CREATE TABLE IF NOT EXISTS `cqac`.`ExternalStaff` (
  `ExternalStaffID` INT NOT NULL,
  `FullName` VARCHAR(100) NULL,
  `Address` VARCHAR(100) NULL,
  `Phone` VARCHAR(45) NULL,
  `TradeLicenceNo` INT NULL,
  `TypeOfTrade` VARCHAR(45) NULL,
  `HourlyRate` INT NULL,
  PRIMARY KEY (`ExternalStaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`RepairJob`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`RepairJob` ;

CREATE TABLE IF NOT EXISTS `cqac`.`RepairJob` (
  `JobID` INT NOT NULL,
  `JobDetails` VARCHAR(100) NULL,
  `CompletionDate` DATE NULL,
  `TotalRepairCost` INT NULL,
  `RoomID` INT NULL,
  `ExternalStaffID` INT NULL,
  PRIMARY KEY (`JobID`),
  INDEX `FK_RJRoomID_idx` (`RoomID` ASC) VISIBLE,
  INDEX `FK_RJExternalStaff_idx` (`ExternalStaffID` ASC) VISIBLE,
  CONSTRAINT `FK_RJRoom`
    FOREIGN KEY (`RoomID`)
    REFERENCES `cqac`.`Room` (`RoomID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_RJExternalStaff`
    FOREIGN KEY (`ExternalStaffID`)
    REFERENCES `cqac`.`ExternalStaff` (`ExternalStaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`Nurses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`Nurses` ;

CREATE TABLE IF NOT EXISTS `cqac`.`Nurses` (
  `NurseID` INT NOT NULL,
  `EducationLevel` VARCHAR(45) NULL,
  `SpecializedIn` VARCHAR(45) NULL,
  `StaffID` INT NULL,
  `CareManagerID` INT NULL,
  PRIMARY KEY (`NurseID`),
  INDEX `FK_NRStaff_idx` (`StaffID` ASC) VISIBLE,
  INDEX `FK_NRCareManager_idx` (`CareManagerID` ASC) VISIBLE,
  CONSTRAINT `FK_NRStaff`
    FOREIGN KEY (`StaffID`)
    REFERENCES `cqac`.`Staff` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_NRCareManager`
    FOREIGN KEY (`CareManagerID`)
    REFERENCES `cqac`.`CareManager` (`CareManagerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cqac`.`PersonalCarer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cqac`.`PersonalCarer` ;

CREATE TABLE IF NOT EXISTS `cqac`.`PersonalCarer` (
  `PersonalCarerID` INT NOT NULL,
  `EducationLevel` VARCHAR(45) NULL,
  `ShiftHours` INT NULL,
  `StaffID` INT NULL,
  `CareManagerID` INT NULL,
  PRIMARY KEY (`PersonalCarerID`),
  INDEX `FK_PCStaff_idx` (`StaffID` ASC) VISIBLE,
  INDEX `FK_PCCaremanager_idx` (`CareManagerID` ASC) VISIBLE,
  CONSTRAINT `FK_PCStaff`
    FOREIGN KEY (`StaffID`)
    REFERENCES `cqac`.`Staff` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_PCCaremanager`
    FOREIGN KEY (`CareManagerID`)
    REFERENCES `cqac`.`CareManager` (`CareManagerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
