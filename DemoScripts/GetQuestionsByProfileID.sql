SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetQuestionsByProfileID 
	@ProfileID  int = 0 
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  q.ID,
			q.Question,
			q.Answer,
			q.ProfileID,
			p.FirstName,
			p.LastName,
			p.UserID
    FROM dbo.Question q
	INNER JOIN dbo.Profile p ON q.ProfileID = p.ID 
END
GO
