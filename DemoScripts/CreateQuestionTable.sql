/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2016
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [ACMEDb]
GO

/****** Object:  Table [dbo].[Question]    Script Date: 10/7/2017 10:07:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Question](
	[ID] [INT] NOT NULL,
	[ProfileID] [INT] NOT NULL,
	[Question] [NVARCHAR](2048) NOT NULL,
	[Answer] [NVARCHAR](2048) NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Profile] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profile] ([ID])
GO

ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Profile]
GO


