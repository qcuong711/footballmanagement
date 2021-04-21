create database hanoifc;
use	hanoifc;

create table player(
	kit_number int(2) not null primary key,
  player_name char(50),
  nationality char(50),
  player_position char(30),
  salary char(20),
	new_signed_contract date
);

create table coaching_staff(
	staff_id char(30) not null primary key,
  staff_name char(50),
  nationality char(50),
	staff_position char(30),
  salary char(50),
  new_signed_contract date
);


create table sponsor(
	sponsor_name char(50) not null primary key,
  contract_value char(50),
  duration int(2),
  note char(50)
);

create table activity_log(
	activity char(200),
  etad char(50)
);


insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (02, 'Nguyễn Đại Đồng', 'Việt Nam', 'Defender', '30.000.000', '2018-10-27');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (04, 'Nguyễn Văn Dũng', 'Việt Nam', 'Defender', '25.000.000', '2018-01-20');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (06, 'Đậu Văn Toàn', 'Việt Nam', 'Midfielder', '23.000.000', '2019-01-22');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (07, 'Mạch Ngọc Hà', 'Việt Nam', 'Midfielder', '27.500.000', '2017-03-22');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (08, 'Moses Oloya', 'Republic of Uganda', 'Midfielder', '40.000.000', '2018-10-27');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (10, 'Nguyễn Văn Quyết (C)', 'Việt Nam', 'Foward', '43.000.000', '2019-7-27');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (11, 'Phạm Thành Lương', 'Việt Nam', 'Midfielder', '33.000.000', '2015-04-05');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (13, 'Trần Văn Kiên', 'Việt Nam', 'Defender', '30.000.000', '2019-01-22');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (15, 'Phạm Đức Huy', 'Việt Nam', 'Midfielder', '31.000.000', '2019-01-22');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (16, 'Nguyễn Thành Chung', 'Việt Nam', 'Defender', '35.000.000', '2016-05-15');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (18, 'Đinh Tiến Thành', 'Việt Nam', 'Defender', '35.000.000', '2016-01-24');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (19, 'Nguyễn Quang Hải', 'Việt Nam', 'Midfielder', '47.000.000', '2018-06-26');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (20, 'Pape Omar Faye', 'Việt Nam', 'Foward', '45.000.000', '2017-10-30');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (21, 'Trần Đình Trọng', 'Việt Nam', 'Defender', '35.000.000', '2019-01-15');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (22, 'Nguyễn Như Tuấn', 'Việt Nam', 'Midfielder', '30.000.000', '2017-02-28');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (26, 'Nguyễn Tuấn Anh', 'Việt Nam', 'Midfielder', '25.000.000', '2018-02-14');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (28, 'Đỗ Duy Mạnh', 'Việt Nam', 'Defender', '35.000.000', '2019-01-22');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (29, 'Ngân Văn Đại', 'Việt Nam', 'Defender', '29.000.000', '2018-08-08');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (30, 'Nguyễn Văn Công', 'Việt Nam', 'Goalkeeper', '25.000.000', '2016-10-09');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (33, 'Phí Minh Long', 'Việt Nam', 'Goalkeeper', '25.000.000', '2016-10-09');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (36, 'Bùi Tiến Dũng', 'Việt Nam', 'Goalkeeper', '25.000.000', '2019-05-03');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (38, 'Papa Ibou Kébé', 'France', 'Defender', '20.000.000', '2019-03-12');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (72, 'Phạm Văn Nam', 'Việt Nam', 'Goalkeeper', '25.000.000', '2019-7-27');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (74, 'Trương Văn Thái Quý', 'Việt Nam', 'Midfielder', '33.000.000', '2016-10-09');
insert into player(kit_number, player_name,nationality, player_position, salary, new_signed_contract ) values (88, 'Đỗ Hùng Dũng', 'Việt Nam', 'Midfielder', '40.000.000', '2018-12-12');

insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C1', 'Nguyễn Trọng Chiến','Việt Nam','President','*','2015-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C2', 'Nguyễn Quốc Tuấn','Việt Nam','Vice president','75.000.000','2017-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C3', 'Chu Đình Nghiêm','Việt Nam','Coach','44.000.000','2019-03-25');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C4', 'Văn Sỹ Sơn','Việt Nam','Assistant','30.000.000','2017-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C5', 'Nguyễn Tiến Dũng','Việt Nam','Assistant','30.000.000','2017-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C6', 'Trần Tiến Anh','Việt Nam','GK coach','30.000.000','2018-03-23');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C7', 'Nguyễn Công Tuấn','Việt Nam','Translator','28.000.000','2017-06-22');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('C9', 'Nguyễn Đức Thiện','Việt Nam','Team doctor','30.000.000','2017-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('CA', 'Vũ Thành Luân','Việt Nam','Team doctor','30.000.000','2017-10-08');
insert into coaching_staff(staff_id,staff_name, nationality,staff_position,salary,new_signed_contract ) values ('CB', 'Trần Văn Bình','Việt Nam','Team doctor','30.000.000','2017-10-08');

insert into sponsor(sponsor_name, contract_value, duration,note) values ('Kappa','5.000.000.000','5','Kit logo');
insert into sponsor(sponsor_name, contract_value, duration,note) values ('The Siam Cement Group','4.000.000.000','2','Main club sponsor');
insert into sponsor(sponsor_name, contract_value, duration,note) values ('Yamar','300.000.000','1','Club sponsor');
insert into sponsor(sponsor_name, contract_value, duration,note) values ('Sony','1.300.000.000','3','Club sponsor');
insert into sponsor(sponsor_name, contract_value, duration,note) values ('Bảo Hiểm BSH Hà Nội','1.000.000.000','2','Club sponsor');
insert into sponsor(sponsor_name, contract_value, duration,note) values ('T&T Group','8.000.000.000','7','Club sponsor');
