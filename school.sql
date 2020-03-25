-- جدول مستخدمين النظام
create table SuperUser(
username int  not null,
password int  not null,
primary key(username)
);

-- جدول الموظفين
create table Employee(
username int not null,
password int not null,
job_no int not null,
name varchar(255) not null,
phone int not null,
address varchar(255) not null,
picture varchar(500),
role ENUM ('مشرفه', 'موظفة المقصف') not null,
primary key(username),
);

-- جدول أولياء الأمور
-- ID هنا هو رقم الهوية
create table Guardian(
username int not null,
password int  not null,
ID int not null,
name varchar(255) not null,
phone int not null,
address varchar(255) not null,
picture varchar(500),
primary key(username),
);

-- جدول الطلاب
-- ID هنا هو رقم الهوية
create table Student(
ID int not null,
G_ID int not null,
name varchar(255) not null,
class ENUM ('سادس', 'خامس','رابع') not null,
grop ENUM ('أ', 'ب') not null,
picture varchar(500),
balance float not null,
primary key(ID),
Foreign key(G_ID) references Guardian(username)
);

-- جدول التاق المرتبط بالطالب
create table TagStudent(
RFIDtag int not null,
ID int not null,
primary key(RFIDtag),
Foreign key(ID) references Student(ID)
);

-- جدول الريدر الأول
create table Reader1(
ID int not null,
R_ID int not null,
RFIDtag int not null,
time timestamp not null,
status ENUM ('مقبول', 'مرفوض'),
primary key(ID),
Foreign key(RFIDtag) references TagStudent(RFIDtag)
);

-- جدول الأعذار
create table Excuse(
ID int not null auto_increment,
R_ID int not null,
reason  varchar(255) not null,
picture varchar(500),
status ENUM ('مقبول', 'مرفوض'),
primary key(ID),
Foreign key(R_ID) references Reader1(ID)
);

-- جدول الريدر ٢
create table Reader2(
ID int not null,
RFIDtag int not null,
time timestamp not null,
primary key(ID),
Foreign key(RFIDtag) references TagStudent(RFIDtag)
);

-- جدول عملية الدفع
create table Pay(
ID int not null auto_increment,
R_ID int not null,
value  float not null,
status ENUM ('مقبول', 'مرفوض'),
primary key(ID),
Foreign key(R_ID) references Reader2(ID)
);

-- جدول الاستئذان
create table Dismissal(
ID int not null auto_increment,
S_ID int not null,
reason  varchar(255) not null,
name varchar(255) not null,
N_ID int not null,
relation varchar(255) not null,
status ENUM ('مقبول', 'مرفوض'),
primary key(ID),
Foreign key(S_ID) references Student(ID)
);

-- جدول الإيصال
create table Receipt(
ID int not null auto_increment,
S_ID int not null,
maxlimit int not null,
picture varchar(500),
status ENUM ('مقبول', 'مرفوض'),
primary key(ID),
Foreign key(S_ID) references Student(ID)
);
