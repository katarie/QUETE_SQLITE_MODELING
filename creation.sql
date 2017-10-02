#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        Id_user int (11) Auto_increment  NOT NULL ,
        Name    Varchar (25) ,
        Email   Varchar (100) ,
        PRIMARY KEY (Id_user ) ,
        UNIQUE (Name ,Email )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Organization
#------------------------------------------------------------

CREATE TABLE Organization(
        Id_organization int (11) Auto_increment  NOT NULL ,
        Name            Varchar (25) ,
        Website_url     Varchar (100) ,
        PRIMARY KEY (Id_organization ) ,
        UNIQUE (Name ,Website_url )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tweet
#------------------------------------------------------------

CREATE TABLE Tweet(
        Id_Tweet int (11) Auto_increment  NOT NULL ,
        Content  Varchar (255) ,
        PRIMARY KEY (Id_Tweet ) ,
        UNIQUE (Content )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Poster
#------------------------------------------------------------

CREATE TABLE Poster(
        Id_user  Int NOT NULL ,
        Id_Tweet Int NOT NULL ,
        PRIMARY KEY (Id_user ,Id_Tweet )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Appartenir
#------------------------------------------------------------

CREATE TABLE Appartenir(
        Id_user         Int NOT NULL ,
        Id_organization Int NOT NULL ,
        PRIMARY KEY (Id_user ,Id_organization )
)ENGINE=InnoDB;

ALTER TABLE Poster ADD CONSTRAINT FK_Poster_Id_user FOREIGN KEY (Id_user) REFERENCES User(Id_user);
ALTER TABLE Poster ADD CONSTRAINT FK_Poster_Id_Tweet FOREIGN KEY (Id_Tweet) REFERENCES Tweet(Id_Tweet);
ALTER TABLE Appartenir ADD CONSTRAINT FK_Appartenir_Id_user FOREIGN KEY (Id_user) REFERENCES User(Id_user);
ALTER TABLE Appartenir ADD CONSTRAINT FK_Appartenir_Id_organization FOREIGN KEY (Id_organization) REFERENCES Organization(Id_organization);
