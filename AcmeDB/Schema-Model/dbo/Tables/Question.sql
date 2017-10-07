CREATE TABLE [dbo].[Question]
(
[ID] [int] NOT NULL,
[ProfileID] [int] NOT NULL,
[Question] [nvarchar] (2048) NOT NULL,
[Answer] [nvarchar] (2048) NULL
)
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED  ([ID])
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Question_Profile] FOREIGN KEY ([ProfileID]) REFERENCES [dbo].[Profile] ([ID])
GO
