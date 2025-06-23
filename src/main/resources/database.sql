-- docker setup mysql
-- docker pull mysql
-- docker run --name root -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql
-- Table: users
CREATE TABLE users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

-- Table: roles
CREATE TABLE roles (
  id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),

  UNIQUE (user_id, role_id)
)
  ENGINE = InnoDB;

-- Insert data
INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (3, 2);

DELETE FROM users as us
       WHERE us.id = 2;
select * from users;
select * from roles;
select * from user_roles;


DELETE FROM roles WHERE id = 2;

DELETE FROM users WHERE id = 2;
DELETE FROM user_roles WHERE user_id = 2;

drop table roles;