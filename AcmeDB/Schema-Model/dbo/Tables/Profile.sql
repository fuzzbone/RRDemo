CREATE TABLE [dbo].[Profile]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (max) NULL,
[LastName] [nvarchar] (max) NULL,
[Password] [nvarchar] (max) NULL,
[UserID] [nvarchar] (max) NULL
)
GO
ALTER TABLE [dbo].[Profile] ADD CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED  ([ID])
GO
