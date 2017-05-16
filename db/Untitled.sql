CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name VARCHAR (75) NOT NULL,
	devoured BOOLEAN DEFAULT FALSE,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name) VALUES ("Triple Bacon Cheddar Burger");
INSERT INTO burgers (burger_name) VALUES ("The Monster");
INSERT INTO burgers (burger_name) VALUES ("Ghost Burger");
INSERT INTO burgers (burger_name) VALUES ("Donut Burger");
INSERT INTO burgers (burger_name) VALUES ("Le Burger Extravagant");
INSERT INTO burgers (burger_name) VALUES ("Turducken Burger");