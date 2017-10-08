-- <Migration ID="e6a28c65-8e06-4cf9-90ff-3a3184fe4a2a" />
GO

PRINT N'Altering [dbo].[Profile]'
GO
ALTER TABLE [dbo].[Profile] ADD
[LastLoginDate] [datetime] NOT NULL CONSTRAINT [DF_Profile_LastLoginDate] DEFAULT (getdate())
GO
