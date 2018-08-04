IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ssbcloud\jlouviere')
CREATE LOGIN [ssbcloud\jlouviere] FROM WINDOWS
GO
CREATE USER [ssbcloud\jlouviere] FOR LOGIN [ssbcloud\jlouviere] WITH DEFAULT_SCHEMA=[ssbcloud\jlouviere]
GO
REVOKE CONNECT TO [ssbcloud\jlouviere]
