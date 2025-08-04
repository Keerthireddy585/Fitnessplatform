CREATE DATABASE Fitnessplatform;
USE Fitnessplatform;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    role ENUM('trainer', 'client'),
    registration_date DATE
);

CREATE TABLE Trainers (
	trainer_id INT PRIMARY KEY,
    specialization VARCHAR(100),
    experience_years INT,
    FOREIGN KEY (trainer_id) REFERENCES Users(user_id)
);    
    
CREATE TABLE Clients (
	client_id INT PRIMARY KEY,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    health_conditions TEXT,
    FOREIGN KEY (client_id) REFERENCES Users(user_id)
);

CREATE TABLE Programs (
	program_id INT AUTO_INCREMENT PRIMARY KEY,
    trainer_id INT,
    title VARCHAR(100),
    description TEXT,
    duration_weeks INT,
    price DECIMAL(10,2),
    FOREIGN KEY (program_id) REFERENCES Trainers(trainer_id)
);

CREATE TABLE Subscriptions (
	subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    program_id INT,
    client_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (program_id) REFERENCES Programs(program_id),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

CREATE TABLE Progress_logs (
	feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    trainer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    date DATE,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);



    
    
