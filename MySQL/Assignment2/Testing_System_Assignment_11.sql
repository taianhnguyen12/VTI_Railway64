DROP database if exists testing_system_assignment_11;
create database testing_system_assignment_11;

USE testing_system_assignment_11;

CREATE TABLE department (
	DepartmentID INT NOT NULL AUTO_INCREMENT,
    DepartmentName VARCHAR	(20) not null ,
	PRIMARY KEY (DepartmentID)
);

create table position (
positionID int not null auto_increment primary key,
positionName varchar(40) not null
);
create table acccount_11 (
accountID int not null auto_increment primary key,
email varchar(30) not null,
userName varchar(50) not null,
fullName varchar(50) not null,
DepartmentID int not null,
PositionID int not null,
Createdate datetime default current_timestamp,
foreign key (DepartmentID) references department (DepartmentID),
foreign key (PositionID) references position (positionID)
);

create table group_1 (
groupID int not null auto_increment primary key,
groupName varchar(40) not null,
CreateID int not null,
CreateDate datetime default current_timestamp
);

create table typequestion (
typeID int not null auto_increment primary key,
typeName varchar(40)
);

create table categoryquestion (
categoryID int not null auto_increment primary key,
categoryName varchar(40)
);

create table question (
questionID int not null auto_increment primary key,
content varchar(100),
categoryID int not null,
typeID int not null,
createID int not null,
createDate datetime default current_timestamp,
foreign key(categoryID) references categoryquestion (categoryID),
foreign key(typeID) references typequestion(typeID)
);

create table answer (
answerID int not null auto_increment primary key,
content varchar(100) not null,
QuestionID int not null,
isCorrect enum ('dung','sai')
);

create table exam (
examID int not null auto_increment primary key,
code int not null,
title varchar(100) not null,
categoryID int not null,
duration datetime default current_timestamp,
createID int not null,
createDate datetime default current_timestamp,
foreign key(categoryID) references categoryquestion (categoryID)
);

create table examQuestion (
examID int not null auto_increment primary key,
questionID int not null
);