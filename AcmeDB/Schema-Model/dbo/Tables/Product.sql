CREATE TABLE [dbo].[Product]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (max) NULL,
[Price] [decimal] (18, 2) NOT NULL,
[Description] [nvarchar] (max) NULL,
[Image] [nvarchar] (max) NULL
)
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED  ([ID])
GO
