create database final_project;
use final_project;
-- drop database final_project
-- // ----------------------------------	Test Tables    -------------------------------- // --
--drop table section
--drop table users


CREATE TABLE Users(
	userID	varchar(255),	-- same as roll number for student
	password varchar(255),
	fname varchar(255), 
	lname varchar(255), 
	email varchar(255),  
	CNIC varchar(255),
	role varchar(255),	-- academic office, faculty, student
	batch varchar(255),	-- for student
	DoB date,
	address varchar(255),
	sectionID varchar(255),	-- for student

	PRIMARY KEY(userID),
	FOREIGN KEY(sectionID) references Section(sectionID),
);

CREATE TABLE Section(
	sectionID varchar(255),
	strength numeric,

	PRIMARY KEY(sectionID)
);
Insert into Section values('A', 0)
Insert into Section values('B', 0)
Insert into Section values('C', 0)
Insert into Section values('D', 0)
Insert into Section values('E', 0)

select count(*) from INFORMATION_SCHEMA.TABLES
--	---------------------------------------------------------------------------------------------
--	---------------------------------------------------------------------------------------------
--					ONLY LOADED SECTIONS, AND USERS TABLE IN DB
--	---------------------------------------------------------------------------------------------
--	---------------------------------------------------------------------------------------------

CREATE TABLE StudiesIn(		-- student studies in which section of which course
	studentID varchar(255),
	sectionID varchar(255),
	courseID varchar(255),

	FOREIGN KEY(studentID) references Users(userID),
	FOREIGN KEY(sectionID) references Section(sectionID),
	FOREIGN KEY(courseID) references Course(courseID)
);

CREATE TABLE Transcript(
	transcriptID varchar(255),
	semester varchar(255),
	studentID varchar(255),
	CGPA float,

	PRIMARY KEY(transcriptID),
	FOREIGN KEY(studentID) references Users(userID),
);

CREATE TABLE Course(
	courseID varchar(255),
	courseName varchar(255),
	credithrs numeric,
	coordinatorID varchar(255), 
	assignWeight numeric,
	quizWeight numeric,
	sessionalWeight numeric,
	projectWeight numeric,
	finalWeight numeric,
	labWeight numeric,
	preReqID varchar(255),

	CHECK(assignWeight+quizWeight+sessionalWeight+projectWeight+finalWeight+labWeight = 100),
	PRIMARY KEY(courseID),
	FOREIGN KEY(coordinatorID) references Users(userID),
	FOREIGN KEY(preReqID) references Course(courseID)
);

CREATE TABLE Attendance(
	studentID varchar(255), 
	courseID varchar(255),
	dateOfClass date,
	status char(1),

	FOREIGN KEY(studentID) references Users(userID), 
	FOREIGN KEY(courseID) references Course(courseID)
);

-- CREATING NEW TABLE FOR facultyID -->  CourseID for attendance
CREATE TABLE teacher_attendance(
	facultyID varchar(255),	-- THE ONE TAKING ATTENDANCE
	courseID varchar(255),

	FOREIGN KEY(facultyID) references Users(userID),
	FOREIGN KEY(courseID) references Course(courseID)
);

CREATE TABLE Feedback(
	studentID varchar(255),
	facultyID varchar(255),
	courseID varchar(255),
	review varchar(255),	--written feedback
	rating float,	

	FOREIGN KEY(studentID) references Users(userID), 
	FOREIGN KEY(facultyID) references Users(userID),
	FOREIGN KEY(courseID) references Course(courseID)
);

CREATE TABLE Evaluation(	-- grand total calc
	evalID varchar(255),
	courseID varchar(255),
	total_marks numeric,
	quiz_marks numeric, 
	assign_marks numeric, 
	project_marks numeric, 
	sessional_marks numeric, 
	final_marks numeric, 
	lab_marks numeric, 

	PRIMARY KEY(evalID),
	FOREIGN KEY(courseID) references Course(courseID)
	-- the quiz, final ets marks will be the sum of marks of student quizzes in that course
);

CREATE TABLE quiz(
	quiz# numeric,
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Assign(
	assign# numeric,
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Sessional(
	sessional# numeric,
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Project(
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Final(
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Lab(
	lab# numeric,
	studentID varchar(255),
	courseID varchar(255),
	total_weight numeric,
	obtained numeric,

	CHECK(obtained <= total_weight),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);

CREATE TABLE Teaches(
	facultyID varchar(255),
	courseID varchar(255),
	sectionID varchar(255),

	FOREIGN KEY(facultyID) references Users(userID),
	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(sectionID) references Section(sectionID)
);

CREATE TABLE Studies(
	studentID varchar(255),
	courseID varchar(255),


	FOREIGN KEY(courseID) references Course(courseID),
	FOREIGN KEY(studentID) references Users(userID)
);


-- -------------------------------------------------------------------

BULK INSERT Users
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Users.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Section
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Section.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT StudiesIn
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\StudiesIn.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Transcript
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Transcript.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Course
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Course.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Attendance
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Attendance.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Teacher_attendance
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Teacher_attendance.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Feedback
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Feedback.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Evaluation
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Evaluation.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT quiz
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\quiz.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Assign
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Assign.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Sessional
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Sessional.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Project
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Project.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT Final
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\Final.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT lab
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\lab.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT teaches
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\teaches.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);

BULK INSERT studies
FROM 'C:\Users\aliqi\OneDrive\Desktop\Kainat_Ali\studies.txt'
WITH (
    DataFileType = 'widechar',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t'
);
