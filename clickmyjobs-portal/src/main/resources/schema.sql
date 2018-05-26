create table authority (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
name varchar(50));

create table users (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
first_name varchar(50),
family_name varchar(50),
e_mail varchar(50),
phone varchar(50),
language char(2),
id_picture int,
login varchar(50) NOT NULL UNIQUE,
password varchar(50),
burth_date Date,
enabled boolean);

create table users_authority (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
id_user BIGINT,
id_authority BIGINT);

CREATE TABLE `job_portal`.`profile` (
  `userId` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `userType` VARCHAR(45) NULL);
  
  CREATE TABLE `job_portal`.`profile_dtl` (
  `profile_dtl_id` INT NOT NULL,
  `profession_title` VARCHAR(45) NULL,
  `Location` VARCHAR(45) NULL,
  `Web` VARCHAR(45) NULL,
  `pre_hour` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `resume` BLOB NULL,
  `cover_later` BLOB NULL,
  `userId` INT NULL,
  PRIMARY KEY (`profile_dtl_id`));
  
  CREATE TABLE `job_portal`.`education` (
  `Education_id` INT UNSIGNED NOT NULL,
  `Degree` VARCHAR(45) NULL,
  `Field_of_Study` VARCHAR(45) NULL,
  `School_or_college` VARCHAR(45) NULL,
  `From_date` DATE NULL,
  `to_date` DATE NULL,
  `Description` VARCHAR(45) NULL,
  `userId` INT NULL);
  
  CREATE TABLE `job_portal`.`work_experience` (
  `Work_Experience_id` INT UNSIGNED NOT NULL,
  `Company_Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Date_Form` DATE NULL,
  `Date_To` DATE NULL,
  `Description` VARCHAR(45) NULL,
  `userId` INT NULL,
  PRIMARY KEY (`Work_Experience_id`));
  
  CREATE TABLE `job_portal`.`skills` (
  `Skills_id` INT NOT NULL,
  `Skill_Name` VARCHAR(45) NULL,
  `Skill_percentage` INT NULL,
  `userId` INT NULL,
  PRIMARY KEY (`Skills_id`));


