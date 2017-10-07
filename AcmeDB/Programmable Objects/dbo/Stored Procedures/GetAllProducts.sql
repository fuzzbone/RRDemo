IF OBJECT_ID('[dbo].[GetAllProducts]') IS NOT NULL
	DROP PROCEDURE [dbo].[GetAllProducts];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
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
