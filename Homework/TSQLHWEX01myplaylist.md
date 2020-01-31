# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** *TSQL HW EX01*
## **Date:** January 20, 2020
~~~
.headers on
--Name: myplaylist.sql
--Author: Daniel Thompson
--Assignment: TSQL HW EX01
--Date: January 20, 2020

drop table if exists myplaylist;

create table myplaylist (
  trackid integer primary key,
  artist text,
  tracktitle text,
  genre text,
  recordlabel text,
  released text
);

insert into myplaylist values (000,'Lala Hathaway','Angel','RnB','eOne Music','2015-08-07');
insert into myplaylist values (001,'Joe Sample','When Your Life Was Low','Jazz','Bad Dog/PRA Records','2016-12-16');
insert into myplaylist values (002,'Lala Hathaway','Im Coming Back','RnB','Stax','2011-10-18');
insert into myplaylist values (003,'Leela James','Fall For You','Soul','Sony Music','2014-07-08');
insert into myplaylist values (004,'AJ Tracey','Kiss and Tell','Hip-Hop','Boy Better Know','2019-10-31');
insert into myplaylist values (005,'Popcaan','Firm and Strong','Dancehall','Mixpak Records','2018-06-25');
insert into myplaylist values (006,'Ritchie Spice','Gideon Boot','Reggae','VP Records','2008-05-13');
insert into myplaylist values (007,'Ritchie Spice','A No Me Dat','Reggae','Cousins','2008-03-11');
insert into myplaylist values (008,'Pitbull','Options','Pop','RCA Records','2017-02-16');
insert into myplaylist values (009,'Bob Marley','Redemption Song','Folk','Tuff Gong','1980-06-10');

select * from myplaylist;
trackid|artist|tracktitle|genre|recordlabel|released
0|Lala Hathaway|Angel|RnB|eOne Music|2015-08-07
1|Joe Sample|When Your Life Was Low|Jazz|Bad Dog/PRA Records|2016-12-16
2|Lala Hathaway|Im Coming Back|RnB|Stax|2011-10-18
3|Leela James|Fall For You|Soul|Sony Music|2014-07-08
4|AJ Tracey|Kiss and Tell|Hip-Hop|Boy Better Know|2019-10-31
5|Popcaan|Firm and Strong|Dancehall|Mixpak Records|2018-06-25
6|Ritchie Spice|Gideon Boot|Reggae|VP Records|2008-05-13
7|Ritchie Spice|A No Me Dat|Reggae|Cousins|2008-03-11
8|Pitbull|Options|Pop|RCA Records|2017-02-16
9|Bob Marley|Redemption Song|Folk|Tuff Gong|1980-06-10
select artist from myplaylist;
artist
Lala Hathaway
Joe Sample
Lala Hathaway
Leela James
AJ Tracey
Popcaan
Ritchie Spice
Ritchie Spice
Pitbull
Bob Marley
select * from myplaylist where artist like 'Lala Hathaway';
trackid|artist|tracktitle|genre|recordlabel|released
0|Lala Hathaway|Angel|RnB|eOne Music|2015-08-07
2|Lala Hathaway|Im Coming Back|RnB|Stax|2011-10-18
select trackid, artist, tracktitle from myplaylist where genre like 'Reggae';
trackid|artist|tracktitle
6|Ritchie Spice|Gideon Boot
7|Ritchie Spice|A No Me Dat
select * from myplaylist where released like '2018-06-25';
trackid|artist|tracktitle|genre|recordlabel|released
5|Popcaan|Firm and Strong|Dancehall|Mixpak Records|2018-06-25
select artist, tracktitle from myplaylist where trackid = 004;
artist|tracktitle
AJ Tracey|Kiss and Tell
~~~
