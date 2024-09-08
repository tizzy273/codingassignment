CREATE SCHEMA IF NOT EXISTS ACCOUNTS;

CREATE TABLE ACCOUNTS.CUSTOMER(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    SURNAME VARCHAR(255) NOT NULL
);

CREATE TABLE ACCOUNTS.ACCOUNT(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_ID INT NOT NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES ACCOUNTS.CUSTOMER(ID)
);


INSERT INTO ACCOUNTS.CUSTOMER (NAME, SURNAME)
VALUES ('Mario', 'Rossi');