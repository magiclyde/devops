CREATE DATABASE testdb;

CREATE USER 'testuser'@'%' IDENTIFIED BY 'testpass';
GRANT All PRIVILEGES ON testdb.* TO 'testuser'@'%';
FLUSH PRIVILEGES;
