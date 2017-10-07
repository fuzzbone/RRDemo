-- <Migration ID="1c0856df-a351-48e0-acb0-6ded1cd4b104" />
GO

PRINT N'Creating [dbo].[Question]'
GO
CREATE TABLE [dbo].[Question]
(
[ID] [int] NOT NULL,
[ProfileID] [int] NOT NULL,
[Question] [nvarchar] (2048) NOT NULL,
[Answer] [nvarchar] (2048) NULL
)
GO
PRINT N'Creating primary key [PK_Question] on [dbo].[Question]'
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED  ([ID])
GO
PRINT N'Adding foreign keys to [dbo].[Question]'
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Question_Profile] FOREIGN KEY ([ProfileID]) REFERENCES [dbo].[Profile] ([ID])
GO
