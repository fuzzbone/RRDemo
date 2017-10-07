-- <Migration ID="2d6a96ca-f8fa-4704-bd6d-b31ed83412bd" />
GO

PRINT N'Creating [dbo].[Product]'
GO
CREATE TABLE [dbo].[Product]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (max) NULL,
[Price] [decimal] (18, 2) NOT NULL,
[Description] [nvarchar] (max) NULL,
[Image] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_Product] on [dbo].[Product]'
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED  ([ID])
GO
PRINT N'Creating [dbo].[GetAllProducts]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProducts] 
as 
begin
	select * from Product
end 
GO
PRINT N'Creating [dbo].[GetProductsByID]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductsByID] 
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Product p
	where p.ID = @ID
END
GO
PRINT N'Creating [dbo].[CartItem]'
GO
CREATE TABLE [dbo].[CartItem]
(
[ProfileID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[Quantity] [int] NOT NULL
)
GO
PRINT N'Creating primary key [PK_CartItem] on [dbo].[CartItem]'
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED  ([ProfileID], [ProductID])
GO
PRINT N'Creating [dbo].[Profile]'
GO
CREATE TABLE [dbo].[Profile]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (max) NULL,
[LastName] [nvarchar] (max) NULL,
[Password] [nvarchar] (max) NULL,
[UserID] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_Profile] on [dbo].[Profile]'
GO
ALTER TABLE [dbo].[Profile] ADD CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED  ([ID])
GO
PRINT N'Adding foreign keys to [dbo].[CartItem]'
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [FK_CartItem_Profile_ProfileID] FOREIGN KEY ([ProfileID]) REFERENCES [dbo].[Profile] ([ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [FK_CartItem_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ID]) ON DELETE CASCADE
GO
