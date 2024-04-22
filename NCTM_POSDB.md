```
	USE [NCTM_POS]
GO
/****** Object:  Table [dbo].[Tbl_Customer]    Script Date: 04/22/2024 2:58:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode]  AS ('CUS'+right('000'+CONVERT([varchar](3),[CustomerId]),(3))),
	[CustomerName] [varchar](50) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[StateCode] [varchar](100) NOT NULL,
	[TownShipCode] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Product]    Script Date: 04/22/2024 2:58:39 PM ******/
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
/****** Object:  Table [dbo].[Tbl_ProductCategory]    Script Date: 04/22/2024 2:58:39 PM ******/
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
/****** Object:  Table [dbo].[Tbl_Shop]    Script Date: 04/22/2024 2:58:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Shop](
	[ShopId] [int] IDENTITY(1,1) NOT NULL,
	[ShopCode]  AS ('SH'+right('000'+CONVERT([varchar](3),[ShopId]),(3))),
	[ShopName] [varchar](100) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tbl_Shop] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Staff]    Script Date: 04/22/2024 2:58:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Staff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffCode]  AS ('S'+right('000'+CONVERT([varchar](3),[StaffId]),(3))),
	[StaffName] [varchar](100) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Position] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_State]    Script Date: 04/22/2024 2:58:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[StateCode]  AS ('STD'+right('000'+CONVERT([varchar](3),[StateId]),(3))),
 CONSTRAINT [PK_Tbl_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

```