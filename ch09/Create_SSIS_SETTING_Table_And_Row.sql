CREATE TABLE [dbo].[SSIS_SETTING] (
	[PACKAGE_ID] [uniqueidentifier] NOT NULL,
	[SETTING] [nvarchar](2080) NOT NULL,
	[VALUE] [nvarchar](2080) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO SSIS_SETTING
SELECT 'A1057DF3-709F-451F-B15F-4C9B853F7869', 'LOGFILEPATH', 'D:\ProSSIS\ch09\myLogFile.txt'