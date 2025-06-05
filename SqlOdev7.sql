CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

INSERT INTO employee (id, name, birthday, email)
VALUES (1, 'John Doe', '1990-05-14', 'johndoe@example.com'),
       (2, 'Jane Smith', '1985-10-21', 'janesmith@example.com'),
       ...
       (50, 'Emily White', '1993-08-07', 'emilywhite@example.com');


UPDATE employee SET name = 'Updated Name' WHERE id IN (1,2,3,4,5);


UPDATE employee SET birthday = '2000-01-01' WHERE id IN (6,7,8,9,10);


UPDATE employee SET email = 'updatedemail@example.com' WHERE id IN (11,12,13,14,15);


DELETE FROM employee WHERE name LIKE 'John%';


DELETE FROM employee WHERE birthday BETWEEN '1980-01-01' AND '1990-12-31';


DELETE FROM employee WHERE email LIKE '%@example.com' AND id IN (16,17,18,19,20);
