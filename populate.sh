#!/bin/sh
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "pkamboj/09084588@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"<<EOF

/* Product info - NEW TABLE DUE TO 3NF (NORMALIZATION)*/
INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(678723456, 'Top', 'S', 'Black', 40);

INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(123456789, 'Top', 'M', 'Pink' , 35);

INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(987654321, 'Top', 'L', 'Red', 100);

INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(321654987, 'Bottom', 'XL', 'Blue', 30);

INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(789456123, 'Shoes', '10', 'Brown', 125);

INSERT INTO productinfo
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(456123789, 'Shoes', '8', 'Black', 110);


/* Transaction info - NEW TABLE DUE TO 3NF (NORMALIZATION)*/
INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(232323232, 'Purchase', 'GiftReceipt', 'Debit', 987654321, 201117); 

INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(723822622, 'Purchase', 'eReceipt', 'cash', 123456789, 201117);

INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(908978675, 'Return', 'hardcopy', 'credit', 678723456, 201117);

INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(999666333, 'Purchase', 'EReceipt', 'Debit', 321654987, 271117);

INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(888555222, 'Exchange', 'hardcopy', 'Debit', 789456123, 271117);

INSERT INTO transactioninfo
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  ProductSerialNumber ,
  TransactionDate )
Values
(777444111, 'Purchase', 'GiftReciept', 'Debit', 456123789, 271117);


/* STORE */
INSERT INTO store
( StoreNumber, 
  StoreName ,
  StoreWebsite , 
  StoreEmail ,
  StoreAddress )
Values
(1, 'Yonge', 'clothesyonge.com', 'clothesyonge@gmail.com', '235 Yonge St Toronto');
INSERT INTO store
( StoreNumber, 
  StoreName ,
  StoreWebsite , 
  StoreEmail ,
  StoreAddress )
Values
(2, 'Dundas', 'dundasclothes.com', 'dundasclothes@gmail.com', '477 Dundas St Toronto');

/* STORE ONLINE - NEW TABLE DUE TO 3NF (NORMALIZATION)*/
INSERT INTO storeonline
( StoreWebsite ,
  StoreNumber, 
  StoreEmail ,
  StoreAddress )
Values
('clothesyonge.com', 1, 'clothesyonge@gmail.com', '235 Yonge St Toronto');
INSERT INTO storeonline
( StoreWebsite , 
  StoreNumber, 
  StoreEmail ,
  StoreAddress )
Values
('dundasclothes.com', 2, 'dundasclothes@gmail.com', '477 Dundas St Toronto');


/* EMPLOYEES */
INSERT INTO employee (
  Sin , 
  BankAccountNumber , 
  EmployeeNumber , 
  EmployeeDOB ,
  EmployeeFullName , 
  EmployeeEmail , 
  EmployeePhoneNumber , 
  EmployeeAddress )
Values
(456789101, 123456789101, 1, 08091991, 'John Smith', 'jsmith@gmail.com', 4161234567, '16 Drinkwater Dr Toronto');
INSERT INTO employee (
  Sin , 
  BankAccountNumber , 
  EmployeeNumber , 
  EmployeeDOB ,
  EmployeeFullName , 
  EmployeeEmail , 
  EmployeePhoneNumber , 
  EmployeeAddress )
Values
(543210987, 987654321098, 2, 06011995, 'Jane Doe', 'doej@gmail.com', 6477716621, '2345 Bartlett Dr Toronto');

/* CUSTOMERS */
INSERT INTO customer (
  CustomerEmailUsername , 
  CustomerPhoneNumber , 
  CustomerFullName , 
  CustomerDOB ,
  CUSTOMERADDRESS)
Values
('benk@gmail.com', 4169876543, 'Beniam Kebede', 12101998, '2 Gould St Toronto');
INSERT INTO customer (
  CustomerEmailUsername , 
  CustomerPhoneNumber , 
  CustomerFullName , 
  CustomerDOB ,
  CUSTOMERADDRESS)
Values
('nickd@yahoo.com', 6475678923, 'Nick De Santo', 21101997, '56 Valley Crt Toronto');

/* CustomerCONTACTINFO- NEW TABLE DUE TO 3NF (NORMALIZATION)*/
INSERT INTO customercontactinfo ( 
  CustomerPhoneNumber , 
  CustomerFullName , 
  CustomerDOB ,
  CUSTOMERADDRESS)
Values
(4169876543, 'Beniam Kebede', 12101998, '2 Gould St Toronto');
INSERT INTO customercontactinfo (
  CustomerPhoneNumber , 
  CustomerFullName , 
  CustomerDOB ,
  CUSTOMERADDRESS)
Values
(6475678923, 'Nick De Santo', 21101997, '56 Valley Crt Toronto');

/* PRODUCTS */
INSERT INTO product
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(123456789, 'Top', 'M', 'Pink' , 35);
INSERT INTO product
(ProductSerialNumber, ProductType, ProductSize, ProductColour, ProductPrice )
Values
(987654321, 'Top', 'L', 'Red', 100);

/* TRANSACTIONS */
INSERT INTO transaction
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  TransactionDate)
Values
(777444111, 'Purchase', 'GiftReciept', 'Debit', 271117);
INSERT INTO transaction
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  TransactionDate )
Values
(123822622, 'Return', 'eReceipt', 'Cash', 201117);
INSERT INTO transaction
( TransactionNumber, 
  TransactionMethod , 
  RecieptType ,
  PaymentMethod ,
  TransactionDate )
Values
(888555222, 'Exchange', 'hardcopy', 'Debit', 271117);

/* PURCHASE */
INSERT INTO purchase
( TransactionNumber, 
  TransactionMethod)
Values
(777444111, 'Purchase');

/* RETURN */
INSERT INTO return
( TransactionNumber, 
  TransactionMethod)
Values
(123822622, 'Return');

/* EXCHANGE */
INSERT INTO exchange
( TransactionNumber, 
  TransactionMethod )
Values
(888555222, 'Exchange');


exit;
EOF