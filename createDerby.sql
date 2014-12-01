create table identities(id bigint NOT NULL generated always as identity, fullName varchar(50), email varchar(30), birthDate varchar(30))
create table authentication(login varchar(30), password varchar(30)) 

create table identities(id bigint NOT NULL generated always as identity, fullName varchar(50), email varchar(30), birthDate date)
create table authentication(login varchar(30), password varchar(30)) 

select * from IDENTITIES

insert into authentication (login, password) values ('user', 'pwd')

insert into identities (fullName, email, birthDate) values ('John Crichton','test@test','1961-02-11')
insert into identities (fullName, email, birthDate) values ('Jack Harkness','test@test','1912-08-21')
insert into identities (fullName, email, birthDate) values ('Barry Allen','test@test','1987-08-21')
