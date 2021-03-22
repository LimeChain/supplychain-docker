CREATE DATABASE IF NOT EXISTS hedera_01;
CREATE DATABASE IF NOT EXISTS hedera_02;
CREATE DATABASE IF NOT EXISTS hedera_03;

CREATE USER 'hedera_01'@'localhost' IDENTIFIED BY 'hedera_pass';
GRANT ALL PRIVILEGES ON hedera_01.* TO 'hedera_01'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'hedera_02'@'localhost' IDENTIFIED BY 'hedera_pass';
GRANT ALL PRIVILEGES ON hedera_02.* TO 'hedera_02'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'hedera_03'@'localhost' IDENTIFIED BY 'hedera_pass';
GRANT ALL PRIVILEGES ON hedera_03.* TO 'hedera_03'@'localhost';
FLUSH PRIVILEGES;