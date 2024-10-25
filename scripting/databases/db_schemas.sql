-- statement to create a DB
CREATE DATABASE People;

-- statement to use a DB
USE People;

-- statement to create a tabel
CREATE TABLE Persons (
    PersonID int NOT NULL AUTO_INCREMENT,
    LastName varchar(255),
    FirstName varchar(255),
    PRIMARY KEY (PersonID)
);


