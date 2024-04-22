USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 04/19/2024 12:07:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode]  AS ('PROD'+right('000'+CONVERT([varchar](3),[ProductId]),(3))),
	[ProductName] [varchar](100) NULL,
	[Price] [decimal](18, 0) NULL,
	[ProductCategoryCode] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO