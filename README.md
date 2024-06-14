# PharmacyManagement_DBMS
This project aims to optimize pharmacy operations, enhance inventory control, and improve patient care through a sophisticated and automated software solution. It features automated inventory management with real-time data analytics for precise tracking and forecasting of medication stocks, secure storage of patient information including medical history and allergies, and detailed records of sales and purchases. The system also includes a messaging feature for internal communication and secure user authentication for both admins and employees.

# Architecture Diagram
![Architecture Diagram](https://github.com/PrantikGhosh/PharmacyManagement_DBMS/assets/84172492/b9370bfa-dfe6-4b37-b9ed-0d033d52e08e)

# Relational Table and Schema
![Relational Table](https://github.com/PrantikGhosh/PharmacyManagement_DBMS/assets/84172492/589e5b0f-8d4a-4984-b949-18d71c6f2046)
![Relational Schema](https://github.com/PrantikGhosh/PharmacyManagement_DBMS/assets/84172492/e9cfc2ab-c001-4f09-af80-916f89273e3d)

# Installation and Usage
To get started, clone the repository, set up the database using the provided schema, install the necessary dependencies, and run the application. The admin dashboard allows for inventory management, sales and purchase tracking, and user activity monitoring, while the employee interface provides access to patient information, medication dispensing, and communication tools.
This database works on SQLite, and to view the database tables, adequate software is required. To access the two databases, first install DB Browser for SQLite and access those tables. The username and password are - admin.

# Database Schema and Implementation
The database schema includes tables for companies, drugs, expirations, sales history, messages, logins, purchases, sales, and users. The system implements concurrency control to ensure data consistency and integrity through transaction management locking mechanisms, and recovery mechanisms such as database backup and restore procedures to prevent data loss. The database design follows normalization principles to eliminate redundancy and maintain data integrity.
