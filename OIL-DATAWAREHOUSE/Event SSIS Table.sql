use [OIL-DATAWAREHOUSE];

create table event_ssis(Id int identity, PackageName varchar(100), TaskName varchar(100), Step varchar(50), Dated datetime)

select * from event_ssis;