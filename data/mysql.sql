CREATE DATABASE IF NOT EXISTS `example_db`;

USE `example_db`;

CREATE  TABLE user (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));

CREATE TABLE user_role (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES user (username));

INSERT INTO user(username,password,enabled) VALUES ('mayoo','test123', true);
INSERT INTO user(username,password,enabled) VALUES ('guru','test123', true);

INSERT INTO user_role (username, role) VALUES ('mayoo', 'ROLE_USER');
INSERT INTO user_role (username, role) VALUES ('guru', 'ROLE_ADMIN');

CREATE TABLE persistent_logins (
    username varchar(64) not null,
    series varchar(64) not null,
    token varchar(64) not null,
    last_used timestamp not null,
    PRIMARY KEY (series)
);