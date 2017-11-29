#!/bin/sh
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "pkamboj/09084588@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF
CREATE TABLE store(
  StoreNumber INTEGER, 
  StoreName VARCHAR(300),
  StoreWebsite VARCHAR(300), 
  StoreEmail VARCHAR(300),
  StoreAddress VARCHAR(300),
  PRIMARY KEY (StoreNumber)
);

CREATE TABLE employee (
  Sin INTEGER, 
  BankAccountNumber INTEGER, 
  EmployeeNumber INTEGER, 
  EmployeeDOB INTEGER,
  EmployeeFullName VARCHAR(300), 
  EmployeeEmail VARCHAR(300), 
  EmployeePhoneNumber INTEGER, 
  EmployeeAddress VARCHAR(300),
  PRIMARY KEY (Sin, BankAccountNumber)
);

CREATE TABLE customer (
  CustomerEmailUsername VARCHAR(300), 
  CustomerPhoneNumber INTEGER, 
  CustomerFullName VARCHAR(300), 
  CustomerDOB INTEGER,
  CUSTOMERADDRESS VARCHAR(300),
  PRIMARY KEY (CustomerEmailUsername)
);

CREATE TABLE product (
  ProductSerialNumber INTEGER, 
  ProductType VARCHAR(10), 
  ProductSize VARCHAR(300), 
  ProductColour VARCHAR(8),
  ProductPrice INTEGER,
  PRIMARY KEY (ProductSerialNumber)
);

CREATE TABLE transaction (
  TransactionNumber INTEGER, 
  TransactionMethod VARCHAR(10), 
  RecieptType VARCHAR(30),
  PaymentMethod varchar (10),
  TransactionDate integer,
  PRIMARY KEY (TransactionNumber)
);


CREATE TABLE exchange (
  TransactionNumber INTEGER,
   TransactionMethod VARCHAR (10),
  PRIMARY KEY (TransactionNumber)
);

CREATE TABLE return (
  TransactionNumber INTEGER,
  TransactionMethod VARCHAR2(10),
  PRIMARY KEY (TransactionNumber)
);

CREATE TABLE purchase (
  TransactionNumber INTEGER,
   TransactionMethod VARCHAR2(10),
  PRIMARY KEY (TransactionNumber)
);

CREATE TABLE storeonline(
StoreWebsite VARCHAR(300),
  StoreNumber INTEGER,  
  StoreEmail VARCHAR(300),
  StoreAddress VARCHAR(300),
  PRIMARY KEY (StoreWebsite)
);


CREATE TABLE customerContactinfo (
CustomerPhoneNumber INTEGER,
  CustomerFullName VARCHAR(300), 
  CustomerDOB INTEGER,
  CUSTOMERADDRESS VARCHAR (300),
  PRIMARY KEY (Customerphonenumber)
);

CREATE TABLE transactionInfo (
  TransactionNumber INTEGER, 
  Transactionmethod VARCHAR(10), 
  RecieptType VARCHAR(30),
  PaymentMethod VARCHAR(10),
  ProductSerialNumber INTEGER,
  TransactionDate INTEGER,
  PRIMARY KEY (TransactionNumber)
);


CREATE TABLE productinfo (
  ProductSerialNumber INTEGER, 
  ProductType VARCHAR(10), 
  ProductSize VARCHAR(300), 
  ProductColour VARCHAR(8),
  ProductPrice INTEGER,
  PRIMARY KEY (ProductSerialNumber)
);


	
	exit;
EOF
