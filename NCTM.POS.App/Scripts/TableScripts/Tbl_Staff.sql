USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_Staff]    Script Date: 04/19/2024 12:33:14 AM ******/
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