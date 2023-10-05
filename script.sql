USE [master]
GO
/****** Object:  Database [TVManagement]    Script Date: 9/23/2023 23:43:23  ******/
CREATE DATABASE [TVManagement]
 CONTAINMENT = NONE1232
 ON  PRIMARY 
( NAME = N'TVManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TVManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TVManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TVManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TVManagement] SET COMPATIBILITY_LEVEL = 160
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
EXEC sys.sp_db_vardecimal_storage_format N'TVManagement', N'ON'
GO
ALTER DATABASE [TVManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [TVManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TVManagement]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 9/23/2023 23:43:23  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [varchar](25) NULL,
	[color_value] [varchar](20) NULL,
	[color_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryOfManufacture]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 9/23/2023 23:43:23  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](25) NULL,
	[customer_address] [varchar](50) NULL,
	[customer_phoneNumber] [varchar](11) NULL,
	[customer_status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designs]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Images]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[ImportBill]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[ImportBillDetail]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 9/23/2023 23:43:23  ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[ScreenSize]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[SellBill]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[SellBillDetail]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[ShiftWork]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Staff]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Staff_ShiftWork]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 9/23/2023 23:43:23  ******/
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
/****** Object:  Table [dbo].[Work]    Script Date: 9/23/2023 23:43:23  ******/
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
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (1, N'Sarah', 0, N'0123456789', CAST(N'1990-05-06' AS Date), N'Ha Noi', N'sarah@example.com', 8, 0, N'20230923230804185.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (2, N'John', 0, N'0976543210', CAST(N'1985-08-20' AS Date), N'Da Nang', N'john@example.com', 2, 0, N'')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (3, N'Emma', 1, N'0949876543', CAST(N'1999-03-30' AS Date), N'Ho Chi Minh', N'emma@example.com', 3, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (4, N'MichaelJackson', 0, N'0967890123', CAST(N'1982-12-10' AS Date), N'Can Tho', N'michael@example.com', 4, 0, N'')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (5, N'Laura', 0, N'0932109876', CAST(N'1995-07-25' AS Date), N'Nha Trang', N'laura@example.com', 5, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (6, N'David', 1, N'0912345678', CAST(N'2000-04-05' AS Date), N'Vung Tau', N'david@example.com', 6, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (7, N'Alice', 1, N'0954321098', CAST(N'1998-09-12' AS Date), N'Quang Ninh', N'alice@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (8, N'Daniel', 1, N'0978654321', CAST(N'1991-01-22' AS Date), N'Thanh Hoa', N'daniel@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (9, N'Sophia', 1, N'0987654321', CAST(N'1994-06-14' AS Date), N'Bac Ninh', N'sophia@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (10, N'Nick', 1, N'09831185489', CAST(N'2003-11-04' AS Date), N'Hai Phong', N'phucminhbeos@gmail.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (11, N'John', 0, N'0976543210', CAST(N'1985-08-20' AS Date), N'Da Nang', N'john@example.com', 7, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (12, N'Emma', 1, N'0949876543', CAST(N'1999-03-30' AS Date), N'Ho Chi Minh', N'emma@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (13, N'Michael', 0, N'0967890123', CAST(N'1982-12-10' AS Date), N'Can Tho', N'michael@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (14, N'Laura', 1, N'0932109876', CAST(N'1995-07-25' AS Date), N'Nha Trang', N'laura@example.com', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (15, N'David', 1, N'0912345678', CAST(N'2000-04-05' AS Date), N'Vung Tau', N'david@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (16, N'Alice', 1, N'0954321098', CAST(N'1998-09-12' AS Date), N'Quang Ninh', N'alice@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (17, N'Daniel', 1, N'0978654321', CAST(N'1991-01-22' AS Date), N'Thanh Hoa', N'daniel@example.com', 6, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (18, N'Sophia', 1, N'0987654321', CAST(N'1994-06-14' AS Date), N'Bac Ninh', N'sophia@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (19, N'Liam', 1, N'0123456789', CAST(N'1997-02-28' AS Date), N'Hai Phong', N'liam@example.com', 3, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (20, N'Olivia', 1, N'0901234567', CAST(N'2001-10-15' AS Date), N'Hanoi', N'olivia@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (21, N'Noah', 1, N'0912345678', CAST(N'1996-07-02' AS Date), N'Da Nang', N'noah@example.com', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (22, N'Ava', 1, N'0945678901', CAST(N'1993-04-18' AS Date), N'Ho Chi Minh', N'ava@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (23, N'William', 0, N'0978901234', CAST(N'2002-08-09' AS Date), N'Can Tho', N'william@example.com', 7, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (24, N'Isabella', 1, N'0934567890', CAST(N'1992-12-03' AS Date), N'Nha Trang', N'isabella@example.com', 4, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (25, N'James', 1, N'0989012345', CAST(N'2004-03-21' AS Date), N'Vung Tau', N'james@example.com', 5, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (26, N'Charlotte', 0, N'0923456789', CAST(N'1998-06-27' AS Date), N'Quang Ninh', N'charlotte@example.com', 6, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (27, N'Benjamin', 1, N'0956789012', CAST(N'1990-01-05' AS Date), N'Thanh Hoa', N'benjamin@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (28, N'Mia', 1, N'0967890123', CAST(N'1995-09-09' AS Date), N'Bac Ninh', N'mia@example.com', 7, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (29, N'Ethan', 1, N'0988901234', CAST(N'1999-11-14' AS Date), N'Hai Phong', N'ethan@example.com', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (30, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (31, N'1', 1, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 1, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (32, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (33, N'1', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (34, N'122', 0, N'1', CAST(N'2023-09-13' AS Date), N'1', N'1', 3, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (35, N'123', 0, N'312', CAST(N'2023-09-14' AS Date), N'312', N'3123', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (36, N'1', 0, N'1', CAST(N'2023-09-14' AS Date), N'1', N'1', 3, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (37, N'242', 0, N'342', CAST(N'2023-08-28' AS Date), N'234', N'3242', 4, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (38, N'242', 0, N'342', CAST(N'2023-08-28' AS Date), N'234', N'3242', 4, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (39, N'123', 0, N'213', CAST(N'2023-08-27' AS Date), N'23', N'1231', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (40, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (41, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (42, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (43, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (44, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (45, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (46, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (47, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (48, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (49, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (50, N'1', 0, N'1', CAST(N'2023-09-18' AS Date), N'1', N'1', 8, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (51, N'1', 0, N'1', CAST(N'2023-09-19' AS Date), N'1', N'1', 2, 0, NULL)
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (56, N'bxffd', 0, N'0983118489', CAST(N'2023-09-10' AS Date), N'bfdxbfx', N'bxfbzf@gmail.com', 3, 0, N'20230920011651949.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (57, N'fgbvfdz', 0, N'0974884844', CAST(N'2023-09-03' AS Date), N'fgxbvf', N'fvzx@gmds.vfzx', 2, 0, N'20230920222819425.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (58, N'gzdrg', 0, N'0984449494', CAST(N'2023-09-04' AS Date), N'gdzfg', N'gdg@fbz.hngfb', 3, 0, N'20230920223227849.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (59, N'gzfgzf', 0, N'0935335333', CAST(N'2023-09-11' AS Date), N'gfzdsvgz', N'gdzsf@vdzv.hxgh', 1, 0, N'20230920223445171.png')
INSERT [dbo].[Staff] ([id], [staff_name], [staff_gender], [staff_phoneNumber], [staff_dob], [staff_address], [staff_email], [staff_work_id], [staff_status], [staff_image]) VALUES (60, N'bfdxbfd', 1, N'0983118489', CAST(N'2023-08-27' AS Date), N'fsdzgrdf', N'gdfg@dfb.hbfdx', 3, 0, N'')
SET IDENTITY_INSERT [dbo].[Staff] OFF
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
