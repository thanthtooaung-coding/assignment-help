# Assignment Help Repository

This repository contains two separate Spring Boot web application projects developed as solutions for lab assignments.

## Projects

1.  **Hospital Management System (`/hospital`)**
2.  **CityMall Customer Registration (`/customer-registration`)**

-----

## 1\. Hospital Management System

This project is a simple web application for managing hospital doctors. It allows for the addition of new doctors to a database through a web form.

### Features

  * A user-friendly form to register new doctors.
  * Saves doctor information into a MySQL database.
  * A confirmation page that displays the details of the newly added doctor.

### Technologies Used

  * Java
  * Spring Boot
  * Spring MVC
  * JSP
  * MySQL

### Setup and Usage

**1. Database Setup**

Create a table named `doctor` in your MySQL database using the following SQL script:

```sql
CREATE TABLE doctor (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    salary DECIMAL(10, 2) NOT NULL
);
```

**2. Configure Application**

Open the `src/main/resources/application.properties` file and update the database URL, username, and password.

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
spring.datasource.username=your_username
spring.datasource.password=your_password
```

**3. Run the Application**

Navigate to the `hospital` directory and run the application using Maven:

```bash
mvn spring-boot:run
```

The application will be accessible at `http://localhost:4001/addDoctor`.

-----

## 2\. CityMall Customer Registration System

This project is a customer registration system for the "CityMall Online Shopping" platform. It provides a web form for new users to register, and their details are saved to a MySQL database.

### Features

  * A comprehensive registration form for new customers.
  * Saves customer data, including personal details and addresses, to a MySQL database.
  * A success page to confirm the registration and display the customer's details.

### Technologies Used

  * Java / J2EE
  * Spring Boot
  * Spring MVC
  * JSP
  * MySQL

### Setup and Usage

**1. Database Setup**

Create a table named `customer_registration` in your MySQL database using the following SQL script:

```sql
CREATE TABLE IF NOT EXISTS customer_registration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    shipping_address VARCHAR(255) NOT NULL,
    billing_address VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
```

**2. Configure Application**

Open the `src/main/resources/application.properties` file inside the `customer-registration` project and update your database credentials.

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/citymall_db
spring.datasource.username=your_username
spring.datasource.password=your_password
```

**3. Run the Application**

Navigate to the `customer-registration` directory and run the application using Maven:

```bash
mvn spring-boot:run
```

Access the registration form at the application's root URL.
