USE COVID19
GO

TRUNCATE TABLE DEV.US_COUNTY_TRACKING
DBCC CHECKIDENT ('DEV.US_COUNTY_TRACKING', RESEED,0)

DECLARE @STATE VARCHAR(100)='Alabama'
begin transaction
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC

SET @STATE='Alaska'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC

SET @STATE='Arizona'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC

SET @STATE='Arkansas'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='California'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Colorado'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Connecticut'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Delaware'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='District of Columbia'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Florida'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Georgia'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Guam'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Hawaii'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Idaho'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Illinois'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Indiana'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Iowa'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Kansas'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Kentucky'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Louisiana'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Maine'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Maryland'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Massachusetts'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Michigan'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Minnesota'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Mississippi'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Missouri'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Montana'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Nebraska'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Nevada'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='New Hampshire'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='New Jersey'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='New Mexico'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='New York'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='North Carolina'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='North Dakota'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Ohio'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Oklahoma'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Oregon'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Pennsylvania'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Puerto Rico'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Rhode Island'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='South Carolina'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='South Dakota'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Tennessee'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC

SET @STATE='Texas'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Utah'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Vermont'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Virgin Islands'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Virginia'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Washington'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='West Virginia'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Wisconsin'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC


SET @STATE='Wyoming'
insert into DEV.US_COUNTY_TRACKING
(
	COUNTIEID, 
	STATEID,DATE,CASES,DEATHS,FIPS,COUNTY_NM,STATE_NM)
select 
	dc.COUNTIEID,
	dc.STATEID, 
	usc.date,usc.cases,usc.deaths, usc.fips,dc.COUNTY_NM,dc.STATE_NM from 
dev.county dc inner join [us-counties] usc on usc.county=dc.COUNTY_NM and usc.state=dc.STATE_NM
where dc.STATE_NM=@STATE
SELECT * FROM DEV.US_COUNTY_TRACKING WHERE STATE_NM=@STATE ORDER BY COUNTY_NM ASC

COMMIT

ALTER TABLE DEV.US_COUNTY_TRACKING DROP COLUMN COUNTY_NM
GO
ALTER TABLE DEV.US_COUNTY_TRACKING DROP COLUMN STATE_NM
GO


--ROLLBACK
