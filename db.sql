create database employee_performance;
use employee_performance;

create table Employees(
employee_id int primary key,
name varchar(100),
department varchar(100),
designation varchar(100),
performance_score int
);

CREATE TABLE PerformanceReviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    review_date DATE,
    review_comments TEXT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);