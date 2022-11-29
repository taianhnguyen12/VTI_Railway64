CREATE DATABASE Testing_System_Assignment_1  ;
USE Testing_System_Assignment_1 ;
CREATE TABLE Department (
DepartmentID int ,
DepartmentName varchar(50)

);

CREATE TABLE Position (
PositionID int ,
PositionName varchar(50)
);

CREATE TABLE Account_1 (
AccountID int ,
Email nvarchar(100) ,
Fullname varchar(50),
DepartmentID int ,
PositionID int ,
createDate int 
);

CREATE TABLE Gruop_1  (
GroupID int ,
GroupName varchar(50),
CreatorID int ,
CreateDate datetime 
);

CREATE TABLE TyperQuestion (
TypeID int ,
TypeName varchar(50)
);

CREATE TABLE CategoryQuestion (
CategoryID int,
CategoryName varchar(50)
);

CREATE TABLE Question (
QuestionID int,
Content varchar(200),
CategoryID varchar(50),
TypeID int,
CreatorID int,
CreateDate datetime 
);

CREATE TABLE Answer (
AnswerID int ,
Content varchar(200),
QuestionID int,
isCorrect varchar(50)
);

CREATE TABLE Exam (
ExamID int,
Code int,
Title varchar(50),
CategoryID int ,
Duration datetime ,
CreatorID int,
CreateDate datetime 

);

CREATE TABLE ExamQuestion (
ExamID int,
QuestionID int 
);