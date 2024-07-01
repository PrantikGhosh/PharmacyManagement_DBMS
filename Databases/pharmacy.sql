SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";

-- Database: `pharmacy`

-- Table structure for table `company`
CREATE TABLE `company` (
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL
);

-- Dumping data for table `company`
INSERT INTO `company` (`NAME`, `ADDRESS`, `PHONE`) VALUES
('Biocon Limited', 'Raipur', '8889553458'),
('Cipla', 'Mumbai', '9887766554'),
('Johnson & Johnson', 'Kolkata', '6349556398'),
('Lupin', 'Hyderabad', '4657890876'),
('Pfizer Inc.', 'Delhi', '4282466454'),
('Sun Pharmaceutical Industries', 'Mumbai', '7689432156'),
('Dr. Reddys Laboratories', 'Hyderabad', '8765432190'),
('GlaxoSmithKline Pharmaceuticals', 'Chennai', '9876543210'),
('Cadila Healthcare', 'Ahmedabad', '7654321987'),
('Aurobindo Pharma', 'Visakhapatnam', '8901234567');
-- --------------------------------------------------------

-- Table structure for table `drugs`
CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(20) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `PLACE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL
);

-- Dumping data for table `drugs`
INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`, `COMPANY_NAME`, `PRODUCTION_DATE`, `EXPIRATION_DATE`, `PLACE`, `QUANTITY`) VALUES
('Aspirin', 'Pill', 'ABC123', '5mg', 'aj82', 1.5, 2.5, 'In Stock', 'PharmaCo', '2022-01-01', '2023-01-01', 'Ambala', 100),
('Ibuprofen', 'Tablet', 'XYZ789', '10mg', 'nd97', 2.0, 3.0, 'In Stock', 'HealthMeds', '2021-12-01', '2022-12-01', 'Bilaspur', 75),
('Paracetamol', 'Capsule', 'PCT567', '500mg', 'la67', 1.0, 1.5, 'In Stock', 'MediCare', '2023-02-01', '2024-02-01', 'Chennai', 50),
('Omeprazole', 'Liquid', 'OMZ987', '20mg', 'sq82', 3.5, 5.0, 'In Stock', 'PharmaLife', '2022-03-15', '2023-03-15', 'Daman', 60),
('Amoxicillin', 'Tablet', 'AMX345', '250mg', 'ji76', 2.2, 3.2, 'In Stock', 'MediHealth', '2022-06-10', '2023-06-10', 'Erode', 40),
('Ciprofloxacin', 'Drops', 'CIP678', '5mg', 'pq90', 4.0, 6.0, 'In Stock', 'WellnessPharma', '2021-11-20', '2022-11-20', 'Faridabad', 30),
('Loratadine', 'Tablet', 'LOR901', '10mg', 'mb56', 1.8, 2.5, 'In Stock', 'CareMeds', '2022-04-05', '2023-04-05', 'Gndhinagar', 55),
('Diazepam', 'Capsule', 'DZP234', '2mg', 'lr34', 2.5, 4.0, 'In Stock', 'SafeMeds', '2023-01-15', '2024-01-15', 'Hubli', 25),
('Prednisone', 'Tablet', 'PQR123', '150mg', 'pd83', 2.8, 4.5, 'In Stock', 'ReliefMeds', '2022-07-20', '2023-07-20', 'Imphal', 35),
('Sildenafil', 'Capsule', 'STU456', '5mg', 'di90', 3.0, 4.8, 'In Stock', 'HealthAid', '2022-05-08', '2023-05-08', 'Jabalpur', 48);
-- --------------------------------------------------------

-- Table structure for table `expiry`
CREATE TABLE `expiry` (
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `DATE_OF_EXPIRY` varchar(10) NOT NULL,
  `QUANTITY_REMAIN` int(11) NOT NULL
);

-- Dumping data for table `expiry`
INSERT INTO `expiry` (`PRODUCT_NAME`, `PRODUCT_CODE`, `DATE_OF_EXPIRY`, `QUANTITY_REMAIN`) VALUES
('Aspirin', 'ABC123', '2024-02-01', 100),
('Ibuprofen', 'XYZ789', '2023-12-01', 75),
('Paracetamol', 'PCT567', '2023-07-20', 50),
('Omeprazole', 'OMZ987', '2023-03-15', 60),
('Amoxicillin', 'AMX345', '2023-06-10', 40),
('Ciprofloxacin', 'CIP678', '2022-11-20', 30),
('Loratadine', 'LOR901', '2023-04-05', 55),
('Diazepam', 'DZP234', '2024-01-15', 25),
('Ranitidine', 'RNT234', '2023-07-20', 35),
('Ibuprofen Gel', 'IBU789', '2023-05-08', 48);
-- --------------------------------------------------------

