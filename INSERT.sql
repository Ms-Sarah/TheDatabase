
insert into Users(username, password) values(436036137, 1234);
insert into Users(username, password) values(436007226, 5678);
insert into Users(username, password) values(436004676, 4321);
insert into Users(username, password) values(436018000, 9876);

insert into Employee(ID, username, name, phone, address, gender, type) values(103254, 436036137, 'أصايل علي الزهراني', 05928600, 'الشوقية', 'أثنى', 'مشرفه');
insert into Employee(ID, username, name, phone, address, gender, type) values(769801, 436007226, 'غيداء فيصل الحازمي', 0554589171, 'العمرة', 'أثنى', 'موظفة المقصف');

insert into Guardian(ID, username, name, phone, address, gender) values(113254, 436004676, 'ساره مبارك اللحياني', 0544707604, 'عين شمس', 'أثنى');
insert into Guardian(ID, username, name, phone, address, gender) values(223451, 436018000, 'شيماء نادر الحربي', 0545944165, 'النوارية', 'أثنى');

insert into Student(ID, G_ID, name, class, grop, gender, balance) values(6137,113254, 'لينه أسامة اللحياني', 'سادس', 'أ', 'أثنى', 100);
insert into Student(ID, G_ID, name, class, grop, gender, balance) values(7226,113254, 'بتول أحمد الحربي', 'خامس', 'ب', 'أثنى', 150);

insert into TagStudent(RFIDtag, ID) values(1111,6137);
insert into TagStudent(RFIDtag, ID) values(2222,7226);

insert into Reader1(ID, RFIDtag) values(1,1111);
insert into Reader1(ID, RFIDtag) values(2,2222);

insert into Excuse(R_ID, reason) values(1, 'مرض');
insert into Excuse(R_ID, reason) values(2, 'سفر');

insert into Reader2(ID, RFIDtag) values(9,1111);
insert into Reader2(ID, RFIDtag) values(8,2222);

insert into Pay(R_ID, value) values(9, 10);
insert into Pay(R_ID, value) values(8, 15);

insert into Dismissal(S_ID, reason, name, N_ID, relation) values(6137, 'ظرف', 'حسان', 123456, 'أخ');
insert into Dismissal(S_ID, reason, name, N_ID, relation) values(7226, 'مطر', 'سامر', 987654, 'أخ');

insert into Receipt(S_ID, maxlimit) values(6137, 5);
insert into Receipt(S_ID, maxlimit) values(7226, 5);
