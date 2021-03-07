--creation de la base de donnée
create database ProjetAPI;
-- ouverture de la base de données
use ProjetAPI;

-----------------------------------------------------------------------------------
--creation de la table general 
create table CoinMarketCap
(
id  int identity not null,
id_CoinMarketCap char(80),
name char(80),
symbol char(80),
slug char(80) ,
num_market_pairs char(80) ,
date_added char(80) ,
max_supply char(80) ,
circulating_supply char(80),
total_supply char(80) ,
cmc_rank char(80) ,
last_updated char(80),
constraint pk_id primary key (id)
)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table Change
(
id_Change int identity not null,
id int,
price char(80) ,
volume_24h char(80),
percent_change_1h char(80) ,
percent_change_24h char(80),
percent_change_7d char(80) ,
market_cap char(80),
last_updated char(80),
constraint pk_id_Change primary key (id_Change),
constraint fk_Change foreign key (id) references CoinMarketcap(id)
)

--------------------------------------------------------------------------------
 --table,platform
 create table Platform
(
id_Platform int identity not null,
id int,
name char(100) ,
symbol char(100),
slug char(100) ,
token_address char(100),
constraint pk_id_Platform primary key (id_Platform),
constraint fk_Platform foreign key (id) references CoinMarketcap(id)
)
---------------------------------------------------------------------------------




--REQUETTES
------------------------
select name, price from Change, CoinMarketCap 
--------------------------------------------------------------------------------
select distinct CoinMarketCap.id, id_Platform, id_Change 
from Change, Platform, CoinMarketCap 
where id_Change=id_Platform
-------------------------------------------------------------------------------
select CoinMarketCap.id, id_Change, id_Platform 
from Platform, CoinMarketCap, Change 
where CoinMarketCap.id= Change.id and CoinMarketCap.id=Platform.id
-------------------------------------------------------------------------------

---delete data table
delete from CoinMarketCap
delete from Change
delete from Platform
---------------------------------------------------------------------------------
----drop table
  drop table Platform
  drop table Change
  drop table CoinMarketCap
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
----select data table
select* from CoinMarketCap
select*from Change
select*from Platform

------------------------------------------------------------------------------------

select name, price
-------------------------------------------------------------------------------------
--verifier le doublons de id_CoinMarquetCap
SELECT id_CoinMarketCap, COUNT(*) AS count FROM CoinMarketCap GROUP BY id_CoinMarketCap ORDER BY count DESC
--verifier les nom de CoinMarketCap où id---=1
select name,id_CoinMarketCap from CoinMarketCap where id_CoinMarketCap=1





 select*from Change
---------------------------------------------------------------------------------

--------------------------------------------------------------------------------
----Alter table
ALTER TABLE Platform
ALTER COLUMN token_address char(80)

---Change table
----------------------------------------------------------------------------------
drop table CoinMarketCap
delete from CoinMarketCap
ALTER TABLE  CoinMarketCap ALTER COLUMN id char(80)
ALTER TABLE  CoinMarketCap ALTER COLUMN symbol char(80)

-----------------------------------------------------------------------------------







--TABLE DE TEST
create table t
(
inte int identity not null,
a char (90),
name char (90),
constraint pk_inte primary key (inte)
)
insert into  t (a) values ('nankuta')
delete from t
-----------------------------------------------------------------------------------







--------------------------------------------------------------------------------
--creation de la table general 
create table general
(
id_general int identity not null,
id int,
name char(40),
symbol char(40),
slug char(40) ,
num_market_pairs char(40) ,
date_added char(40) ,
max_supply char(40) ,
circulating_supply char(40),
total_supply char(40) ,
cmc_rank char(40) ,
last_updated char(80),
constraint pk_id_general primary key (id_general)
)

--INSERT
insert into general ( id, name, symbol, slug ) values ( '1', 'Bitcoin', 'BTC', 'bitcoin');

create table data_general
(
id_data_general int identity not null,
id int,
name char(40),
symbol char(40),
slug char(40) ,
num_market_pairs char(40) ,
date_added char(40) ,
max_supply char(40) ,
circulating_supply char(40),
total_supply char(40) ,
cmc_rank char(40) ,
last_updated char(80),
constraint pk_id_data_general primary key (id_data_general)
)

insert into data_general ( id, name, symbol, slug, num_market_pairs, date_added, max_supply, circulating_supply, total_supply, cmc_rank, last_updated ) values ( '1027', 'Ethereum', 'ETH', 'ethereum', '5908', '2015-08-07T00:00:00.000Z', 'None', '113957065.0615', '113957065.0615', '2', '2020-12-24T00:44:02.000Z' );



--ALTER
drop table data_general
ALTER TABLE data_general ALTER COLUMN num_market_pairs char(40)
ALTER TABLE data_general ALTER COLUMN max_supply char(40)
ALTER TABLE data_general ALTER COLUMN total_supply char(40)
ALTER TABLE data_general ALTER COLUMN cmc_rank char(40)



insert into Platform ( id, name, symbol, slug, token_address ) values ( '1027', 'Ethereum', 'ETH', 'ethereum', '0xdac17f958d2ee523a2206206994597c13d831ec7' );