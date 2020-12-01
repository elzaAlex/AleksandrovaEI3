create table Account(
idUser SERIAL primary key,
first_name VARCHAR(50) NOT NULL ,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
username VARCHAR(50) NOT NULL,
password VARCHAR(200) NOT NULL,
created_at DATE NOT NULL ,
role VARCHAR(50) NOT NULL
);
create table product(
  idProduct SERIAL PRIMARY KEY ,
  product_cost FLOAT NOT NULL ,
  product_name VARCHAR(50) NOT NULL ,
  idSeller INT NOT NULL ,
  FOREIGN KEY (idSeller) references Account(id_user) ON DELETE CASCADE on update CASCADE
);

insert into Account (first_name, last_name, email, username, password, created_at, role)
VALUES ('Maks','Titok','admin@mail.ru', 'admin','admin','25-11-2020','ROLE_ADMIN') ;

insert into Account (first_name, last_name, email, username, password, created_at, role)
VALUES ('Rita','Titok','rita@mail.ru', 'rita','rita','25-11-2020','ROLE_BUYER') ;

insert into Account (first_name, last_name, email, username, password, created_at, role)
VALUES ('Miha','Pashkevich','miha@mail.ru', 'miha','miha','25-11-2020','ROLE_SELLER') ;

insert into Account (first_name, last_name, email, username, password, created_at, role)
VALUES ('Vlad','Praskov','Praskov@mail.ru', 'qwerty','qwerty','25-11-2020','ROLE_BLOCKED') ;

insert into product(product_cost, product_name, idSeller)
 VALUES (255.0,'Стол',1);

insert into product(product_cost, product_name, idSeller)
VALUES (1.68,'Молоко',18);
