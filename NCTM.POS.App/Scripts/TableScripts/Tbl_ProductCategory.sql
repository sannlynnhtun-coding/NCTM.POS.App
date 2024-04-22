USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_ProductCategory]    Script Date: 04/19/2024 12:16:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryCode]  AS ('CATS'+right('000'+CONVERT([varchar](3),[ProductCategoryId]),(3))),
	[ProductCategoryName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tbl_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO