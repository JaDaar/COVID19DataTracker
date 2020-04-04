USE COVID19
GO


TRUNCATE TABLE INTL.PROVINCES
DBCC CHECKIDENT ('INTL.PROVINCES', RESEED,0)

BEGIN TRANSACTION
INSERT INTO [COVID19].[INTL].[PROVINCES] (PROVINCE_NM, COUNTRY_NM)
SELECT PROVINCE_STATE, COUNTRY_REGION FROM DBO.[03-30-2020] WHERE COUNTRY_REGION <>'US' AND PROVINCE_STATE <>''
  ORDER BY COUNTRY_REGION,PROVINCE_STATE ASC


SELECT * FROM [COVID19].[INTL].[PROVINCES]
COMMIT