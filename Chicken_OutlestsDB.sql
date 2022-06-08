/*
    Copy the diretory where this SQL script is located
    Replace PATH with the copied directory on the command below 
    Then execute the command to create the Chicken_OutletsDB with all its tables
    
    ----------------

    source PATH\Chicken_OutlestsDB.sql
*/

DROP DATABASE IF EXISTS Chicken_OutletsDB;
CREATE DATABASE IF NOT EXISTS Chicken_OutletsDB;
USE Chicken_OutletsDB;

CREATE TABLE Restaurant (
    Restaurant_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Restaurant_name VARCHAR(50) NOT NULL,
    Food_Speciality ENUM('Roasted Chicken', 'Fried Chicken', 'Burgers') NOT NULL,
    Description VARCHAR(150) NOT NULL
);

INSERT INTO Restaurant VALUES
    (NULL,'KFC','Fried Chicken', 'We sell fried chicken ....'),
    (NULL,'Chiken Liken','Fried Chicken', 'We sell fried chicken ....'),
    (NULL,'Nandos','Roasted Chicken', 'We sell fried chicken ....'),
    (NULL,'Garlitos','Roasted Chicken', 'We sell fried chicken ....'),
    (NULL,'McDonalds','Burgers', 'We sell fried chicken ....');

CREATE TABLE Menu_Item (
    Item_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Item_name VARCHAR(100) NOT NULL,
    Item_price DOUBLE(8,2) NOT NULL,
    item_description VARCHAR(150) NOT NULL,
    Item_delete BOOLEAN DEFAULT 0,
    Restaurant_ID INT UNSIGNED NULL,
	INDEX(Restaurant_ID),
	CONSTRAINT FK_Restaurant_Menu_ID FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant (Restaurant_ID)
);

