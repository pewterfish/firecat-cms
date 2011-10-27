CREATE TABLE character (
	character_id integer NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	PRIMARY KEY (character_id)
);

CREATE TABLE item (
	item_id integer NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	PRIMARY KEY (item_id)
);

CREATE TABLE group (
	group_id integer NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	PRIMARY KEY (group_id)
);

CREATE TABLE lore_code (
	lore_code_id integer NOT NULL AUTO_INCREMENT,
	code varchar(32),
	refnotes varchar(255),
	PRIMARY KEY (lore_code_id)
);

CREATE TABLE item_lore_code (
	item_lore_code_id integer NOT NULL AUTO_INCREMENT,
	item_id integer NOT NULL,
	lore_code_id integer NOT NULL,
	PRIMARY KEY (item_lore_code_id),
	FOREIGN KEY item_id REFERENCES item(item_id) ON DELETE CASCADE,
	FOREIGN KEY lore_code_id REFERENCES lore_code(lore_code_id) ON DELETE CASCADE
);
