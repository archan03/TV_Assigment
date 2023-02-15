CREATE DATABASE CI_Platform

CREATE TABLE admin (
    admin_id BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(16) DEFAULT NULL, 
    last_name VARCHAR(16) DEFAULT NULL, 
    email VARCHAR(128) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL ,
    updated_at DATETIME DEFAULT NULL,
    deleted_at DATETIME DEFAULT NULL
)

CREATE TABLE users(
    user_id BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(16) DEFAULT NULL,
    last_name VARCHAR(16) DEFAULT NULL,
    email VARCHAR(128) NOT NULL DEFAULT NULL,
    password VARCHAR(255) NOT NULL DEFAULT NULL,
    phone_number int NOT NULL,
    avatar VARCHAR(255) DEFAULT NULL,
    why_i_volunteer text DEFAULT NULL,
    employee_id VARCHAR(16) DEFAULT NULL,
    department VARCHAR(16) DEFAULT NULL,
    city_id bigint NOT NULL,
    country_id bigint NOT NULL,
    profile_text text DEFAULT NULL,
    linked_in_url VARCHAR(255) DEFAULT NULL,
    title VARCHAR(255) DEFAULT NULL,
    [status] nvarchar(2) NOT NULL CHECK ([status] IN('1','0')) DEFAULT '1',
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT NULL,
    deleted_at DATETIME DEFAULT NULL,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
)

