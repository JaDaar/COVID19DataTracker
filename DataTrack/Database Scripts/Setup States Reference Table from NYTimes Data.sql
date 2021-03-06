USE COVID19
GO


BEGIN TRANSACTION
INSERT INTO DEV.STATES
(STATE_NM) SELECT DISTINCT state FROM [COVID19].[dbo].[us-states] ORDER BY 1 ASC
SELECT * FROM DEV.STATES order by state_nm asc

--COMMIT

--ROLLBACK
--DBCC CHECKIDENT ('DEV.STATES', RESEED,0)
BEGIN TRANSACTION
UPDATE DEV.STATES SET ISASTATE=1
UPDATE DEV.STATES SET ISASTATE=0 WHERE STATE_NM IN
	('District of Columbia', 'Guam','Puerto Rico','Virgin Islands')

	SELECT * FROM DEV.STATES WHERE ISASTATE=0
	SELECT * FROM DEV.STATES WHERE ISASTATE=1
COMMIT
commit
--ROLLBACK