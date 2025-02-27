USE [master]
GO
/****** Object:  Database [CK_Stage]    Script Date: 12/30/2023 9:51:04 PM ******/
CREATE DATABASE [CK_Stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CK_Stage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CK_Stage.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CK_Stage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CK_Stage_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CK_Stage] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CK_Stage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CK_Stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CK_Stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CK_Stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CK_Stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CK_Stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [CK_Stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CK_Stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CK_Stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CK_Stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CK_Stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CK_Stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CK_Stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CK_Stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CK_Stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CK_Stage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CK_Stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CK_Stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CK_Stage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CK_Stage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CK_Stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CK_Stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CK_Stage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CK_Stage] SET RECOVERY FULL 
GO
ALTER DATABASE [CK_Stage] SET  MULTI_USER 
GO
ALTER DATABASE [CK_Stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CK_Stage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CK_Stage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CK_Stage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CK_Stage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CK_Stage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CK_Stage', N'ON'
GO
ALTER DATABASE [CK_Stage] SET QUERY_STORE = ON
GO
ALTER DATABASE [CK_Stage] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CK_Stage]
GO
/****** Object:  Table [dbo].[CategoryCentral_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryCentral_stage](
	[Cat_id] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryEast_stage](
	[CategoryID] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategorySouth_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategorySouth_stage](
	[Category] [nvarchar](255) NULL,
	[CategoryID] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Central_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Central_stage](
	[OrderID] [nvarchar](255) NULL,
	[OrderDate] [nvarchar](255) NULL,
	[ShipDate] [nvarchar](255) NULL,
	[ShipMode] [nvarchar](255) NULL,
	[CustomerID] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[PostalCode] [float] NULL,
	[ProductID] [nvarchar](255) NULL,
	[Sales] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCentral_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCentral_stage](
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerEast_stage](
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[East_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[East_stage](
	[RowID] [float] NULL,
	[OrderID] [nvarchar](255) NULL,
	[OrderDate] [date] NULL,
	[ShipDate] [date] NULL,
	[ShipMode] [nvarchar](255) NULL,
	[CustomerID] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[PostalCode] [float] NULL,
	[ProductID] [nvarchar](255) NULL,
	[ProductCatogory] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Sales] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationEast_stage](
	[PostalCode] [float] NULL,
	[Country] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryEast_stage](
	[ProductCatogory] [nvarchar](255) NULL,
	[CategoryID] [nvarchar](255) NULL,
	[SubCategory] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCentral_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCentral_stage](
	[Category] [nvarchar](255) NULL,
	[Product ID] [nvarchar](255) NULL,
	[Sub-Category] [nvarchar](255) NULL,
	[Product Name] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentEast_stage](
	[SegmentID] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentSouth_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentSouth_stage](
	[SegmentID] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipModeCentral_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipModeCentral_stage](
	[ShipModeKey] [nvarchar](255) NULL,
	[Ship Mode] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipModeEast_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipModeEast_stage](
	[ShipModeID] [nvarchar](255) NULL,
	[ShipMode] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipModeSouth_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipModeSouth_stage](
	[ShipModeID] [nvarchar](255) NULL,
	[Ship Mode] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[South_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[South_stage](
	[OrderID] [nvarchar](255) NULL,
	[OrderDate] [nvarchar](255) NULL,
	[ShipDate] [nvarchar](255) NULL,
	[ShipMode] [nvarchar](255) NULL,
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[PostalCode] [float] NULL,
	[ProductID] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[SubCategory] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Sales] [float] NULL,
	[Address] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubcategorySouth_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubcategorySouth_stage](
	[SubCategoryID] [nvarchar](255) NULL,
	[SubCategory] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[West_stage]    Script Date: 12/30/2023 9:51:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[West_stage](
	[OrderID] [nvarchar](255) NULL,
	[OrderDate] [date] NULL,
	[ShipDate] [date] NULL,
	[ShipMode] [nvarchar](255) NULL,
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[PostalCode] [float] NULL,
	[Region] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[SubCategory] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Sales] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CK_Stage] SET  READ_WRITE 
GO
