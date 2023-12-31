# Secure Database-as-a-Service System

This project implements a secure Database-as-a-Service system using Django. The system allows users to protect their data stored in the database while utilizing cloud services.

## Table of Contents

- [Secure Database-as-a-Service System](#secure-database-as-a-service-system)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Features](#features)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Security Features](#security-features)

## Description

Database as a service has become an essential cloud service, and this project focuses on designing, implementing, and evaluating a secure database-as-a-service system using Django. The system includes basic access control mechanisms, user authentication, and query integrity protection.

## Features

- **User Authentication**: Users can authenticate using a username and password.
- **Basic Access Control**: Two user groups (Group H and Group R) with different access privileges.
- **Query Integrity Protection**: Mechanism to detect modified or fake data.
- **Healthcare Record Management**: Support for creating and querying healthcare records.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/saiprahlad/securedb.git
    cd securedb
    ```

2. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

3. Run initial setup:

    ```bash
    python Runmefirst.py
    cd securedb
    ```

4. Apply migrations:

    ```bash
    python manage.py migrate
    ```

5. Seed the database:

   ```bash
   python manage.py seed_healthdata
   ```

## Usage

1. Run the development server:

    ```bash
    python manage.py runserver
    ```

2. Access the application at [http://localhost:8000](http://localhost:8000) in your web browser.

## Security Features

The security features implemented in this project include:

- **User Authentication**: Users must authenticate using a valid username and password.
- **Basic Access Control**: Two user groups (Group H and Group R) with different access levels.
- **Query Integrity Protection**: Ensures that data integrity is maintained by detecting any modifications or fake data.

Refer to the [Security Features](#security-features) section for more details.