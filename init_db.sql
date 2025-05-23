ALTER USER 'root'@'localhost' IDENTIFIED BY 'mike';
CREATE DATABASE elem_student_information;
GRANT ALL PRIVILEGES ON demodb.* TO 'root'@'localhost';
FLUSH PRIVILEGES;