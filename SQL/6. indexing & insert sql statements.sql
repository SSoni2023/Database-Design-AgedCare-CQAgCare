#indexing:

CREATE INDEX resident_index ON resident (fullname,phone);

CREATE INDEX externalstaff_index ON externalstaff (fullname,phone);

CREATE INDEX staff_index ON staff (fullname,phone);

#insert data:
#resident

insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(1,'Andrew Cole','Street: 400 Duncan Avenue, New York','9000-502-93582','1992-04-20');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(2,'Duncan Stewart','Street: 72 Crosswind Drive, Chicago','9004-592-92993','1964-10-18');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(3,'Lina Alex','Street: 920 Settlers Lane, New York','9252-512-94834','1982-11-29');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(4,'Paul Scholes','Street: 92 Duncan Lane, Houston','9002-518-94832','1991-12-19');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(5,'Frank James','Street: 08 Geraldine Lane, Houston','9992-512-29983','1959-03-01');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(6,'Andy Shaun','Street: 19 Crosswind Lane, New York','9002-512-94833','2000-10-03');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(7,'Paul Ferguson','Bimble Lane, New York','9292-202-94823','1989-03-14');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(8,'Mark Ponting','Street: 20 Crosswind Lane, Chicago','9012-512-95333','1999-04-28');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(9,'Paul Cummins','Street: 99 Settlers Lane, New Jersey','9304-500-92834','1998-09-18');
insert into resident(ResidentID,FullName,Address,Phone,DOB)
values(10,'Patrik Vince','Street: 91 Settlers Lane, New Jersey','9003-511-90821','1994-11-12');

commit;

#Staff

insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(1,'Patrik Larry','Street: 10 Duncan Avenue, New Jersey','1992-10-19','9106-401-80821',1000,'CM');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(2,'Peter Jones','Street: 105 Bimble Lane, Chicago','1988-04-05','9043-511-80101',1500,'CM');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(3,'Eva Jones','Street: 121 Geraldine Lane, Seattle','2002-09-18','9563-567-60845',800,'N');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(4,'Simon Fill','Street: 991 Geraldine Lane, Seattle','1967-11-03','9020-570-53861',600,'N');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(5,'Oscar Finn','Street: 208 Bassel Street, Kentucky','1964-10-16','9004-241-69821',900,'PC');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(6,'Patrik Paul','Street: 205 Bassel Street, Kentucky','2001-08-22','9024-500-83801',1100,'PC');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(7,'Kevin Owen','Street: 13 Duncan Avenue, New Jersey','1994-08-14','9996-301-99861',1200,'CM');
insert into Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(8,'Kevin Peters','Street: 16 Geraldine Lane, Kentucky','1978-01-21','4196-241-90861',1800,'CM');
Staff(StaffID,FullName,Address,DOB,Phone,Salary,StaffType)
values(9,'Steven Alex','Street: 15 Bassel Street, Kentucky','1988-10-12','8396-443-93842',1300,'CM');



commit;

#CareManager

insert into CareManager(CareManagerID,Bonus,YearsOfExperience,StaffID)
values(1,300,8,1);
insert into CareManager(CareManagerID,Bonus,YearsOfExperience,StaffID)
values(2,400,10,2);
insert into CareManager(CareManagerID,Bonus,YearsOfExperience,StaffID)
values(3,200,4,7);
insert into CareManager(CareManagerID,Bonus,YearsOfExperience,StaffID)
values(4,1000,18,8);
CareManager(CareManagerID,Bonus,YearsOfExperience,StaffID)
values(5,600,9,9);


commit;

 #room

