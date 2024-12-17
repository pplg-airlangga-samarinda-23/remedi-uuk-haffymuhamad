
CREATE DATABASE HotelBooking;

USE HotelBooking;

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);


CREATE TABLE kamar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomor_kamar INT NOT NULL,
    tipe_kamar ENUM('king', 'queen', 'twin', 'single', 'double') NOT NULL,
    status ENUM('terisi', 'kosong') NOT NULL DEFAULT 'kosong'
);


INSERT INTO user (nama, email, password)
VALUES 
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Smith', 'jane.smith@example.com', 'securepassword');


INSERT INTO kamar (nomor_kamar, tipe_kamar, status)
VALUES 
(101, 'king', 'kosong'),
(102, 'queen', 'terisi'),
(103, 'twin', 'kosong'),
(104, 'double', 'kosong'),
(105, 'single', 'terisi');
