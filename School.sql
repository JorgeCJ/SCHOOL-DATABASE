CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    matriculation INT,
    fullName VARCHAR(255),
    document INT UNIQUE
);

CREATE TABLE Teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(255),
    document INT UNIQUE
);

CREATE TABLE Classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    idTeachers INT,
    idStudents INT,
    FOREIGN KEY (idTeachers) REFERENCES Teachers(id),
    FOREIGN KEY (idStudents) REFERENCES Students(id)
);