-- Table structure for table `history_sales`
CREATE TABLE `history_sales` (
  `USER_NAME` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL,
  `TIME` varchar(20) NOT NULL
);

-- Dumping data for table `history_sales`
INSERT INTO `history_sales` (`USER_NAME`, `BARCODE`, `NAME`, `TYPE`, `DOSE`, `QUANTITY`, `PRICE`, `AMOUNT`, `DATE`, `TIME`) VALUES
('Arjun Singh', 'ABC123', 'Aspirin', 'Pill', '5mg', 2, 2.5, 5.0, '2024-02-25', '03:15 PM'),
('Aditi Das', 'XYZ789', 'Ibuprofen', 'Tablet', '10mg', 4, 3.0, 12.0, '2024-02-25', '04:00 PM'),
('Ananya Gupta', 'PCT567', 'Paracetamol', 'Capsule', '500mg', 1, 1.0, 1.0, '2024-02-25', '05:30 PM'),
('Aryan Kumar', 'OMZ987', 'Omeprazole', 'Liquid', '20mg', 2, 4.5, 9.0, '2024-02-25', '06:45 PM'),
('Aishwarya Reddy', 'AMX345', 'Amoxicillin', 'Tablet', '250mg', 3, 2.2, 6.6, '2024-02-25', '08:00 PM'),
('Ayush Verma', 'CIP678', 'Ciprofloxacin', 'Drops', '5mg', 1, 4.0, 4.0, '2024-02-25', '09:15 PM'),
('Anvi Patel', 'LOR901', 'Loratadine', 'Tablet', '10mg', 2, 2.5, 5.0, '2024-02-25', '10:30 PM'),
('Aditya Sharma', 'DZP234', 'Diazepam', 'Capsule', '2mg', 1, 2.5, 2.5, '2024-02-25', '11:45 PM'),
('Ishita Gupta', 'RNT234', 'Ranitidine', 'Tablet', '150mg', 2, 2.8, 5.6, '2024-02-26', '01:00 AM'),
('Ishaan Joshi', 'IBU789', 'Ibuprofen Gel', 'Gel', '5mg', 3, 3.0, 9.0, '2024-02-26', '02:15 AM');
-- --------------------------------------------------------

-- Table structure for table `inbox`
CREATE TABLE `inbox` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
);

-- Dumping data for table `inbox`
INSERT INTO `inbox` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('sukhum', 'admin', 'Hi admin, any updates on this months salary?'),
('admin', 'sukhum', 'Yes, salaries are processed. You will receive it by the weeks end.'),
('sukhum', 'admin', 'Any deductions or bonuses for me this time?'),
('admin', 'sukhum', 'No deductions, and there is a performance bonus. Check your payslip.'),
('sukhum', 'admin', 'How can I access my payslip?'),
('admin', 'sukhum', 'Through the HR portal. Login and find it under "Salary".'),
('sukhum', 'admin', 'Thanks, admin!'),
('admin', 'sukhum', 'You are welcome!');
-- --------------------------------------------------------

-- Table structure for table `login`
CREATE TABLE `login` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL
);

-- Dumping data for table `login`
INSERT INTO `login` (`NAME`, `TYPE`, `DATE`, `TIME`) VALUES
('admin', 'Admin', '17-02-2017', '10:30:24'),
('admin', 'Admin', '17-02-2017', '10:32:48'),
('mark', 'Employee', '17-02-2017', '10:32:56'),
('admin', 'Admin', '17-02-2017', '10:33:10'),
('mark', 'Employee', '17-02-2017', '10:33:37'),
('admin', 'Admin', '17-02-2017', '10:36:21'),
('admin', 'Admin', '17-02-2017', '10:36:53'),
('admin', 'Admin', '17-02-2017', '10:49:27'),
('admin', 'Admin', '17-02-2017', '11:02:23'),
('admin', 'Admin', '18-02-2017', '10:50:29');
-- --------------------------------------------------------

-- Table structure for table `message_history`
CREATE TABLE `message_history` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
);

-- Dumping data for table `message_history`
INSERT INTO `message_history` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('aayush', 'admin', 'Hi admin, I have a question about Aspirin.'),
('admin', 'aayush', 'Hello aayush! What would you like to know about Aspirin?'),
('aayush', 'admin', 'Is it safe to take Aspirin daily for headaches?'),
('admin', 'aayush', 'Taking Aspirin occasionally for headaches is generally safe.'),
('aayush', 'admin', 'Got it. Any common side effects I should be aware of?'),
('admin', 'aayush', 'Common side effects may include stomach upset.'),
('aayush', 'admin', 'Thanks for the info! Is Aspirin available over-the-counter?'),
('admin', 'aayush', 'Yes, Aspirin is available everywhere without a prescription.'),
('aayush', 'admin', 'Great! Any specific instructions for taking Aspirin?'),
('admin', 'aayush', 'Follow the instructions on the label or as directed by your doctor.');
-- --------------------------------------------------------

