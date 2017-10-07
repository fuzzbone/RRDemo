CREATE TABLE [dbo].[CartItem]
(
[ProfileID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[Quantity] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED  ([ProfileID], [ProductID])
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [FK_CartItem_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] ADD CONSTRAINT [FK_CartItem_Profile_ProfileID] FOREIGN KEY ([ProfileID]) REFERENCES [dbo].[Profile] ([ID]) ON DELETE CASCADE
GO
