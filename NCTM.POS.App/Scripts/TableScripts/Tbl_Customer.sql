USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_Customer]    Script Date: 04/19/2024 12:48:26 AM ******/
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


