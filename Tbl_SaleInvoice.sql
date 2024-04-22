USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_SaleInvoice]    Script Date: 4/22/2024 9:57:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_SaleInvoice](
	[SaleInvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[SaleInvoiceDateTime] [datetime] NOT NULL,
	[VoucherNo] [varchar](50) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[StaffCode] [varchar](10) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[PaymentType] [varchar](50) NOT NULL,
	[CustomerAccountNo] [varchar](50) NOT NULL,
	[PaymentAmount] [decimal](18, 2) NOT NULL,
	[ReceiveAmount] [decimal](18, 2) NOT NULL,
	[Change] [decimal](18, 2) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Tbl_SaleInvoice] PRIMARY KEY CLUSTERED 
(
	[SaleInvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


