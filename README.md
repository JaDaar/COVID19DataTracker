# COVID-19 DATA.Track

<u>Developer</u>: [Jeffrey Hamlin](jeffrey.hamlin@gmail.com)

### Introduction

Coronavirus began in November 2019 in Hubei Province of Wuhan China.  It went largely ignored, until around early January 2020 when China admitted they had a mild new outbreak.  I was reminded of SARS but didn't pay too much attention, it was in China a world away.

The evening news didn't really mention it until mid to late January, and somewhat in passing with increasing infection rates.  We were focused on the Super Bowl, or I was and PEPFAR COP20 release.

Now COVID-19 has spread to Europe, Africa, South America, North America with over 600,000 infected and more than 31,000 dead.  

My name is Jeff Hamlin, I am a web developer working for the Government, and my specialty is developing solutions in C#, Angular and any SQL engine but I really like SQL Server.  I decided to develop this project because of the COVID-19 outbreak.  There are a lot of projects in this realm, most quite helpful to people during this crisis.  Some, are vectors for virus or malware.  This initial implementation is simply to develop a platform for data in a relational model.

I knew I should have started logging the data changes but kept procrastinating, so now I have created this project which will collect data from the [Johns Hopkins Coronavirus Resource Center](https://coronavirus.jhu.edu/map.html) as well as data from the [New York Times USA Map](https://www.nytimes.com/interactive/2020/us/coronavirus-us-cases.html).  I am amazed in these times with the reputations of these two places in the reporting variances of the data.

Everyone has seen the [Johns Hopkins Coronavirus Resource Center](https://coronavirus.jhu.edu/map.html) - it has been on TV, etc.



![image-20200329102724520](C:\Users\jeffh\AppData\Roaming\Typora\typora-user-images\image-20200329102724520.png)



The  [New York Times USA Map](https://www.nytimes.com/interactive/2020/us/coronavirus-us-cases.html) is not as well known, but has great visualization for the USA.  They do have a [world map](https://www.nytimes.com/interactive/2020/world/coronavirus-maps.html), but it's data source is the Johns Hopkins data.

![image-20200329102837426](C:\Users\jeffh\AppData\Roaming\Typora\typora-user-images\image-20200329102837426.png)

In either case, their native data format in their github repo is stored as CSV files, and I am transitioning that into a SQL Server database which can be reloaded with the daily changes.



### Project Resources

| Resource                                                     | Repository                                 |
| ------------------------------------------------------------ | ------------------------------------------ |
| [Johns Hopkins Coronavirus Resource Center](https://coronavirus.jhu.edu/map.html) | https://github.com/CSSEGISandData/COVID-19 |
| [New York Times USA Map](https://www.nytimes.com/interactive/2020/us/coronavirus-us-cases.html) | https://github.com/nytimes/covid-19-data   |



### New York Times Raw Data

| **us-states.csv** | Contains infection cases & deaths by State and date - updated daily |
| ----------------- | ------------------------------------------------------------ |
| **us-counties**   | Contains infection cases & deaths by County/State and date - updated daily |

After the above two files have been imported, the target import table names should be:

1.) **[dbo].[us-states]**

2.) **[dbo].[us-counties]**

I have created 5 scripts which are to be executed based on their name which indicates the sequence of execution. 



| **SQL Filename** | Description                                                  | Detail                                                 |
| ---------------- | ------------------------------------------------------------ | ------------------------------------------------------ |
| **Step 1.sql**   | Deletes, then creates the tables that will store the data in a relational fashion.  Those tables are |                                                        |
|                  | DEV.US_COUNTY_TRACKING                                       | Stores daily infection data and deaths by state/county |
|                  | DEV.US_STATES_TRACKING                                       | Stores daily infection data and deaths by state        |
|                  | DEV.STATES                                                   | List of states/FIPS and territories                    |
|                  | DEV.COUNTY                                                   | List of all US counties and FIPS                       |
| **Step 2.sql**   | **Populate the DEV.STATES Reference Table**                  |                                                        |
| **Step 3.sql**   | **Populate the infection tracking table DEV.US_STATES_TRACKING with data from the [dbo].[us-states]** |                                                        |
| **Step 4.sql**   | **Populate the DEV.COUNTY Reference Table**                  |                                                        |
| **Step 5.sql**   | **Populate the infection tracking table DEV.US_COUNTY_TRACKING with data from the [dbo].[us-counties]** |                                                        |

Upon completion, metrics can be drawn:

```
(SELECT S.STATE_NM,MAX(U.CASES) CURRENTCASES,MAX(U.DEATHS) CURRENTDEATHS 
FROM DEV.US_STATES_TRACKING U JOIN DEV.STATES S ON S.STATEID=U.STATEID AND S.ISASTATE=1
GROUP BY S.STATE_NM)
ORDER BY S.STATE_NM ASC
```

This will produce:

| STATE_NM | CURRENTCASES | CURRENTDEATHS |
| -------- | ------------ | ------------- |
| Alabama  | 720          | 4             |
| Alaska   | 102          | 1             |



