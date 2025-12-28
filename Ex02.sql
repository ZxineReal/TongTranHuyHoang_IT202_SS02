create database session02_ex02;
use session02_ex02;

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null
);

create table subject(
	subject_id int auto_increment primary key,
    subject_name varchar(100) not null,
    credits int check(credits >0)
);