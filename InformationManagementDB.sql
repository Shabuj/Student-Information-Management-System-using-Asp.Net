USE [master]
GO
/****** Object:  Database [InformationManagementDB]    Script Date: 30/07/2020 12:14:27 AM ******/
CREATE DATABASE [InformationManagementDB] ON  PRIMARY 
( NAME = N'InformationManagementDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\InformationManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InformationManagementDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\InformationManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InformationManagementDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InformationManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InformationManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InformationManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InformationManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InformationManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InformationManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [InformationManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InformationManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InformationManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InformationManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InformationManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InformationManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InformationManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InformationManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InformationManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InformationManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InformationManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InformationManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InformationManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InformationManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InformationManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InformationManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InformationManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InformationManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InformationManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [InformationManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InformationManagementDB] SET DB_CHAINING OFF 
GO
USE [InformationManagementDB]
GO
/****** Object:  Table [dbo].[Student_tbl]    Script Date: 30/07/2020 12:14:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_tbl](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Age] [int] NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Student_tbl] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student_tbl] ON 

INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (1, N'Rahim', N'17872', N'shabujpust@gmmail.com', N'01781981698', 14, N'hakimpur')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (7, N'Rahim', N'12345', N'shabuj@gmail.com', N'01781981698', 12, N'hakimpur')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (8, N'Karim', N'150136', N'mshpust@gmail.com', N'0178881111', 16, N'Shailkupa')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (10, N'Nayan', N'101023', N'nayan@gmail.com', N'0178109809889', 12, N'Shailkupa')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (12, N'Rahima Khatun', N'60', N'aahimma@gmail.com', N'01781981698', 12, N'hakimpur')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (13, N'Rahim', N'345', N'shabujpust@gmmail.com', N'01781981698', 12, N'Shailkupa')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (15, N'Shabuj Hossain', N'79', N'shabujpust@gmmail.com', N'01781981698', 12, N'hakimpur')
INSERT [dbo].[Student_tbl] ([StudentId], [StudentName], [RegNo], [Email], [MobileNo], [Age], [Address]) VALUES (16, N'Adnan', N'3456', N'shabujpust@gmmail.com', N'01781981698', 12, N'Shailkupa')
SET IDENTITY_INSERT [dbo].[Student_tbl] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Student_tbl]    Script Date: 30/07/2020 12:14:28 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Student_tbl] ON [dbo].[Student_tbl]
(
	[RegNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [InformationManagementDB] SET  READ_WRITE 
GO
