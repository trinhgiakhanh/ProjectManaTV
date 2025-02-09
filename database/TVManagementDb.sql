USE [master]
GO
/****** Object:  Database [TVManagement]    Script Date: 11/25/2023 10:26:29 AM ******/
CREATE DATABASE [TVManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TVManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TVManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TVManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TVManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TVManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TVManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TVManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TVManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TVManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TVManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TVManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [TVManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TVManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TVManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TVManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TVManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TVManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TVManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TVManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TVManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TVManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TVManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TVManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TVManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TVManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TVManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TVManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TVManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TVManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [TVManagement] SET  MULTI_USER 
GO
ALTER DATABASE [TVManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TVManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TVManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TVManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TVManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TVManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TVManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [TVManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TVManagement]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color_status] [tinyint] NULL,
	[R] [int] NULL,
	[G] [int] NULL,
	[B] [int] NULL,
	[color_name] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryOfManufacture]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryOfManufacture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](25) NULL,
	[country_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [nvarchar](100) NULL,
	[customer_address] [nvarchar](1000) NULL,
	[customer_phoneNumber] [varchar](11) NULL,
	[customer_status] [tinyint] NULL,
	[customer_email] [nvarchar](100) NULL,
	[customer_rate] [int] NULL,
	[customer_comment] [int] NULL,
	[customer_from] [int] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	[createdBy] [nvarchar](100) NULL,
	[updatedBy] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designs]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[design_name] [varchar](25) NULL,
	[design_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[image_path] [varchar](100) NULL,
	[image_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportBill]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportBill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[import_amount] [int] NULL,
	[supplier_id] [int] NULL,
	[staff_id] [int] NULL,
	[import_date] [date] NULL,
	[import_bill_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportBillDetail]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportBillDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[import_amount] [int] NULL,
	[import_voucher] [float] NULL,
	[import_bill_id] [int] NULL,
	[import_detail_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manufacturer_name] [varchar](25) NULL,
	[manufacturer_address] [varchar](50) NULL,
	[manufacturer_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](50) NULL,
	[manufacturer_id] [int] NULL,
	[design_id] [int] NULL,
	[color_id] [int] NULL,
	[screen_id] [int] NULL,
	[size_id] [int] NULL,
	[country_id] [int] NULL,
	[product_amount] [int] NULL,
	[product_status] [tinyint] NULL,
	[product_import_money] [int] NULL,
	[product_sell_money] [int] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[screen_name] [varchar](25) NULL,
	[screen_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenSize]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenSize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[screen_size] [float] NULL,
	[size_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellBill]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellBill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sell_amount] [int] NULL,
	[customer_id] [int] NULL,
	[staff_id] [int] NULL,
	[sell_date] [date] NULL,
	[sell_tax] [int] NULL,
	[sell_bill_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellBillDetail]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellBillDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[sell_amount] [int] NULL,
	[sell_voucher] [float] NULL,
	[sell_bill_id] [int] NULL,
	[sell_detail_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftWork]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftWork](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shiftwork_name] [varchar](10) NULL,
	[shiftwork_description] [varchar](max) NULL,
	[shiftwork_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staff_name] [varchar](25) NULL,
	[staff_gender] [bit] NULL,
	[staff_phoneNumber] [varchar](11) NULL,
	[staff_dob] [date] NULL,
	[staff_address] [varchar](50) NULL,
	[staff_email] [varchar](25) NULL,
	[staff_work_id] [int] NULL,
	[staff_status] [tinyint] NULL,
	[staff_image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_ShiftWork]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_ShiftWork](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [int] NULL,
	[shiftwork_id] [int] NULL,
	[staff_shift_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_name] [varchar](25) NULL,
	[supplier_address] [varchar](50) NULL,
	[supplier_phoneNumber] [varchar](11) NULL,
	[supplier_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work]    Script Date: 11/25/2023 10:26:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[work_name] [varchar](50) NULL,
	[work_description] [varchar](max) NULL,
	[work_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (1, 1, 0, 0, 0, N'Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (2, 1, 5, 5, 5, N'Dark Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (3, 1, 10, 10, 10, N'Pure Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (4, 1, 15, 15, 15, N'Deep Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (5, 1, 20, 20, 20, N'Jet Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (6, 1, 25, 25, 25, N'Night Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (7, 1, 30, 30, 30, N'Absolute Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (8, 1, 35, 35, 35, N'Matte Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (9, 1, 40, 40, 40, N'Carbon Black')
INSERT [dbo].[Colors] ([id], [color_status], [R], [G], [B], [color_name]) VALUES (10, 1, 45, 45, 45, N'Pitch Black')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[CountryOfManufacture] ON 

INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (1, N'Korea', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (2, N'Japan', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (3, N'China', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (4, N'India', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (5, N'Germany', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (6, N'France', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (7, N'Italy', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (8, N'United States', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (9, N'Canada', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (10, N'Australia', 1)
INSERT [dbo].[CountryOfManufacture] ([id], [country_name], [country_status]) VALUES (11, N'VietNam', 1)
SET IDENTITY_INSERT [dbo].[CountryOfManufacture] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (3, N'Nguyễn Thành Hưng', N'Thanh Xuân, Hà Nội', N'0946928815', 1, N'thanh.hung.st302@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (4, N'Doãn Nhật Đức hh', N'Kim Giang, Hà Nội', N'0946888815', 1, N'nhatduc@gmail.com', NULL, NULL, NULL, NULL, CAST(N'2023-11-24T17:32:06.960' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (5, N'Nguyen Tien', N'Nhât', N'097123123', 1, N'tien@gmail.com', NULL, NULL, NULL, CAST(N'2023-10-05T01:06:30.597' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (6, N'Nguyen Tien', N'Nhât', N'097123123', 1, N'tien@gmail.com', NULL, NULL, NULL, CAST(N'2023-10-05T01:06:33.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (10, N'Nguyen C', N'ưerwfwefw', N'029131231', 1, N'C@gmail.com', NULL, NULL, NULL, CAST(N'2023-10-05T14:23:50.803' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (13, N'Michael Johnson', N'Address 1936475369', N'00409106639', 0, N'MichaelJohnson@example.com', 4, 3, 1, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (16, N'Mia Davis', N'Address 1985385062', N'00659961355', 1, N'MiaDavis@example.com', 1, 1, 4, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (17, N'Addison Johnson 33', N'Address 397891230', N'00187389227', 0, N'AddisonJohnson@example.com', 1, 1, 5, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-11-25T01:05:07.177' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (18, N'David Johnson', N'Address 1552372310', N'02031591723', 0, N'DavidJohnson@example.com', 2, 2, 6, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (19, N'John Doe', N'Address 1057539569', N'01949946094', 1, N'JohnDoe@example.com', 4, 2, 7, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (20, N'Samuel Smith', N'Address 2050984424', N'00358757687', 1, N'SamuelSmith@example.com', 2, 4, 8, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (21, N'Emma Taylor', N'Address 1944556042', N'01367197774', 1, N'EmmaTaylor@example.com', 1, 3, 9, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (22, N'Audrey Wilson', N'Address 2033845680', N'00951722705', 1, N'AudreyWilson@example.com', 2, 4, 10, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (25, N'Lily Davis', N'Address 1456345637', N'00929643354', 1, N'LilyDavis@example.com', 5, 3, 13, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (26, N'Samuel Johnson', N'Address 752138285', N'01494783601', 1, N'SamuelJohnson@example.com', 2, 1, 14, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (27, N'Alex Smith', N'Address 322171339', N'01374439471', 1, N'AlexSmith@example.com', 5, 4, 15, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (28, N'Joshua Taylor', N'Address 2013135389', N'01233559048', 1, N'JoshuaTaylor@example.com', 2, 3, 16, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-11-24T17:32:29.920' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (29, N'Gabriel Wilson', N'Address 354187935', N'01649044321', 1, N'GabrielWilson@example.com', 5, 3, 17, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (30, N'Elizabeth Smith', N'Address 810726294', N'00961686703', 0, N'ElizabethSmith@example.com', 2, 2, 18, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (31, N'Ella Wilson', N'Address 1804321453', N'01777265905', 0, N'EllaWilson@example.com', 1, 1, 19, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (32, N'Caleb Davis', N'Address 1807613560', N'01682043441', 0, N'CalebDavis@example.com', 4, 3, 20, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (33, N'Harper Brown', N'Address 614415273', N'01515522743', 0, N'HarperBrown@example.com', 3, 4, 21, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (34, N'Avery Johnson', N'Address 177935068', N'00603193239', 0, N'AveryJohnson@example.com', 1, 2, 22, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (35, N'Daniel Wilson', N'Address 1240019915', N'00128832885', 1, N'DanielWilson@example.com', 4, 1, 23, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (36, N'Sophia Davis', N'Address 208710103', N'00850358707', 0, N'SophiaDavis@example.com', 3, 3, 24, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (37, N'Victoria Smith', N'Address 1527505359', N'00313037820', 1, N'VictoriaSmith@example.com', 4, 2, 25, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (38, N'William Johnson', N'Address 373566', N'00755255577', 0, N'WilliamJohnson@example.com', 3, 3, 26, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (39, N'Isaac Johnson', N'Address 146906270', N'00525866820', 1, N'IsaacJohnson@example.com', 2, 2, 27, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (40, N'Luke Brown', N'Address 940868431', N'00844989082', 0, N'LukeBrown@example.com', 4, 4, 28, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (41, N'Liam Johnson', N'Address 719766271', N'01930780287', 1, N'LiamJohnson@example.com', 2, 3, 29, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (42, N'Ava Smith', N'Address 1880585593', N'01299809059', 0, N'AvaSmith@example.com', 1, 5, 30, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (43, N'Anna Brown', N'Address 608145610', N'01079263989', 1, N'AnnaBrown@example.com', 4, 1, 31, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (44, N'Christopher Johnson', N'Address 1916950164', N'01261809565', 1, N'ChristopherJohnson@example.com', 1, 5, 32, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (45, N'Benjamin Davis', N'Address 1465719477', N'02086650916', 1, N'BenjaminDavis@example.com', 2, 1, 33, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (46, N'Andrew Wilson', N'Address 1756438608', N'01494350830', 1, N'AndrewWilson@example.com', 5, 2, 34, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (47, N'Jane Smith', N'Address 1553895028', N'00436423837', 0, N'JaneSmith@example.com', 1, 1, 35, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (48, N'Olivia Brown', N'Address 546833081', N'00727651739', 0, N'OliviaBrown@example.com', 5, 5, 36, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (50, N'David Brown', N'Address 2027172272', N'01342912273', 0, N'DavidBrown@example.com', 4, 4, 38, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (51, N'Hannah Taylor', N'Address 157651684', N'00149262384', 0, N'HannahTaylor@example.com', 5, 4, 39, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (52, N'Chloe Brown', N'Address 784654156', N'01406754874', 0, N'ChloeBrown@example.com', 5, 3, 40, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (53, N'Madison Davis', N'Address 1922256460', N'01189884297', 1, N'MadisonDavis@example.com', 1, 4, 41, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (54, N'Jonathan Wilson', N'Address 418118932', N'00598123719', 1, N'JonathanWilson@example.com', 1, 3, 42, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (55, N'Henry Wilson', N'Address 792781082', N'00309507359', 0, N'HenryWilson@example.com', 3, 1, 43, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (56, N'Andrew Wilson', N'Address 65862250', N'00733910497', 0, N'AndrewWilson@example.com', 3, 2, 44, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (57, N'Abigail Johnson', N'Address 1277839961', N'00799271675', 0, N'AbigailJohnson@example.com', 3, 1, 45, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (58, N'Ethan Davis', N'Address 719657711', N'01203177731', 0, N'EthanDavis@example.com', 1, 3, 46, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (59, N'Joseph Johnson', N'Address 1347405547', N'00234072880', 1, N'JosephJohnson@example.com', 5, 5, 47, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (60, N'Amelia Davis', N'Address 1790562220', N'00407730744', 1, N'AmeliaDavis@example.com', 3, 1, 48, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (61, N'Christopher Taylor', N'Address 365574530', N'00215804326', 0, N'ChristopherTaylor@example.com', 1, 1, 49, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (62, N'Natalie Davis', N'Address 221014626', N'02090718594', 0, N'NatalieDavis@example.com', 5, 3, 50, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (63, N'Emily Davis', N'Address 2118173908', N'01700594859', 1, N'EmilyDavis@example.com', 1, 1, 51, CAST(N'2023-10-07T03:14:00.267' AS DateTime), CAST(N'2023-10-07T03:14:00.267' AS DateTime), N'Admin', N'Admin', 0)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (64, N'Nguyen van ABC123', N'123123213123', N'09673232', 1, N'thanh@gmail.com', NULL, NULL, NULL, CAST(N'2023-10-08T02:32:04.733' AS DateTime), CAST(N'2023-10-08T02:32:27.037' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (65, N'', N'', N'', 1, N'', NULL, NULL, NULL, CAST(N'2023-11-23T22:46:09.353' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (66, N'Nguyen Van Yeah', N'yeya', N'0923123123', 1, N'hung@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-24T15:02:36.817' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (67, N'Em Tesster 2', N'oksdofsdf', N'0912318231', 1, N'hung@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-24T15:07:20.580' AS DateTime), CAST(N'2023-11-24T15:40:37.270' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (68, N'Nguyen Van Yeahss', N'kjdfgdfg', N'09324234', 1, N'hung@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-24T15:40:03.967' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (69, N'Ultre Navacaldo', N'yEyafaef', N'093212312', 1, N'hung@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-24T15:41:52.880' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (71, N'Galata saray', N'asf', N'0394923213', 1, N'hung@gmasi', NULL, NULL, NULL, CAST(N'2023-11-24T15:42:33.217' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (72, N'Nguyen van Oker', N'Yesterday', N'093242423', 1, N'hung@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-24T15:45:50.333' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (73, N'asdasdasd', N'sdfsdf', N'324234234', 1, N'sdfsdf', NULL, NULL, NULL, CAST(N'2023-11-24T16:24:59.517' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Customers] ([id], [customer_name], [customer_address], [customer_phoneNumber], [customer_status], [customer_email], [customer_rate], [customer_comment], [customer_from], [createdAt], [updatedAt], [createdBy], [updatedBy], [isDeleted]) VALUES (74, N'NNNNNN', N'weffewgffgh', N'0234234234', 1, N'ok@gmail.com', NULL, NULL, NULL, CAST(N'2023-11-25T01:41:30.907' AS DateTime), CAST(N'2023-11-25T01:41:39.233' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Designs] ON 

INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (1, N'Flat Screen', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (2, N'Curved Screen', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (3, N'Frameless', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (4, N'Android TV', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (5, N'Smart TV', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (6, N'TV Box', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (7, N'TV Projector', 1)
INSERT [dbo].[Designs] ([id], [design_name], [design_status]) VALUES (8, N'TV Soundbar', 1)
SET IDENTITY_INSERT [dbo].[Designs] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (1, N'Samsung 2', N'Korea', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (2, N'Sony', N'Ameria', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (3, N'LG', N'England', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (4, N'DELL', N'US', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (5, N'Lelovo', N'Korea', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (6, N'Aser', N'Viet Nam', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (7, N'Tosiba', N'Japan', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (8, N'Apple', N'Ameria', 1)
INSERT [dbo].[Manufacturer] ([id], [manufacturer_name], [manufacturer_address], [manufacturer_status]) VALUES (11, N'okwer', N'uerwer', 1)
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (1, N'TV1', 1, 1, 1, 1, 1, 1, 10000000, 1, 8000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (2, N'TV2', 1, 2, 1, 2, 1, 3, 10000000, 1, 8000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (3, N'TV3', 2, 3, 1, 3, 1, 1, 11000000, 1, 9000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (4, N'TV4', 3, 2, 2, 2, 1, 4, 12000000, 1, 8500000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (5, N'TV5', 2, 2, 1, 4, 1, 3, 15000000, 1, 9000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (6, N'TV6', 4, 5, 2, 1, 1, 1, 20000000, 1, 1800000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (7, N'TV7', 1, 4, 1, 3, 1, 3, 6000000, 1, 400000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (8, N'TV8', 2, 3, 1, 2, 1, 2, 13000000, 1, 8000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (9, N'TV9', 1, 2, 3, 2, 1, 3, 10000000, 1, 8000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (10, N'TV10', 3, 2, 1, 2, 1, 1, 10000000, 1, 8000000, NULL, 0)
INSERT [dbo].[Products] ([id], [product_name], [manufacturer_id], [design_id], [color_id], [screen_id], [size_id], [country_id], [product_amount], [product_status], [product_import_money], [product_sell_money], [isDeleted]) VALUES (11, N'TV11', 4, 2, 2, 2, 1, 3, 10000000, 1, 8000000, NULL, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Screen] ON 

INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (1, N'LED', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (2, N'OLED', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (3, N'QLED', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (4, N'Plasma', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (5, N'CRT', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (6, N'MicroLED', 1)
INSERT [dbo].[Screen] ([id], [screen_name], [screen_status]) VALUES (7, N'Mini-LED', 1)
SET IDENTITY_INSERT [dbo].[Screen] OFF
GO
SET IDENTITY_INSERT [dbo].[ScreenSize] ON 

INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (1, 32, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (2, 40, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (3, 48, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (4, 50, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (5, 55, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (6, 60, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (7, 65, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (8, 70, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (9, 75, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (10, 80, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (11, 85, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (12, 90, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (13, 95, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (14, 100, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (15, 105, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (16, 110, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (17, 115, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (18, 120, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (19, 125, 1)
INSERT [dbo].[ScreenSize] ([id], [screen_size], [size_status]) VALUES (20, 130, 1)
SET IDENTITY_INSERT [dbo].[ScreenSize] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (1, N'Sarah', 0, N'0123456789', CAST(N'1990-05-06' AS Date), N'Ha Noi', N'sarah@example.com', 8, 1, N'20230923230804185.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (2, N'John', 0, N'0976543210', CAST(N'1985-08-20' AS Date), N'Da Nang', N'john@example.com', 2, 1, N'')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (3, N'Emma', 1, N'0949876543', CAST(N'1999-03-30' AS Date), N'Ho Chi Minh', N'emma@example.com', 3, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (4, N'MichaelJackson', 0, N'0967890123', CAST(N'1982-12-10' AS Date), N'Can Tho', N'michael@example.com', 4, 1, N'')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (5, N'Laura', 0, N'0932109876', CAST(N'1995-07-25' AS Date), N'Nha Trang', N'laura@example.com', 5, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (6, N'David', 1, N'0912345678', CAST(N'2000-04-05' AS Date), N'Vung Tau', N'david@example.com', 6, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (7, N'Alice', 1, N'0954321098', CAST(N'1998-09-12' AS Date), N'Quang Ninh', N'alice@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (8, N'Daniel', 1, N'0978654321', CAST(N'1991-01-22' AS Date), N'Thanh Hoa', N'daniel@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (9, N'Sophia', 1, N'0987654321', CAST(N'1994-06-14' AS Date), N'Bac Ninh', N'sophia@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (10, N'Nick', 1, N'09831185489', CAST(N'2003-11-04' AS Date), N'Hai Phong', N'phucminhbeos@gmail.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (11, N'John', 0, N'0976543210', CAST(N'1985-08-20' AS Date), N'Da Nang', N'john@example.com', 7, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (12, N'Emma', 1, N'0949876543', CAST(N'1999-03-30' AS Date), N'Ho Chi Minh', N'emma@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (13, N'Michael', 0, N'0967890123', CAST(N'1982-12-10' AS Date), N'Can Tho', N'michael@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (14, N'Laura', 1, N'0932109876', CAST(N'1995-07-25' AS Date), N'Nha Trang', N'laura@example.com', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (15, N'David', 1, N'0912345678', CAST(N'2000-04-05' AS Date), N'Vung Tau', N'david@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (16, N'Alice', 1, N'0954321098', CAST(N'1998-09-12' AS Date), N'Quang Ninh', N'alice@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (17, N'Daniel', 1, N'0978654321', CAST(N'1991-01-22' AS Date), N'Thanh Hoa', N'daniel@example.com', 6, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (18, N'Sophia', 1, N'0987654321', CAST(N'1994-06-14' AS Date), N'Bac Ninh', N'sophia@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (19, N'Liam', 1, N'0123456789', CAST(N'1997-02-28' AS Date), N'Hai Phong', N'liam@example.com', 3, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (20, N'Olivia', 1, N'0901234567', CAST(N'2001-10-15' AS Date), N'Hanoi', N'olivia@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (21, N'Noah', 1, N'0912345678', CAST(N'1996-07-02' AS Date), N'Da Nang', N'noah@example.com', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (22, N'Ava', 1, N'0945678901', CAST(N'1993-04-18' AS Date), N'Ho Chi Minh', N'ava@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (23, N'William', 0, N'0978901234', CAST(N'2002-08-09' AS Date), N'Can Tho', N'william@example.com', 7, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (24, N'Isabella', 1, N'0934567890', CAST(N'1992-12-03' AS Date), N'Nha Trang', N'isabella@example.com', 4, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (25, N'James', 1, N'0989012345', CAST(N'2004-03-21' AS Date), N'Vung Tau', N'james@example.com', 5, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (26, N'Charlotte', 0, N'0923456789', CAST(N'1998-06-27' AS Date), N'Quang Ninh', N'charlotte@example.com', 6, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (27, N'Benjamin', 1, N'0956789012', CAST(N'1990-01-05' AS Date), N'Thanh Hoa', N'benjamin@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (28, N'Mia', 1, N'0967890123', CAST(N'1995-09-09' AS Date), N'Bac Ninh', N'mia@example.com', 7, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (29, N'Ethan', 1, N'0988901234', CAST(N'1999-11-14' AS Date), N'Hai Phong', N'ethan@example.com', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (30, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (31, N'1', 1, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 1, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (32, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (33, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (34, N'122', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 3, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (35, N'123', 0, N'312', CAST(N'2023-09-14' AS Date), N'312', N'3123', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (36, N'1', 0, N'1', CAST(N'2023-09-14' AS Date), N'1', N'1', 3, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (37, N'242', 0, N'342', CAST(N'2023-08-28' AS Date), N'234', N'3242', 4, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (38, N'242', 0, N'342', CAST(N'2023-08-28' AS Date), N'234', N'3242', 4, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (39, N'123', 0, N'213', CAST(N'2023-08-27' AS Date), N'23', N'1231', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (40, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (41, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (42, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (43, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (44, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (45, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (46, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (47, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (48, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (49, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (50, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (51, N'1', 0, N'1', CAST(N'2023-09-19' AS Date), N'1', N'1', 2, 1, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (56, N'bxffd', 0, N'0983118489', CAST(N'2023-09-10' AS Date), N'bfdxbfx', N'bxfbzf@gmail.com', 3, 1, N'20230920011651949.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (57, N'fgbvfdz', 0, N'0974884844', CAST(N'2023-09-03' AS Date), N'fgxbvf', N'fvzx@gmds.vfzx', 2, 1, N'20230920222819425.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (58, N'gzdrg', 0, N'0984449494', CAST(N'2023-09-04' AS Date), N'gdzfg', N'gdg@fbz.hngfb', 3, 1, N'20230920223227849.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (59, N'gzfgzf', 0, N'0935335333', CAST(N'2023-09-11' AS Date), N'gfzdsvgz', N'gdzsf@vdzv.hxgh', 1, 1, N'20230920223445171.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (60, N'bfdxbfd', 1, N'0983118489', CAST(N'2023-08-27' AS Date), N'fsdzgrdf', N'gdfg@dfb.hbfdx', 3, 1, N'')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [supplier_name], [supplier_address], [supplier_phoneNumber], [supplier_status]) VALUES (1, N'SamSung', N'Itaewon', N'0912345122', 1)
INSERT [dbo].[Supplier] ([id], [supplier_name], [supplier_address], [supplier_phoneNumber], [supplier_status]) VALUES (2, N'Sony', N'Saka Bukayo', N'0123456789', 1)
INSERT [dbo].[Supplier] ([id], [supplier_name], [supplier_address], [supplier_phoneNumber], [supplier_status]) VALUES (3, N'SamSung', N'VietSkaa', N'0987654321', 1)
INSERT [dbo].[Supplier] ([id], [supplier_name], [supplier_address], [supplier_phoneNumber], [supplier_status]) VALUES (4, N'SamSung', N'Tokyoo', N'0345678901', 1)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Work] ON 

INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (1, N'Marketing Manager', N'Manage marketing campaigns', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (2, N'Product Engineer', N'Develop TV products', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (3, N'Technical Support Specialist', N'Provide technical support', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (4, N'Business Development Representative', N'Identify new business opportunities', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (5, N'Shipping and Delivery Staff', N'Handle shipping and delivery operations', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (6, N'Warehouse Staff', N'Manage inventory in the warehouse', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (7, N'Finance Staff', N'Handle financial transactions', 1)
INSERT [dbo].[Work] ([id], [work_name], [work_description], [work_status]) VALUES (8, N'Administrative and HR Staff', N'Manage administrative tasks and HR functions', 1)
SET IDENTITY_INSERT [dbo].[Work] OFF
GO
ALTER TABLE [dbo].[Colors] ADD  DEFAULT ((1)) FOR [color_status]
GO
ALTER TABLE [dbo].[CountryOfManufacture] ADD  DEFAULT ((1)) FOR [country_status]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((1)) FOR [customer_status]
GO
ALTER TABLE [dbo].[Designs] ADD  DEFAULT ((1)) FOR [design_status]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT ((1)) FOR [image_status]
GO
ALTER TABLE [dbo].[ImportBill] ADD  DEFAULT ((1)) FOR [import_bill_status]
GO
ALTER TABLE [dbo].[ImportBillDetail] ADD  DEFAULT ((1)) FOR [import_detail_status]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  DEFAULT ((1)) FOR [manufacturer_status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [product_status]
GO
ALTER TABLE [dbo].[Screen] ADD  DEFAULT ((1)) FOR [screen_status]
GO
ALTER TABLE [dbo].[ScreenSize] ADD  DEFAULT ((1)) FOR [size_status]
GO
ALTER TABLE [dbo].[SellBill] ADD  DEFAULT ((1)) FOR [sell_bill_status]
GO
ALTER TABLE [dbo].[SellBillDetail] ADD  DEFAULT ((1)) FOR [sell_detail_status]
GO
ALTER TABLE [dbo].[ShiftWork] ADD  DEFAULT ((1)) FOR [shiftwork_status]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((1)) FOR [staff_status]
GO
ALTER TABLE [dbo].[Staff_ShiftWork] ADD  DEFAULT ((1)) FOR [staff_shift_status]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ((1)) FOR [supplier_status]
GO
ALTER TABLE [dbo].[Work] ADD  DEFAULT ((1)) FOR [work_status]
GO
USE [master]
GO
ALTER DATABASE [TVManagement] SET  READ_WRITE 
GO
