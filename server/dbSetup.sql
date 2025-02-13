CREATE TABLE IF NOT EXISTS accounts (
    id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    name varchar(255) COMMENT 'User Name',
    email varchar(255) COMMENT 'User Email',
    picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE chores (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    type VARCHAR(255),
    isComplete BOOLEAN DEFAULT false
)

INSERT INTO
    chores (name, description, type)
VALUES (
        "Clean Room",
        "Pick up your dang room.",
        "Indoor"
    )

SELECT * FROM chores;

SELECT * FROM chores WHERE id = 2;

SELECT * FROM chores ORDER BY `type` DESC;

DELETE FROM chores WHERE id = 3;

DROP TABLE chores;