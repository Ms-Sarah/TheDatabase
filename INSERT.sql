
insert into Employee(username, password, job_no, name, phone, address, role) values(436036137, 1234, 103254, 'أصايل علي الزهراني', 0595928600, 'الشوقية', 'مشرفه');
insert into Employee(username, password, job_no, name, phone, address, role) values(431234567, 6754, 098765, 'سما محمد القحطاني', 0548765490, 'الشرايع', 'موظفة المقصف');
insert into Employee(username, password, job_no, name, phone, address, role) values(436007226, 5678, 769801, 'غيداء فيصل الحازمي', 0554589171, 'العمرة', 'مشرفه');

insert into Guardian(username, password, ID, name, phone, address) values(436016204, 5678, 337689, 'رولا محمد البركاتي', 0509709939, 'أبو عروه');
insert into Guardian(username, password, ID, name, phone, address) values(436004676, 4321, 113254, 'ساره مبارك اللحياني', 0544707604, 'عين شمس');
insert into Guardian(username, password, ID, name, phone, address) values(436018000, 9876, 223451, 'شيماء نادر الحربي', 0545944165, 'النوارية');

insert into Student(ID, username, name, class, grop, balance) values(0439, 436016204, 'مدى عبدالرحمن البركاتي', 'رابع', 'أ', 100);
insert into Student(ID, username, name, class, grop, balance) values(6137, 436004676, 'لينه أسامة اللحياني', 'سادس', 'أ', 100);
insert into Student(ID, username, name, class, grop, balance) values(7226, 436018000, 'بتول أحمد الحربي', 'خامس', 'ب', 150);

insert into TagStudent(RFIDtag, ID) values(3333, 0439);
insert into TagStudent(RFIDtag, ID) values(1111, 6137);
insert into TagStudent(RFIDtag, ID) values(2222, 7226);

insert into Reader1(RFIDtag, status) values(1144, 1);
insert into Reader1(RFIDtag, status) values(1122, 1);
insert into Reader1(RFIDtag, status) values(1133, 1);
insert into Reader1(RFIDtag, status) values(1155, 0);

insert into Excuse(S_ID, reason) values(0439, 'ظرف');
insert into Excuse(S_ID, reason) values(6137, 'مرض');
insert into Excuse(S_ID, reason) values(7226, 'سفر');

insert into Reader2(RFIDtag, status) values(1144, 1);
insert into Reader2(RFIDtag, status) values(1111, 1);
insert into Reader2(RFIDtag, status) values(2222, 1);
insert into Reader2(RFIDtag, status) values(2222, 0);

insert into Pay(S_ID, value) values(0439, 15);
insert into Pay(S_ID, value) values(6137, 10);
insert into Pay(S_ID, value) values(7226, 15);

insert into Dismissal(S_ID, reason, name, N_ID, relation) values(0439, 'ظرف', 'عمر', 876543, 'أخ');
insert into Dismissal(S_ID, reason, name, N_ID, relation) values(6137, 'ظرف', 'حسان', 123456, 'أخ');
insert into Dismissal(S_ID, reason, name, N_ID, relation) values(7226, 'مطر', 'سامر', 987654, 'أخ');

insert into Receipt(S_ID, maxlimit) values(0439, 10);
insert into Receipt(S_ID, maxlimit) values(6137, 5);
insert into Receipt(S_ID, maxlimit) values(7226, 5);
