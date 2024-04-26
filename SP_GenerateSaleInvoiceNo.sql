USE [NCTM_POS]
GO

/****** Object:  StoredProcedure [dbo].[SP_GenerateSaleInvoiceNo]    Script Date: 4/26/2024 12:32:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GenerateSaleInvoiceNo]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	DECLARE @Sequence INT
		,@Code VARCHAR(10)
		,@Length INT
		,@Fields VARCHAR(50)
		,@ReplicateValue VARCHAR(max)
		,@InvoiceNo VARCHAR(max)

	SET @Fields = 'SaleInvoice'
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT @Sequence = Sequence + 1
		,@Code = Code
		,@Length = Length
	FROM Tbl_Sequence
	WHERE Fields = @Fields

	PRINT @Sequence
	PRINT @Code
	PRINT @Length

	UPDATE Tbl_Sequence
	SET Sequence = @Sequence
	WHERE Fields = @Fields

	SET @ReplicateValue = (
			SELECT REPLICATE('0', @Length - LEN(@Sequence))
			);

	PRINT @ReplicateValue

	SET @InvoiceNo = (
			SELECT @Code + CONCAT (
					@ReplicateValue
					,@Sequence
					)
			);

	PRINT @InvoiceNo
END
GO