-- KFC Menu
-- =====================
INSERT INTO Menu_Item VALUES
(NULL, 'Wrapsta Box With Small Drink', 52.90, 'Ingredients ....', FALSE, 1),
(NULL, '2x Colone Burgers', 59.90, 'Ingredients ....', FALSE, 1),
(NULL, '21 Piece Bucket', 279.90, 'Ingredients ....', FALSE, 1),
(NULL, '9 Piece Bucket', 129.90, 'Ingredients ....', FALSE, 1),
(NULL, 'ALl-In-One Feast', 129.90, 'Ingredients ....', FALSE, 1),
(NULL, 'All Star Box With Buddy Bottle', 69.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Nugget Box Buddy', 57.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Double Crunck Burger', 49.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Crunch Burger', 24.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Snack Burger', 19.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Classic Twister', 44.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Wrapsta', 29.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Steetwise Two With Chips', 34.90, 'Ingredients ....', FALSE, 1),
(NULL, 'Steetwise Two With Regular Pap', 34.90, 'Ingredients ....', FALSE, 1);

-- Chicken Licken Menu
-- =====================
INSERT INTO Menu_Item VALUES
(NULL, 'Hotwings 6 Piece', 38.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Hotwings 12 Piece', 73.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Hotwings 24 Piece', 135.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Rock My Soul 3 Piece Straight', 48.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Rock My Soul 3 Piece', 51.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Hotwings 6 Piece Delux', 58.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Hotwings 6 Piece Max', 62.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Soulman Load Up', 70.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Feed My Craving 10', 68.0, 'Ingredients ....', FALSE, 2),
(NULL, 'Love Me Hot Burger', 34.0, 'Ingredients ....', FALSE, 2);

-- Nandos Menu
-- =======================
INSERT INTO Menu_Item VALUES
(NULL, 'The Grand Salad (Chicken)', 89.0, 'Ingredients ....', FALSE, 3),
(NULL, 'The Original Boujee Bowl', 72.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Full Chicken + any 3 Sharing Sides', 262.0, 'Ingredients ....', FALSE, 3),
(NULL, '1/2 Chicken + any Single Side', 99.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Hotpot', 40.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Pulled Chicken Sandwich with cheese', 45.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Livers', 47.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Chicken Prego + any Single Side', 49.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Chicken Prego', 45.0, 'Ingredients ....', FALSE, 3),
(NULL, '1/4 Chicken', 45.0, 'Ingredients ....', FALSE, 3),
(NULL, '1/2 Chicken', 87.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Full Chicken', 167.0, 'Ingredients ....', FALSE, 3),
(NULL, 'Halloumi Veg & Rice', 55.0, 'Ingredients ....', FALSE, 3);

-- Garlitos Menu
-- =======================
INSERT INTO Menu_Item VALUES
(NULL, '1/4 Chicken', 40.0, 'Ingredients ....', FALSE, 4),
(NULL, '1/2 Chicken', 73.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Full Chicken', 140.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Chicken Livers', 21.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Chicken Livers Meal', 30.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Quarter Chicken + Pap', 45.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Quarter Chicken + Pap', 49.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Laduma Meal', 50.0, 'Ingredients ....', FALSE, 4),
(NULL, 'Go Go Meal', 59.0, 'Ingredients ....', FALSE, 4),
(NULL, 'The Boss Box + Pap', 80.0, 'Ingredients ....', FALSE, 4),
(NULL, 'The Boss Box + Chips', 85.0, 'Ingredients ....', FALSE, 4);

-- McDonalds Menu
-- ==========================
INSERT INTO Menu_Item VALUES
(NULL, 'Big Mac', 50.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Quater Pounder with Cheese', 55.0, 'Ingredients ....', FALSE, 5),
(NULL, 'McDouble', 40.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Cheeseburger', 36.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Double Cheeseburger', 42.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Hamburger', 36.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Chocolatey Pretzel McFlurry', 21.0, 'Ingredients ....', FALSE, 5),
(NULL, 'McFlurry with OREO cookies', 21.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Chocolate Shake', 19.0, 'Ingredients ....', FALSE, 5),
(NULL, 'Vanilla Shake', 19.0, 'Ingredients ....', FALSE, 5);

CREATE TABLE Restaurant_Location (
    Location_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Street_line_one VARCHAR(150) NOT NULL,
    Street_line_two VARCHAR(150),
    Surburb VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Province ENUM('Gauteng',
                'Mpumanlanga',
                'North West',
                'Limpopo',
                'Kwa-Zulu Natal',
                'Western Cape',
                'Northern Cape',
                'Eastern Cape') NOT NULL,
    Postal_code VARCHAR(4)  NOT NULL
);

INSERT INTO Restaurant_Location VALUES
    (NULL, 'Pretorias St', NULL,'Pretoria Central', 'Pretoria', 'Gauteng', '0001'),
    (NULL, 'Van Der Walt St', NULL,'Pretoria Central', 'Pretoria', 'Gauteng', '0001'),
    (NULL, 'Difate Street','Mabu St','Soshanguve', 'Pretoria', 'Gauteng', '0152'),
    (NULL, 'Ruth 1st Street', NULL,'Soshanguve', 'Pretoria', 'Gauteng', '0152'),
    (NULL, 'Gulethu St', NULL,'Kwamashu', 'Durban', 'Kwa-Zulu Natal', '0252'),
    (NULL, 'Mahatma Gandi St', 'Malik Street','Phoenix', 'Durban', 'Kwa-Zulu Natal', '0542'),
    (NULL, 'Sara Batman St', 'Ntofute St','Cape Town CBD', 'Cape Town', 'Western Cape', '0455');


CREATE TABLE Branch (
    Branch_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Branch_name VARCHAR(100) NOT NULL,
    Restaurant_ID INT UNSIGNED NULL,
    Manager_ID INT UNSIGNED NULL,
    Location_ID INT UNSIGNED NULL,
	INDEX(Restaurant_ID),
	INDEX(Manager_ID), 
	INDEX(Location_ID),
	CONSTRAINT FK_Restaurant_Branch_ID FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant (Restaurant_ID),
	CONSTRAINT FK_Location_Branch_ID FOREIGN KEY (Location_ID) REFERENCES Restaurant_Location (Location_ID)
);

INSERT INTO Branch VALUES
    (NULL, 'KFC Pretoria Central',1,25,1),
    (NULL, 'Chicken Licken Van Der Walt',2,24,2),
    (NULL, 'Nandos Soshanguve Mabu St',3,23,3),
    (NULL, 'McDonalds Soshanguve Ruth First',5,21,4),
    (NULL, 'Nandos Kwamashu',3,20,5),
    (NULL, 'Garlitos Phoenix',4,19,6),
    (NULL, 'KFC Cape Town Central',1,18,7);

CREATE TABLE Employee (
    Employee_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Firstname VARCHAR(30) NOT NULL,
    Lastname VARCHAR(30) NOT NULL,
    Gender ENUM('Male', 'Female') NOT NULL,
    Role ENUM('Manager', 'Cashier', 'Other') NOT NULL,
    Employee_delete BOOLEAN DEFAULT 0,
    Branch_ID INT UNSIGNED NULL,
	INDEX(Branch_ID), 
    CONSTRAINT FK_Branch_Employee_ID FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID)
);

INSERT INTO Employee VALUES
    (NULL,'Thabo', 'Mogale', 'Male', 'Cashier', FALSE,5), -- 1
    (NULL,'David', 'Semelane', 'Male', 'Cashier', FALSE,4),-- 2
    (NULL,'Moremi','Mashigo', 'Male', 'Cashier', FALSE,3),-- 3
    (NULL,'Nothando','Cele', 'Female', 'Cashier', FALSE,2),-- 4
    (NULL,'Masego','Masethe', 'Female', 'Cashier', FALSE,1),-- 5
    (NULL,'Jabulani','Mthombeni', 'Male', 'Cashier', FALSE,7),-- 6
    (NULL,'Thabang','Mathebula', 'Female', 'Cashier', FALSE,6),-- 7
    (NULL,'Uminathi','Hadebe', 'Male', 'Cashier', FALSE,5),-- 8
    (NULL,'Xolisile','Nyoni', 'Female', 'Cashier', FALSE,4),-- 9
    (NULL,'Sibonelo','Vilakazi', 'Female', 'Cashier', FALSE,3),-- 10
    (NULL,'Ayanda','Langa', 'Female', 'Cashier', FALSE,2),-- 11
    (NULL,'Sizani','Dube', 'Male', 'Cashier', FALSE,1),-- 12
    (NULL,'Tholakele','Chabalala', 'Female', 'Cashier', FALSE,7),-- 13
    (NULL,'Mpendulo','Mthombeni', 'Male', 'Cashier', FALSE,6),-- 14
    (NULL,'Nthabiseng','Maswanganye', 'Female', 'Cashier', FALSE,5),-- 15
    (NULL,'Maria','Lemao', 'Female', 'Cashier', FALSE,4),-- 16
    (NULL,'Mashilo','Mohlapamaswi', 'Male', 'Cashier', FALSE,3),-- 17
    (NULL,'Jacob', 'Scoliosis', 'Male', 'Manager', FALSE,7),-- 18
    (NULL,'Mbali', 'Dlamini', 'Female', 'Manager', FALSE,6),-- 19
    (NULL,'Elvis', 'Diale', 'Male', 'Manager', FALSE,5),-- 20
    (NULL,'Andile', 'Mabena', 'Male', 'Manager', FALSE,4),-- 21
    (NULL,'Palesa', 'Maputla', 'Female', 'Cashier', FALSE,2),-- 22
    (NULL,'Dineo', 'Malebje', 'Female', 'Manager', FALSE,3),-- 23
    (NULL,'Quintin', 'Smith', 'Male', 'Manager', FALSE,2),-- 24
    (NULL,'Diana', 'Ross', 'Female', 'Manager', FALSE,1),-- 25
    (NULL,'Kabelo', 'Nguni', 'Male', 'Cashier', FALSE,1);-- 26

    -- The FK_Employee_Branch_ID constraint is created after the employee table is created
    ALTER TABLE Branch
    ADD CONSTRAINT FK_Employee_Branch_ID FOREIGN KEY (Manager_ID) REFERENCES Employee (Employee_ID);

CREATE TABLE Transaction_Record (
    Transaction_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Transaction_time TIMESTAMP NOT NULL,
    Amount_Paid DOUBLE(10,2),
    Total_Cost DOUBLE(10,2),
    Change_Returned DOUBLE(8,2),
    Cashier_ID INT UNSIGNED NULL,
    Branch_ID INT UNSIGNED NULL,
	INDEX(Cashier_ID),
	INDEX(Branch_ID),
	CONSTRAINT FK_Employee_Transaction_ID FOREIGN KEY (Cashier_ID) REFERENCES Employee (Employee_ID),
	CONSTRAINT FK_Branch_Transaction_ID FOREIGN KEY (Branch_ID) REFERENCES Branch (Branch_ID)
);

CREATE TABLE Item_Sold (
    Item_ID INT UNSIGNED NOT NULL,
    Transaction_ID INT UNSIGNED NOT NULL,
    Quantiry_sold INT NOT NULL,
    Total_amount DOUBLE(8,2) NOT NULL,
	INDEX(Item_ID),
	INDEX(Transaction_ID),
	CONSTRAINT FK_Item_Sold_ID FOREIGN KEY (Item_ID) REFERENCES Menu_Item (Item_ID),
	CONSTRAINT FK_Transaction_Items_ID FOREIGN KEY (Transaction_ID) REFERENCES Transaction_Record (Transaction_ID) ON DELETE CASCADE, -- Automatically delete when a transaction record is deleted
    PRIMARY KEY (Item_ID, Transaction_ID)
);

-- Transaction records are captured using the captureTransaction prodedure
-- The procedure requires the cashier ID
-- The amount paid for the items 
-- And the list of menu items bought by the customer
-- The list items are separated by a comma (,)
-- Each item in the list has the quantity of the item be bought which separated by a pound sign (#) 


DELIMITER $$
    DROP PROCEDURE IF EXISTS captureTransation;
    CREATE PROCEDURE captureTransation (
		IN cashireID INT,
		IN amountPaid DOUBLE(8,2),
		IN itemList VARCHAR(1500)
	)
    BEGIN
        -- Declare variables
        DECLARE _counter INT DEFAULT 0;
        DECLARE _branchID INT DEFAULT 0;
        DECLARE _restaurantID INT DEFAULT 0;
        DECLARE _transactionID INT DEFAULT 0;
        DECLARE _itemID INT DEFAULT 0;
        DECLARE _item_name VARCHAR(100);
        DECLARE _item_price DOUBLE(8,2);
        DECLARE _total_cost DOUBLE(10,2);
        DECLARE _quantity INT DEFAULT 0;
        DECLARE _transactionTime TIMESTAMP DEFAULT NOW();

        -- Fetch branch_ID and restaurant_ID
        SELECT e.branch_ID, b.restaurant_ID
        INTO _branchID, _restaurantID
        FROM Employee e, Branch b
        WHERE e.Branch_ID = b.Branch_ID 
        AND e.employee_ID = cashireID;

        -- Create transation
        INSERT INTO Transaction_Record VALUES
        (NULL, _transactionTime, NULL, NULL, NULL, cashireID, _branchID);

        -- Get transaction ID
        SELECT Transaction_ID
        INTO _transactionID
        FROM Transaction_Record
        WHERE  Transaction_time = _transactionTime;

        -- Search for each bought item in the menu_item table
        WHILE (LOCATE(',', itemList) > 0) DO
 
            SET _counter = _counter + 1;
            SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(itemList,',',1),',',-1)
            INTO _item_name;
            
            SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(_item_name,'#', 1),'#',-1)
            INTO _quantity;

            SET _item_name = SUBSTRING(_item_name, LOCATE('#', _item_name) + 1);

            SELECT Item_ID, Item_price
            INTO _itemID, _item_price
            FROM Menu_Item
            WHERE Item_name = _item_name
            AND Restaurant_ID = _restaurantID;

            -- Insert into sold items
            INSERT INTO Item_Sold VALUES
            (_itemID, _transactionID, _quantity, _quantity * _item_price); -- Convet quantity to number
            
            SET itemList = SUBSTRING(itemList, LOCATE(',', itemList) + 1);
        END WHILE;

        -- Calculate the total cost of all the items bought and the change returned
        SELECT SUM(Total_amount)
        INTO _total_cost
        FROM Item_Sold
        WHERE Transaction_ID = _transactionID;

        UPDATE Transaction_Record SET
        Amount_Paid = amountPaid,
        Total_Cost = _total_cost,
        Change_Returned = amountPaid -_total_cost
        WHERE Transaction_ID = _transactionID;
    END $$
DELIMITER ;


/*
-- Load sales into Transacton_Records
-- Load transaction one by one, at least 1 second apart
===================================================
call captureTransation (5, 100.0,'2#Wrapsta,1#Steetwise Two With Chips,');
call captureTransation (5, 100.0,'1#Wrapsta,');
call captureTransation (7, 220.0,'1#Full Chicken,3#Chicken Livers,');
call captureTransation (2, 200.0,'1#Big Mac,1#Quater Pounder with Cheese,1#McDouble,');
call captureTransation (4, 170.0,'1#Hotwings 6 Piece,1#Rock My Soul 3 Piece Straight,2#Love Me Hot Burger,');
call captureTransation (5, 150.0,'4#Steetwise Two With Regular Pap,');
call captureTransation (6, 100.0,'1#Steetwise Two With Regular Pap,');
call captureTransation (6, 50.0,'1#Steetwise Two With Chips,');



Test data
===========================================
'Masego Masethe' CashierID = 5
2 x 'Wrapsta', 29.90
'Steetwise Two With Chips', 34.90

'2#Wrapsta,1#Steetwise Two With Chips,'

Amount paid = R100.0
Total cost = R94.7
Expected changes = R5.3

*/
-- Transaction from Garlitos
-- Shows all the items bought Transaction_ID = 3
SELECT I.Item_name As Item,
    CONCAT('R ', I.Item_price) AS Price,
	Quantiry_sold AS Quantity,
	CONCAT('R ', SI.Total_amount) AS Total
FROM Transaction_Record T, Item_Sold SI, Menu_Item I
WHERE T.Transaction_ID = 3
AND T.Transaction_ID = SI.Transaction_ID
AND SI.Item_ID = I.Item_ID;

-- Shows the transaction made(sale made\receipt data) Transaction_ID = 3
SELECT T.Transaction_ID,
	CONCAT(E.Firstname, ' ', E.Lastname) AS Cashier,
	T.Transaction_time,
    CONCAT('R ', T.Amount_Paid) AS 'Amount Paid',
	CONCAT('R ', T.Total_Cost) AS 'Total Cost',
	CONCAT('R ', T.Change_Returned) AS 'Change Returned',
	B.Branch_name AS Franchisee, R.Restaurant_name AS Franchise, 
	CONCAT(CONCAT(IF(L.Street_line_two IS NULL, '', 'Corner '),
	L.Street_line_one),
	IF(L.Street_line_two IS NULL, ', ', CONCAT(' and ', L.Street_line_two)),
	L.Surburb, ', ', L.City, ', ', L.Province) AS ADDRESS
FROM Transaction_Record T,
    Employee E, Branch B,
    Restaurant R, Restaurant_Location L
WHERE T.Transaction_ID = 3
AND T.Cashier_ID = E.Employee_ID
AND T.Branch_ID = B.Branch_ID
AND R.Restaurant_ID = B.Restaurant_ID
AND B.Location_ID = L.Location_ID;

-- Shows all the items bought Transaction_ID = 1
SELECT I.Item_name As Item,
    CONCAT('R ', I.Item_price) AS Price,
	Quantiry_sold AS Quantity,
	CONCAT('R ', SI.Total_amount) AS Total
FROM Transaction_Record T, Item_Sold SI, Menu_Item I
WHERE T.Transaction_ID = 1
AND T.Transaction_ID = SI.Transaction_ID
AND SI.Item_ID = I.Item_ID;

-- Shows the transaction made(sale made\receipt data) Transaction_ID = 1
SELECT T.Transaction_ID,
	CONCAT(E.Firstname, ' ', E.Lastname) AS Cashier,
	T.Transaction_time,
    CONCAT('R ', T.Amount_Paid) AS 'Amount Paid',
	CONCAT('R ', T.Total_Cost) AS 'Total Cost',
	CONCAT('R ', T.Change_Returned) AS 'Change Returned',
	B.Branch_name AS Franchisee, R.Restaurant_name AS Franchise, 
	CONCAT(CONCAT(IF(L.Street_line_two IS NULL, '', 'Corner '),
	L.Street_line_one),
	IF(L.Street_line_two IS NULL, ', ', CONCAT(' and ', L.Street_line_two)),
	L.Surburb, ', ', L.City, ', ', L.Province) AS ADDRESS
FROM Transaction_Record T,
    Employee E, Branch B,
    Restaurant R, Restaurant_Location L
WHERE T.Transaction_ID = 1
AND T.Cashier_ID = E.Employee_ID
AND T.Branch_ID = B.Branch_ID
AND R.Restaurant_ID = B.Restaurant_ID
AND B.Location_ID = L.Location_ID;

-- Shows all the transaction from a franchise
SELECT B.Branch_name AS Franchisee, R.Restaurant_name AS Franchise,
	T.Transaction_ID,
	CONCAT(E.Firstname, ' ', E.Lastname) AS Cashier,
	T.Transaction_time,
    CONCAT('R ', T.Amount_Paid) AS 'Amount Paid',
	CONCAT('R ', T.Total_Cost) AS 'Total Cost',
	CONCAT('R ', T.Change_Returned) AS 'Change Returned'
FROM Transaction_Record T,
    Employee E, Branch B,
    Restaurant R
WHERE R.Restaurant_name = 'KFC'
AND T.Cashier_ID = E.Employee_ID
AND T.Branch_ID = B.Branch_ID
AND R.Restaurant_ID = B.Restaurant_ID;

-- Shows all the transaction from a franchisee
SELECT B.Branch_name AS Franchisee,
	T.Transaction_ID,
	CONCAT(E.Firstname, ' ', E.Lastname) AS Cashier,
	T.Transaction_time,
    CONCAT('R ', T.Amount_Paid) AS 'Amount Paid',
	CONCAT('R ', T.Total_Cost) AS 'Total Cost',
	CONCAT('R ', T.Change_Returned) AS 'Change Returned'
FROM Transaction_Record T,
    Employee E, Branch B
WHERE B.Branch_name = 'KFC Pretoria Central'
AND T.Cashier_ID = E.Employee_ID
AND T.Branch_ID = B.Branch_ID;
