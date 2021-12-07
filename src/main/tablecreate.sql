use adlister_db;

CREATE TABLE if not exists users(
    id int unsigned not null auto_increment,
    username varchar(50) not null,
    password varchar(100) not null,
    email varchar(150),
    primary key (id)
);

CREATE table if not exists ads(
    id int unsigned not null auto_increment,
    userID int unsigned not null,
    title varchar(50) not null,
    description varchar(500),
    primary key (id),
    FOREIGN KEY (userID) references users(id)
);

INSERT INTO users(username, password, email) VALUES ("kev2cool", "password2cool", "example@example.com");
INSERT INTO ads(userID, title, description) VALUES (1, "New Car", "New but old car");