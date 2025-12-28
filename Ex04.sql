create database session02_ex04;
use session02_ex04;

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null
);

create table subject(
	subject_id int auto_increment primary key,
    subject_name varchar(100) not null,
    credits int check(credits >0)
);

create table enrollment(
	enrollment_id int auto_increment primary key,
    student_id int not null,
    subject_id int not null,
    date date,
	unique(student_id, subject_id),
    foreign key (student_id) references student(student_id),
    foreign key (subject_id) references subject(subject_id)
);

create table teacher(
	teacher_id int auto_increment primary key,
    full_name varchar(100) not null,
    email varchar(100) not null unique
);

alter table subject add teacher_id int;
alter table subject add foreign key (teacher_id) references teacher(teacher_id);