-- Table structure for table `purchase`
CREATE TABLE `purchase` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(40) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL
);

-- Dumping data for table `purchase`
INSERT INTO `purchase` (`BARCODE`, `NAME`, `TYPE`, `COMPANY_NAME`, `QUANTITY`, `PRICE`, `AMOUNT`) VALUES
('ABC123', 'Aspirin', 'Pill', 'Biocon Limited', 50, 2.5, 125.0),
('XYZ789', 'Ibuprofen', 'Tablet', 'Cipla', 40, 3.0, 120.0),
('PCT567', 'Paracetamol', 'Capsule', 'Johnson & Johnson', 20, 1.0, 20.0),
('OMZ987', 'Omeprazole', 'Liquid', 'Lupin', 10, 4.5, 45.0),
('AMX345', 'Amoxicillin', 'Tablet', 'Pfizer Inc.', 15, 2.2, 33.0),
('CIP678', 'Ciprofloxacin', 'Drops', 'Sun Pharmaceutical Industries', 5, 4.0, 20.0),
('LOR901', 'Loratadine', 'Tablet', 'Dr. Reddys Laboratories', 10, 2.5, 25.0),
('DZP234', 'Diazepam', 'Capsule', 'GlaxoSmithKline Pharmaceuticals', 8, 2.5, 20.0),
('PQR123', 'Prednisone', 'Tablet', 'Cadila Healthcare', 25, 1.8, 45.0),
('STU456', 'Sildenafil', 'Capsule', 'Aurobindo Pharma', 18, 3.5, 63.0);
-- --------------------------------------------------------

-- Table structure for table `sales`
CREATE TABLE `sales` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
 `DATE` date NOT NULL
);

-- Dumping data for table `sales`
INSERT INTO `sales` (`BARCODE`, `NAME`, `TYPE`, `DOSE`, `QUANTITY`, `PRICE`, `AMOUNT`, `DATE`) VALUES
('ABC123', 'Aspirin', 'Pill', '5mg', 2, 2.5, 5.0, '2024-02-25'),
('XYZ789', 'Ibuprofen', 'Tablet', '10mg', 4, 3.0, 12.0, '2024-02-25'),
('PCT567', 'Paracetamol', 'Capsule', '500mg', 1, 1.0, 1.0, '2024-02-25'),
('OMZ987', 'Omeprazole', 'Liquid', '20mg', 2, 4.5, 9.0, '2024-02-25'),
('AMX345', 'Amoxicillin', 'Tablet', '250mg', 3, 2.2, 6.6, '2024-02-25'),
('CIP678', 'Ciprofloxacin', 'Drops', '5mg', 1, 4.0, 4.0, '2024-02-25'),
('LOR901', 'Loratadine', 'Tablet', '10mg', 2, 2.5, 5.0, '2024-02-25'),
('DZP234', 'Diazepam', 'Capsule', '2mg', 1, 2.5, 2.5, '2024-02-25'),
('RNT234', 'Ranitidine', 'Tablet', '150mg', 2, 2.8, 5.6, '2024-02-26'),
('IBU789', 'Ibuprofen Gel', 'Gel', '5mg', 3, 3.0, 9.0, '2024-02-26');
-- --------------------------------------------------------

-- Table structure for table `users`
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `SALARY` double NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
);

-- Dumping data for table `users`
INSERT INTO `users` (`ID`, `NAME`, `DOB`, `ADDRESS`, `PHONE`, `SALARY`, `PASSWORD`) VALUES
(1, 'admin', '1995-12-23', 'Someplace India', '9800000000', 50000, 'admin'),
(2, 'sukhum', '1990-05-15', 'City of Joy, Kolkata', '9876543210', 3500, 'sukhum123'),
(3, 'prantik', '1987-09-08', 'Green Valley, Pune', '8765432109', 4000, 'Prantik@srm'),
(4, 'abhivesh', '1993-03-20', 'Silicon City, Bangalore', '7654321098', 5000, 'Abhivesh@2003'),
(5, 'amrita', '1996-08-14', 'Jaspal street, Allahabad', '7766558899', 4500, 'amrita123');
-- --------------------------------------------------------

ALTER TABLE `company`
ADD PRIMARY KEY (`NAME`);

ALTER TABLE `drugs`
ADD PRIMARY KEY (`BARCODE`);

ALTER TABLE `users`
ADD PRIMARY KEY (`ID`);

ALTER TABLE purchase 
ADD FOREIGN KEY (company_name)
REFERENCES company(NAME);
