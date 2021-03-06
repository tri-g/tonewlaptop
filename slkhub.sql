USE [master]
GO
/****** Object:  Database [SLK_HUB_DEV]    Script Date: 29-06-2021 17:07:03 ******/
CREATE DATABASE [SLK_HUB_DEV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SLK_HUB_DEV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRIVENI\MSSQL\DATA\SLK_HUB_DEV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SLK_HUB_DEV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRIVENI\MSSQL\DATA\SLK_HUB_DEV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SLK_HUB_DEV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SLK_HUB_DEV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SLK_HUB_DEV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ARITHABORT OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SLK_HUB_DEV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SLK_HUB_DEV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SLK_HUB_DEV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SLK_HUB_DEV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SLK_HUB_DEV] SET  MULTI_USER 
GO
ALTER DATABASE [SLK_HUB_DEV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SLK_HUB_DEV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SLK_HUB_DEV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SLK_HUB_DEV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SLK_HUB_DEV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SLK_HUB_DEV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SLK_HUB_DEV] SET QUERY_STORE = OFF
GO
USE [SLK_HUB_DEV]
GO
/****** Object:  Table [dbo].[Approval_Manager]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approval_Manager](
	[Approval_Id] [int] IDENTITY(1,1) NOT NULL,
	[Doc_Id] [int] NULL,
	[Uploaded_By] [int] NULL,
	[Uploaded_On] [datetime] NULL,
	[Approved_Rejected_By] [int] NULL,
	[Approved_Rejected_On] [datetime] NULL,
	[Status] [nvarchar](30) NULL,
 CONSTRAINT [PK_Approval_Manager] PRIMARY KEY CLUSTERED 
(
	[Approval_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blend_External]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blend_External](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrer_Growth]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrer_Growth](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Documents]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Documents](
	[Doc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Doc_Name] [nvarchar](100) NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Doc_Tags] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Cust_Proj_Name] [nvarchar](100) NULL,
	[Cust_Journey_ID] [int] NULL,
	[Ethos_Item_Level_1] [nvarchar](100) NULL,
	[Ethos_Item_Level_2] [nvarchar](100) NULL,
	[Employee_Id] [nvarchar](100) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Customer_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Journey]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Journey](
	[Journey_Id] [int] IDENTITY(1,1) NOT NULL,
	[Journey_Year] [int] NULL,
	[Journey_Module] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Journey_Desc] [nvarchar](4000) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customer_Journey] PRIMARY KEY CLUSTERED 
(
	[Journey_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Project_Team]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Project_Team](
	[Proj_Team_Id] [int] IDENTITY(1,1) NOT NULL,
	[Proj_Id] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Email_Id] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[ProfilePic] [nvarchar](100) NULL,
	[IsClient] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Customer_Project_Team] PRIMARY KEY CLUSTERED 
(
	[Proj_Team_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Projects]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Projects](
	[Proj_Id] [int] IDENTITY(1,1) NOT NULL,
	[Proj_Desc] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Year] [int] NULL,
	[SLK_Champ] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customer_Projects] PRIMARY KEY CLUSTERED 
(
	[Proj_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Timeline]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Timeline](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Timeline] [nvarchar](500) NULL,
	[CustomerId] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_Timeline] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Cust_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Name] [nvarchar](100) NULL,
	[Cust_Desc] [nvarchar](500) NULL,
	[Year_Of_Engagement] [int] NULL,
	[Website_Link] [nvarchar](500) NULL,
	[Leadership_Team_Link] [nvarchar](500) NULL,
	[Products_Link] [nvarchar](500) NULL,
	[Financials_Link] [nvarchar](500) NULL,
	[Logo_Path] [nvarchar](500) NULL,
	[Cust_Industry] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[Cust_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailNotification]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailNotification](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[ToEmail] [nvarchar](500) NULL,
	[CCEmail] [nvarchar](500) NULL,
	[Subject] [varchar](500) NULL,
	[Body] [nvarchar](max) NULL,
	[Create Date] [datetime] NULL,
	[Update Date] [datetime] NULL,
	[TemplateId] [int] NULL,
 CONSTRAINT [PK_EmailNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Career_Growth]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Career_Growth](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_Career_Growth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_External_Experience]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_External_Experience](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_External_Experience] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Journey_Path](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_Journey_Path] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ethos_Culture]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethos_Culture](
	[Ethos_Culture_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Culture_Type] [nvarchar](50) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Ethos_Culture] PRIMARY KEY CLUSTERED 
(
	[Ethos_Culture_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Offices_Documents]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution_Offices_Documents](
	[Doc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Evolution_Offices_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Strategic_Focus]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution_Strategic_Focus](
	[Strategic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Evolution_Strategic_Focus] PRIMARY KEY CLUSTERED 
(
	[Strategic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Impact]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impact](
	[Impact_id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](50) NULL,
	[CustomerLogo] [nvarchar](50) NULL,
	[Solution] [nvarchar](50) NULL,
	[SLK_Champion] [nvarchar](50) NULL,
	[Title] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[Keywords] [nvarchar](max) NULL,
	[ImpactType] [varchar](50) NULL,
	[Impact_Year] [varchar](50) NULL,
 CONSTRAINT [PK_Impact] PRIMARY KEY CLUSTERED 
(
	[Impact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learnings]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learnings](
	[Learning_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Learnings] PRIMARY KEY CLUSTERED 
(
	[Learning_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logintable]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logintable](
	[id] [int] NOT NULL,
	[username] [varchar](25) NULL,
	[password] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stotefiles]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stotefiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[File] [nvarchar](max) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategory]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategory](
	[Subcategory_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Category_Id] [int] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED 
(
	[Subcategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timestore]    Script Date: 29-06-2021 17:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timestore](
	[duration] [float] NULL,
	[playedtill] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timestore1]    Script Date: 29-06-2021 17:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timestore1](
	[id] [int] NULL,
	[duration] [float] NULL,
	[playedtill] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timestore2]    Script Date: 29-06-2021 17:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timestore2](
	[id] [int] NOT NULL,
	[duration] [float] NULL,
	[playedtill] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blend_External] ON 

INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Blend_External] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Blend_External] OFF
GO
SET IDENTITY_INSERT [dbo].[Carrer_Growth] ON 

INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Carrer_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Carrer_Growth] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Documents] ON 

INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'Video 2', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (3, N'Video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, N'a banking project', NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (4, N'Video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, 1, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (5, N'Video 5', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, NULL, N'Item level 1', NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (6, N'Video 6', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, NULL, NULL, N'Item level 2', NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (7, N'Video 7', N'/slk-hub/Videos/SLK America Spotlight (w logo).mp4', N'video', 0, NULL, NULL, NULL, NULL, N'107505', CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (8, N'Employee Journey Path', N'/slk-hub/Videos/Bhasker.mp4', N'video', 0, NULL, NULL, NULL, NULL, N'100', CAST(N'2020-12-02T08:42:08.850' AS DateTime), CAST(N'2020-12-02T08:42:08.850' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (9, N'Employee Journey Path', N'/slk-hub/Videos/SLK America Spotlight (w logo).mp4', N'video', 0, NULL, NULL, NULL, NULL, N'101', CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (10, N'Employee Journey Path', N'/slk-hub/Videos/SLK America Spotlight (w logo).mp4', N'video', 0, NULL, NULL, NULL, NULL, N'102', CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (11, N'Video 8', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (12, N'Video 9', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (13, N'Video 10', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (14, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 2, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (15, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (16, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (17, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (18, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 4, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (19, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 5, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (20, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 6, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (21, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 7, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (22, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (23, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (24, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (25, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 9, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (26, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (27, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (28, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (29, N'Video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, 2, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (30, N'Vijay C. Kaggal', N'/slk-hub/Videos/Vijay_SLK Hub_BlendOfExternal.mp4', N'video', 0, NULL, NULL, NULL, NULL, N'100340', CAST(N'2021-01-04T06:57:58.453' AS DateTime), CAST(N'2021-01-04T06:57:58.453' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (31, N'Video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, 3, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (32, N'Video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'video', 0, NULL, 4, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (33, N'SLK HUB-Case Sudies_V1.2 Inflation Model', N'/slk-hub/Documents/SLK HUB-Case Sudies_V1.2 Inflation Model.pptx', N'Document', 0, NULL, 2, NULL, NULL, NULL, CAST(N'2021-01-05T05:07:02.223' AS DateTime), CAST(N'2021-01-05T05:07:02.223' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (34, N'SLK HUB-Case Sudies_V1.2 Symphoney', N'/slk-hub/Documents/SLK HUB-Case Sudies_V1.2 Symphoney.pptx', N'Document', 0, NULL, 3, NULL, NULL, NULL, CAST(N'2021-01-05T05:09:37.673' AS DateTime), CAST(N'2021-01-05T05:09:37.673' AS DateTime), 0)
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_ID], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (35, N'Digital Product Advisor & Configurator - Emerson - V2.0', N'/slk-hub/Documents/Digital Product Advisor & Configurator - Emerson - V2.0.pptx', N'Document', 0, NULL, 4, NULL, NULL, NULL, CAST(N'2021-01-05T05:11:26.437' AS DateTime), CAST(N'2021-01-05T05:11:26.437' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Customer_Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Journey] ON 

INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (1, 2000, N'The Begining', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (2, 2001, N'Inflation Model', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (3, 2003, N'Symphony', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (4, 2006, N'Configurator', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer_Journey] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Project_Team] ON 

INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (1, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 1)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (2, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 1)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (3, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 1)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (4, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 1)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (5, 1, N'Manish Khandelwal', N'Associate Group Manager - Software', N'manish.khandelwal@slkgroup.com', N'9591836816', N'/slk-hub/Images/sample_image.png', 0, 2)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (9, 1, N'Birendra Kumar', N'Senior Manager - Software', N'birendra.kumar@slkgroup.com', N'9845809994', N'/slk-hub/Images/sample_image.png', 0, 3)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (10, 1, N'Mahammad K. Ali', N'Group Manager - Software', N'mahammad.ali@slkgroup.com', N'8050017868', N'/slk-hub/Images/sample_image.png', 0, 3)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (13, 1, N'Pradeep Karkala Ramananda Rao', N'Group Manager - Software', N'pradeep.rao@slkgroup.com', N'9900713923', N'/slk-hub/Images/sample_image.png', 0, 4)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (17, 1, N'Manish Khandelwal', N'Associate Group Manager', N'manish.khandelwal@slkgroup.com', N'9591836816', N'/slk-hub/Images/sample_image.png', 0, 5)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (18, 1, N'Ravi S. Tejaswi', N'Senior Manager - Software', N'ravi.tejaswi@slkgroup.com', N'9880644744', N'/slk-hub/Images/sample_image.png', 0, 5)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (19, 1, N'Sankar Karanam', N'Manager - Software', N'sankar.karanam@slkgroup.com', N'9110807221', N'/slk-hub/Images/sample_image.png', 0, 5)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (21, 1, N'Sudeesh Madathil', N'Senior Manager - Software', N'sudeesh.madathil@slkgroup.com', N'9880404141', N'/slk-hub/Images/sample_image.png', 0, 6)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (25, 1, N'Mahesh L. Dasharath', N'Group Manager - Software', N'mahesh.dasharath@slkgroup.com', N'9916698988', N'/slk-hub/Images/sample_image.png', 0, 7)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (29, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 8)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (30, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 8)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (31, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 8)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (32, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 8)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (33, 1, N'Nagesh K P', N'Associate Vice President - Software', N'nagesh.paramesh@slkgroup.com', N'9741938747', N'/slk-hub/Images/sample_image.png', 0, 9)
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (37, 1, N'Shankaranarayana Adiga', N'Vice President - Technology', N'sn.adiga@slkgroup.com', N'9880010290', N'/slk-hub/Images/sample_image.png', 0, 10)
SET IDENTITY_INSERT [dbo].[Customer_Project_Team] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Projects] ON 

INSERT [dbo].[Customer_Projects] ([Proj_Id], [Proj_Desc], [Cust_Id], [Year], [SLK_Champ], [Description], [Create_Date], [Update_Date]) VALUES (1, N'a banking project', 2, 2013, N'bruce', N'zzz xx ccc', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer_Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Timeline] ON 

INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (1, N'Customer since - 1998', 1, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (2, N'Industry - Automation-Solutions', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (3, N'Projects 1 - Automation Engineering', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (4, N'Projects 2 Industrial Wireless Technology', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (5, N'Award - Operational Excellence', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (6, N'Fifth Third Bank is one of the largest customer account for SLK', 2, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (7, N'Over the past 15+ years, SLK has engaged with Fifth Third on several strategic and tactical initiatives and programs', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (8, N'300+ people across technologies and domain work for Fifth Third account', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (9, N'The average CSAT score is 6.33/7', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (11, N'Customer since - 1998', 3, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (12, N'Industry - Automation-Solutions', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (13, N'Projects 1 - Automation Engineering', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (14, N'Projects 2 Industrial Wireless Technology', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (15, N'Award - Operational Excellence', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (16, N'Customer since - 1998', 4, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (17, N'Industry - Automation-Solutions', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (18, N'Projects 1 - Automation Engineering', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (19, N'Projects 2 Industrial Wireless Technology', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (20, N'Award - Operational Excellence', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (21, N'Customer since - 1998', 5, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (22, N'Industry - Automation-Solutions', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (23, N'Projects 1 - Automation Engineering', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (24, N'Projects 2 Industrial Wireless Technology', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (25, N'Award - Operational Excellence', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (26, N'SLK is engaged with Worldpay (previously Vantiv) from 2010', 6, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (27, N'In this journey SLK has delivered many strategic and highly business critical projects for Worldpay such as Direct, Litle EMV, DataStage SM, QA, BPM, XAA, iQ, Mercury Integration', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (28, N'The partnership has been built on dedication, delivery and focus over the last few years and SLK becomes the strategic partner for Worldpay', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (31, N'Customer since - 1998', 7, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (32, N'Industry - Automation-Solutions', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (33, N'Projects 1 - Automation Engineering', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (34, N'Projects 2 Industrial Wireless Technology', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (35, N'Award - Operational Excellence', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (36, N'Customer since - 1998', 8, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (37, N'Industry - Automation-Solutions', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (38, N'Projects 1 - Automation Engineering', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (39, N'Projects 2 Industrial Wireless Technology', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (40, N'Award - Operational Excellence', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (41, N'Customer since - 1998', 9, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (42, N'Industry - Automation-Solutions', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (43, N'Projects 1 - Automation Engineering', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (44, N'Projects 2 Industrial Wireless Technology', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (45, N'Award - Operational Excellence', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (46, N'In early 2018, CNA began its evaluation of partners to help enable, implement and operate a best-in-class Quality Engineering organization', 10, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (47, N'SLK was one of those partners. As a frontrunner, CNA challenged SLK with its most complex, high risk pilot. With successful delivery, this began a two-year evolution of proving SLK at all levels, proving our quality of people, our dedication and our ability to stay nimble and get the job done when others couldn''t', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (48, N'Having built trust through proven results, CNA formalized its enterprise Quality Engineering and Automation partnership with SLK in March of 2020', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (49, N'The CNA/SLK partnership has been built on dedication, delivery and an equal eye on CNA’s future state of quality', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (50, N'SLK''s ability to adapt, accept feedback, and stay focused during natural head winds set a solid tone between both organizations. SLK’s focus on collaboration, cohesiveness and transparency with CNA teams and peer partners have played a significant part in enabling this success', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer_Timeline] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (1, N'Emerson', N'Emerson', 2000, N'https://www.emerson.com', N'https://www.leaderemerson.com', N'https://www.productemerson.com', N'https://www.financeemerson.com', N'/slk-hub/Images/Emerson.png', N'Emerson', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (2, N'Fifth Third Bank', N'Fifth Third Bank is a diversified financial services company headquartered in Cincinnati, Ohio, USA. The Company has $202 billion in assets and operates 1,122 full-service Banking Centers across USA', 2004, N'https://www.53.com/content/fifth-third/en.html', N'https://www.53.com/content/fifth-third/en/personal-banking/about/corporate-governance/cg-executive-officers.html', N'https://www.53.com/content/fifth-third/en.html', N'https://ir.53.com/home/default.aspx', N'/slk-hub/Images/Fifth_Third.png', N'Fifth Third', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (3, N'M and T Bank', N'M&T Bank Corporation is a bank 
holding company headquartered in Buffalo, New York, which had assets of $139.5 billion at June 30. It is one of the 20 largest commercial bank holding companies in the USA', 2005, N'https://www3.mtb.com/', N'https://newsroom.mtb.com/leadership-team', N'https://www3.mtb.com/personal', N'https://newsroom.mtb.com/financial-information', N'/slk-hub/Images/MTBank.png', N'M&T Bank', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (4, N'Regions Bank', N'Regions Financial Corporation, with $129 billion
in assets, is one of the USA’s largest full-service providers of consumer and commercial banking, wealth management, and mortgage products and services', 2014, N'https://www.regions.com/personal-banking', N'https://ir.regions.com/governance/management', N'https://www.regions.com/personal-banking', N'https://ir.regions.com/financial-information/quarterly-investor-info', N'/slk-hub/Images/Regions.png', N'Regions', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (5, N'First Tennessee', N'First Horizon Corporation, one of the largest financial services company offers commercial
banking services, as well as mortgage banking, capital markets, and transaction processing solutions. First Horizon serves customers worldwide.', 2011, N'https://www.firsthorizon.com/
', N'https://www.firsthorizon.com/Better-Together/Our-Leadership', N'https://www.firsthorizon.com/', N'https://ir.fhnc.com/investor-relations/ir-financial-highlights/', N'/slk-hub/Images/FirstTennessee.png', N'First Tennessee', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (6, N'FIS Worldpay', N'Worldpay is an American payment processing company and technology provider.
 In June 2019 it was acquired and merged into Fidelity National Information Services (FIS). The company provides payment and technology services to merchants and financial institutions in the U.S. and processes more than 20.1 billion payment transactions and approximately $726 billion in volume annually', 2010, N'https://www.fisglobal.com/en/merchant-solutions-worldpay', N'https://www.fisglobal.com/en/about-us/executive-team', N'https://www.investor.fisglobal.com/financial-information/quarterly-results', N'https://www.investor.fisglobal.com/financial-information/quarterly-results', N'/slk-hub/Images/FIS.png', N'FIS Worldpay', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (7, N'Bank of Oklahoma', N'BOK Financial Corporation is a bank holding company headquartered in the BOK Tower in Tulsa, Oklahoma, USA. The bank provide a range of deposit products, loans, and other financial services to businesses and consumers through offices and the Internet. BOK also offers trust services, electronic funds transfer services, online insurance, and other online services.', 2003, N'https://www.bankofoklahoma.com/', N'https://investor.bokf.com/Officers-and-Directors', N'https://www.bankofoklahoma.com/', N'https://investor.bokf.com/', N'/slk-hub/Images/Oklahoma.png', N'Bank of Oklahoma', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (8, N'Modine', N'Modine', 2006, N'https://www.modine.com/', N'https://www.leaderModine.com', N'https://www.productModine.com', N'https://www.financeModine.com', N'/slk-hub/Images/Modine.png', N'Modine', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (9, N'Voya', N'Voya Financial, Inc, America’s leading Retirement Company helps Americans plan, invest and protect their savings — to get ready to retire better', 2018, N'https://www.voya.com/', N'https://corporate.voya.com/company-overview/leadership-bios', N'https://www.voya.com/', N'https://investors.voya.com/financials/quarterly-earnings/default.aspx', N'/slk-hub/Images/Voya.png', N'Voya', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (10, N'CNA', N'As one of the largest U.S. Commercial Property & Casualty Insurance companies with a global footprint, CNA dedicates itself in providing insurance solutions that help solve customer’s challenges with risk and profitability, ', 2019, N'https://www.cna.com', N'https://www.cna.com/web/guest/cna/about/management', N'https://www.cna.com/web/guest/cna/products/all', N'https://investor-relations.cna.com/financial/latest-financials/default.aspx', N'/slk-hub/Images/CNA.png', N'CNA', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailNotification] ON 

INSERT [dbo].[EmailNotification] ([NotificationId], [ToEmail], [CCEmail], [Subject], [Body], [Create Date], [Update Date], [TemplateId]) VALUES (1, N'kuntal.saha@slkgroup.com,mukesh.chandra@slkgroup.com', N'triveni.g@slkgroup.com,gururaj.e@slkgroup.com', N'Notification : New video uploaded in SLK HUB', N'Dear Approver, <br /><br /> A video has been uploaded to SLK Hub by @uploadedby on @uploadedon.
         <br /><br /> Kindly verify the uploaded video and approve the action. <br /><br /><table width=50%  border=1 cellspacing=0 cellpadding=0><tr><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>Video Name</td><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>@videoname</td></tr><tr><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>Category</td><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>@category</td></tr></tr><tr><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>Current Status</td><td align=left " + "valign=middle style=padding: 15px; font - family:Arial, Helvetica, sans - serif;>Approval Pending</td></tr></table><br /><br />
         Respectfully,<br />SLK Hub Admin Team', CAST(N'2021-01-01T10:14:09.260' AS DateTime), CAST(N'2021-01-01T10:14:09.260' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EmailNotification] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Career_Growth] ON 

INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee_Career_Growth] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_External_Experience] ON 

INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100340', N'Vijay C. Kaggal', N'/slk-hub/Images/VijayCkaggal.jpg', N'Joined from BPL', N'2004', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100340', N'Vijay C. Kaggal', N'/slk-hub/Images/VijayCkaggal.jpg', N'CBU Head', N'2008', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100340', N'Vijay C. Kaggal', N'/slk-hub/Images/VijayCkaggal.jpg', N'Head – M&SC Vertical', N'2012', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100340', N'Vijay C. Kaggal', N'/slk-hub/Images/VijayCkaggal.jpg', N'Chief Strategy Officer', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee_External_Experience] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] ON 

INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Basavaraju Banakar', N'/slk-hub/Images/temp_image12.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Basavaraju Banakar', N'/slk-hub/Images/temp_image12.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Basavaraju Banakar', N'/slk-hub/Images/temp_image12.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Basavaraju Banakar', N'/slk-hub/Images/temp_image12.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Basavaraju Banakar', N'/slk-hub/Images/temp_image12.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] OFF
GO
SET IDENTITY_INSERT [dbo].[Ethos_Culture] ON 

INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'video 2', N'/slk-hub/Videos/sample-mp4-file1.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (3, N'video 3', N'/slk-hub/Videos/sample-mp4-file2.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (4, N'video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (5, N'video 1', N'/slk-hub/Videos/sample-mp4-file1.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (6, N'video 2', N'/slk-hub/Videos/sample-mp4-file2.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (7, N'video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (8, N'video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (9, N'video 1', N'/slk-hub/Videos/sample-mp4-file1.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (10, N'video 2', N'/slk-hub/Videos/sample-mp4-file2.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (11, N'video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (12, N'video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
SET IDENTITY_INSERT [dbo].[Ethos_Culture] OFF
GO
SET IDENTITY_INSERT [dbo].[Evolution_Offices_Documents] ON 

INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (1, N'The Beginning', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (2, N'Vyalikaval', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (3, N'Niran Arcade', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (4, N'Vacuum House', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (5, N'SLK 1, Yelahanka', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
SET IDENTITY_INSERT [dbo].[Evolution_Offices_Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Evolution_Strategic_Focus] ON 

INSERT [dbo].[Evolution_Strategic_Focus] ([Strategic_Id], [Description], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'Establish SLK Delivery Engine Acquire First Customer', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150)
INSERT [dbo].[Evolution_Strategic_Focus] ([Strategic_Id], [Description], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'Scale Across Customers Large Programs  CMM Certification', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150)
SET IDENTITY_INSERT [dbo].[Evolution_Strategic_Focus] OFF
GO
SET IDENTITY_INSERT [dbo].[Impact] ON 

INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (1, N'1', N'/slk-hub/Images/Emerson.png', N'Inflation Model', N'Nagesh KP', N'Case Study: Inflation Model', N'Type: New Solution/Application', N'Procurement,Forecast,Data Analysis,Reports,Under Estimation', N'Simple', N'2001')
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (2, N'1', N'/slk-hub/Images/Emerson.png', N'Product Configurator', N'Vijay KC, Zikriyar Khan, Vinayak Kamath, Niranjan', N'Case Study: Product Configurator', N'Type: New Solution/Application', N'Business Engineering,Complex Data Modelling,Complex Algorithms,BOM,Digital,Solution Standardization', N'Simple', N'2001')
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (3, N'1', N'/slk-hub/Images/Emerson.png', N'Symphony', N'SN Adiga', N'Case Study: Symphony', N'Type: Transition/Stabilize/Reengineer', N'Competitive Challenge,Business Critical,Transition from Bad Shape,Prove SLK Ability,Stabilize,Reengineer', N'Complex', N'2001')
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (4, N'10', N'/slk-hub/Images/CNA.png', N'AVO Automation', N'SN Adiga', N'Case Study: AVO Automation', N'Type: New Solution/Application', N'Achieved 100% automation,Improved the extent of automation,Reduced regression testing time and efforts,Expedited release time,Enabled business users,Low maintenance', N'Simple', N'2019')
SET IDENTITY_INSERT [dbo].[Impact] OFF
GO
SET IDENTITY_INSERT [dbo].[Learnings] ON 

INSERT [dbo].[Learnings] ([Learning_Id], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (1, N'Big Block', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 100, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
INSERT [dbo].[Learnings] ([Learning_Id], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (2, N'Data Mining', 2008, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
SET IDENTITY_INSERT [dbo].[Learnings] OFF
GO
INSERT [dbo].[logintable] ([id], [username], [password]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[logintable] ([id], [username], [password]) VALUES (2, N'admin1', N'admin1')
GO
SET IDENTITY_INSERT [dbo].[Stotefiles] ON 

INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (1, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (2, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (3, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (4, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (5, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (6, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (7, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (8, N'"CRUDController.cs"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (9, N'"CRUDController.cs"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (10, N'"CRUDController.cs"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (11, N'"CRUDController.cs"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (12, N'"CRUDController.cs"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (13, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (14, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (15, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (16, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (17, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (18, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (19, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (20, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (21, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (22, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (23, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (24, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (25, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (26, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (27, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (28, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (29, N'"sample-mp4-file.mp4"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (30, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (31, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (32, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (33, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (34, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (35, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (36, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (37, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (38, N'"sample-mp4-file.mp4"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (39, N'"sample-mp4-file.mp4"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (40, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (41, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (42, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (43, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (44, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (45, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (46, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (47, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (48, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (49, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (50, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (51, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (52, N'"debug.log"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (53, N'"Queries.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (54, N'"DB_Schema.sql"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (55, N'"god-lord-ganesha-wallpaper-preview.jpg"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (56, N'"sample-avi-file.avi"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (57, N'"sample-mov-file.mov"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (58, N'"sample-mp4-file.mp4"')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (59, N'sample-mov-file.mov')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (60, N'sample-webm-file.webm')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (61, N'sample-webm-file.webm')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (62, N'sample-mp4-file.mp4')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (63, N'sample-mp4-file.mp4')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (64, N'sample-mp4-file.mp4')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (65, N'sample-mp4-file.mp4')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (66, N'sample-avi-file.avi')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (67, N'sample-mp4-file.mp4')
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (68, N'sample-mp4-file.mp4')
SET IDENTITY_INSERT [dbo].[Stotefiles] OFF
GO
INSERT [dbo].[timestore2] ([id], [duration], [playedtill]) VALUES (0, 1234, 23)
INSERT [dbo].[timestore2] ([id], [duration], [playedtill]) VALUES (1, 98, 98)
INSERT [dbo].[timestore2] ([id], [duration], [playedtill]) VALUES (3, 0, 5.7)
INSERT [dbo].[timestore2] ([id], [duration], [playedtill]) VALUES (5, 1.608444, 5.7)
GO
ALTER TABLE [dbo].[Customer_Project_Team] ADD  CONSTRAINT [DF_Customer_Project_Team_CustomerId]  DEFAULT ((0)) FOR [CustomerId]
GO
USE [master]
GO
ALTER DATABASE [SLK_HUB_DEV] SET  READ_WRITE 
GO
