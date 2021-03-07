--creation de la base de donnée
create database COVID19;
-- ouverture de la base de données
use COVID19;

create table Covid19
(
id  int identity not null,
Country char(80),
CountryCode char(80),
Slug char(80),
NewConfirmed char(80) ,
TotalConfirmed char(80) ,
NewRecovered char(80) ,
Date char(80) ,
constraint pk_covid19 primary key (id)
)


delete from Covid19