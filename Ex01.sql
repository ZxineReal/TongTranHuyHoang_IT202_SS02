create database session02_ex01;
use session02_ex01;

create table class(
	class_id int auto_increment primary key,
    class_name varchar(100) not null unique,
    year year not null
);

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null,
    date_of_birth date not null,
    class_id int not null,
    foreign key (class_id) references class(class_id)
);


