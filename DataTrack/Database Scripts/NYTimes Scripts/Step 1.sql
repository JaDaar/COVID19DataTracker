USE COVID19
GO


--CREATE SCHEMA DEV
--GO
IF OBJECT_ID('DEV.US_COUNTY_TRACKING', 'U') IS NOT NULL
  DROP TABLE DEV.US_COUNTY_TRACKING
GO
IF OBJECT_ID('DEV.COUNTY', 'U') IS NOT NULL
  DROP TABLE DEV.COUNTY
GO
IF OBJECT_ID('DEV.US_STATES_TRACKING', 'U') IS NOT NULL
  DROP TABLE DEV.US_STATES_TRACKING
GO
IF OBJECT_ID('DEV.STATES', 'U') IS NOT NULL
  DROP TABLE DEV.STATES
GO
CREATE TABLE DEV.STATES(
STATEID INT NOT NULL IDENTITY,CONSTRAINT PK_STATES PRIMARY KEY CLUSTERED (STATEID),
STATE_NM VARCHAR(100) NOT NULL,
ISASTATE BIT  NULL
)


CREATE TABLE DEV.US_STATES_TRACKING(
RECORDID INT NOT NULL IDENTITY ,CONSTRAINT PK_RECORD PRIMARY KEY CLUSTERED (RECORDID),
STATEID INT NOT NULL ,
DATE DATETIME2 NOT NULL,
CASES INT NOT NULL,
DEATHS INT NOT NULL,
FIPS INT NOT NULL,
 CONSTRAINT FK_StatesToStates FOREIGN KEY (STATEID)
        REFERENCES DEV.STATES (STATEID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)


CREATE TABLE DEV.COUNTY(
COUNTIEID INT NOT NULL IDENTITY ,CONSTRAINT PK_COUNTY PRIMARY KEY CLUSTERED (COUNTIEID),
STATEID INT NULL,
STATE_NM VARCHAR(100) NULL,
COUNTY_NM VARCHAR(100) NOT NULL,
 CONSTRAINT FK_StatesToCounties FOREIGN KEY (STATEID)
        REFERENCES DEV.STATES (STATEID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE TABLE DEV.US_COUNTY_TRACKING(
RECORDID INT NOT NULL IDENTITY ,CONSTRAINT PK_RECORDCTracking PRIMARY KEY CLUSTERED (RECORDID),
COUNTIEID INT NULL ,
STATEID INT NULL,
COUNTY_NM VARCHAR(100) NOT NULL,
STATE_NM VARCHAR(100) NOT NULL,
DATE DATETIME2 NOT NULL,
CASES INT NOT NULL,
DEATHS INT NOT NULL,
FIPS INT NOT NULL,
 --CONSTRAINT FK_CountyStateToStates FOREIGN KEY (STATEID)
 --       REFERENCES DEV.STATES (STATEID)
 --       ON DELETE CASCADE
 --       ON UPDATE CASCADE,
 --CONSTRAINT FK_CountyCountyToCounty FOREIGN KEY (COUNTIEID)
 --       REFERENCES DEV.COUNTY (COUNTIEID)
 --       ON DELETE CASCADE
 --       ON UPDATE CASCADE
)
