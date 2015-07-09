drop database if exists frequenzauktion;

create database if not exists frequenzauktion;

use frequenzauktion;

drop table if exists frequenzauktion2015;

create table if not exists frequenzauktion2015
(
	id int not null auto_increment,
	date datetime,
	runde int(11),	
	frequenzbereich char(50),	
	ausstattung  char(50),	
	block char(50),	
	hoechstbieter char(50),	
	hoechstgebot int(11),	
	primary key (id)
) engine=InnoDB default charset=utf8;

drop table if exists mindestgebote2015;

create table if not exists mindestgebote2015
(
	block char(50),	
	mindestgebot int(11),	
	primary key (block)
) engine=InnoDB default charset=utf8;

insert into mindestgebote2015 (block, mindestgebot) 
values
('700 A', 75000),
('700 B', 75000),
('700 C', 75000),
('700 D', 75000),
('700 E', 75000),
('700 F', 75000),
('900 A', 75000),
('900 B', 75000),
('900 C', 75000),
('900 D', 75000),
('900 E', 75000),
('900 F', 75000),
('900 G', 75000),
('1800 A', 37500),
('1800 B', 37500),
('1800 C', 37500),
('1800 D', 37500),
('1800 E', 37500),
('1800 F', 37500),
('1800 G', 37500),
('1800 H', 37500),
('1800 I', 37500),
('1800 J', 37500),
('1500 A', 18750),
('1500 B', 18750),
('1500 C', 18750),
('1500 D', 18750),
('1500 E', 18750),
('1500 F', 18750),
('1500 G', 18750),
('1500 H', 18750)