insert into Room(RoomID,Type,DailyRental,RoomSize,DateAvailable,RoomPhoto,CareManagerID)
values(100,'Single Bed',50,'12 X 18','2023-05-10',null,1);
insert into Room(RoomID,Type,DailyRental,RoomSize,DateAvailable,RoomPhoto,CareManagerID)
values(101,'Double Bed',80,'22 X 28','2023-05-11',null,2);
insert into Room(RoomID,Type,DailyRental,RoomSize,DateAvailable,RoomPhoto,CareManagerID)
values(102,'Double Bed',80,'22 X 28','2023-05-16',null,3);
insert into Room(RoomID,Type,DailyRental,RoomSize,DateAvailable,RoomPhoto,CareManagerID)
values(103,'Double Bed',70,'22 X 24','2023-05-20',null,4);
Room(RoomID,Type,DailyRental,RoomSize,DateAvailable,RoomPhoto,CareManagerID)
values(104,'Double Bed',70,'22 X 24','2023-05-10',null,5);


commit;

#Care

insert into Care(CareID,ContractStartDate,ContractEndDate,TypeOfCare,RoomID,ResidentID)
values(1,'2023-04-30','2023-05-05','Respite Care',101,4);
insert into Care(CareID,ContractStartDate,ContractEndDate,TypeOfCare,RoomID,ResidentID)
values(2,'2023-05-01','2023-05-03','Nursing',102,5);
insert into Care(CareID,ContractStartDate,ContractEndDate,TypeOfCare,RoomID,ResidentID)
values(3,'2023-05-02','2023-05-04','Respite Care',100,7);
insert into Care(CareID,ContractStartDate,ContractEndDate,TypeOfCare,RoomID,ResidentID)
values(4,'2023-05-10','2023-05-11','Residential Care',103,1);
Care(CareID,ContractStartDate,ContractEndDate,TypeOfCare,RoomID,ResidentID)
values(5,'2019-03-15','2023-05-30','Residential Care',103,10);


commit;

#Application

insert into Application(ApplicationID,SubmittedDate,ProposedDate,Comments,Status,CareNeeds,ResidentID,RoomID)
values(1,'2023-04-18','2023-04-17','N/A','Not Booked','Respite Care',2,103);
insert into Application(ApplicationID,SubmittedDate,ProposedDate,Comments,Status,CareNeeds,ResidentID,RoomID)
values(2,'2023-05-09','2023-05-09','N/A','Booked','Residential Care',7,100);
insert into Application(ApplicationID,SubmittedDate,ProposedDate,Comments,Status,CareNeeds,ResidentID,RoomID)
values(3,'2023-05-02','2023-05-02','N/A','Booked','Respite Care',1,103);

commit;

#ExternalStaff

insert into ExternalStaff(ExternalStaffID,FullName,Address,Phone,TradeLicenceNo,TypeOfTrade,HourlyRate)
values(1,'Paul Ince','Street: 129 Geraldine Lane, Chicago','9816-481-98261',000128,'handyman',5);
insert into ExternalStaff(ExternalStaffID,FullName,Address,Phone,TradeLicenceNo,TypeOfTrade,HourlyRate)
values(2,'Prince Cheryl','Street: 127 Geraldine Lane, Chicago','9813-385-82253',000135,'handyman',10);

commit;

#RepairJob

insert into RepairJob(JobID,JobDetails,CompletionDate,TotalRepairCost,RoomID,ExternalStaffID)
values(1,'Plumbing','2023-05-10',30,103,1);
insert into RepairJob(JobID,JobDetails,CompletionDate,TotalRepairCost,RoomID,ExternalStaffID)
values(2,'Cleaning and repairing Washroom','2023-05-02',15,100,2);

commit;

#Nurses

insert into Nurses(NurseID,EducationLevel,SpecializedIn,StaffID,CareManagerID)
values(1,'Associate degree in nursing','Nurse Anesthetist',3,1);
insert into Nurses(NurseID,EducationLevel,SpecializedIn,StaffID,CareManagerID)
values(2,'Associate degree in nursing','Nurse Practitioner',4,2);

commit;

#PersonalCarer

insert into PersonalCarer(PersonalCarerID,EducationLevel,ShiftHours,StaffID,CareManagerID)
values(1,'high school diploma',8,5,3);
insert into PersonalCarer(PersonalCarerID,EducationLevel,ShiftHours,StaffID,CareManagerID)
values(2,'high school diploma',8,6,4);

commit;