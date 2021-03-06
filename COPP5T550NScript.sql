USE [master]
GO
/****** Object:  Database [Liver_Cancer]    Script Date: 28-04-2022 10:11:02 ******/
DROP DATABASE Liver_Cancer;
CREATE DATABASE [Liver_Cancer]
GO
ALTER DATABASE [Liver_Cancer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Liver_Cancer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Liver_Cancer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Liver_Cancer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Liver_Cancer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Liver_Cancer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Liver_Cancer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Liver_Cancer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Liver_Cancer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Liver_Cancer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Liver_Cancer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Liver_Cancer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Liver_Cancer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Liver_Cancer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Liver_Cancer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Liver_Cancer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Liver_Cancer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Liver_Cancer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Liver_Cancer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Liver_Cancer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Liver_Cancer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Liver_Cancer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Liver_Cancer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Liver_Cancer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Liver_Cancer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Liver_Cancer] SET  MULTI_USER 
GO
ALTER DATABASE [Liver_Cancer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Liver_Cancer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Liver_Cancer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Liver_Cancer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Liver_Cancer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Liver_Cancer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Liver_Cancer] SET QUERY_STORE = OFF
GO
USE [Liver_Cancer]
GO
/****** Object:  Table [dbo].[tblDoctorsDetail]    Script Date: 28-04-2022 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoctorsDetail](
	[DctId] [int] IDENTITY(1,1) NOT NULL,
	[LiverType] [int] NOT NULL,
	[DoctorName] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDoctors] PRIMARY KEY CLUSTERED 
(
	[DctId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLiverCancer]    Script Date: 28-04-2022 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLiverCancer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cancer_Name] [nvarchar](50) NULL,
	[OrigDate] [datetime] NULL,
 CONSTRAINT [PK_tblLiverCancer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPatients]    Script Date: 28-04-2022 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPatients](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[Cancertype] [int] NULL,
	[DctId] [int] NULL,
 CONSTRAINT [PK_tblPatients] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblDoctorsDetail] ON 

INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (1, 1, N'Robert', 39, N'Male', N'#626,AB')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (2, 2, N'Richard', 42, N'Male', N'#828,CD')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (3, 3, N'Edward', 44, N'Male', N'#621,EF')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (4, 4, N'Cory', 36, N'Female', N'#716,GH')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (5, 5, N'Sarah', 34, N'Female', N'#566,IJ')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (6, 6, N'Jennifer', 39, N'Female', N'#865,KL')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (7, 7, N'Lisa', 44, N'Female', N'#663,MN')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (8, 8, N'Ronald', 48, N'Male', N'#756,OP')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (9, 1, N'Eric', 34, N'Male', N'#818,QR')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (10, 1, N'Robert', 39, N'Male', N'#626,AB')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (11, 2, N'Richard', 42, N'Male', N'#828,CD')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (12, 3, N'Edward', 44, N'Male', N'#621,EF')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (13, 4, N'Cory', 36, N'Female', N'#716,GH')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (14, 5, N'Sarah', 34, N'Female', N'#566,IJ')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (15, 6, N'Jennifer', 39, N'Female', N'#865,KL')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (16, 7, N'Lisa', 44, N'Female', N'#663,MN')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (17, 8, N'Ronald', 48, N'Male', N'#756,OP')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (18, 1, N'Eric', 34, N'Male', N'#818,QR')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (19, 1, N'Robert', 39, N'Male', N'#626,AB')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (20, 2, N'Richard', 42, N'Male', N'#828,CD')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (21, 3, N'Edward', 44, N'Male', N'#621,EF')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (22, 4, N'Cory', 36, N'Female', N'#716,GH')
INSERT [dbo].[tblDoctorsDetail] ([DctId], [LiverType], [DoctorName], [Age], [Gender], [Address]) VALUES (23, 5, N'Sarah', 34, N'Female', N'#566,IJ')
SET IDENTITY_INSERT [dbo].[tblDoctorsDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLiverCancer] ON 

INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (1, N'Angiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (2, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (3, N'Hemangiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (4, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (5, N'Hemangioma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (6, N'Hepatic Adenoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (7, N'Focal Nodular Hyperplasia', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (8, N'Angiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (9, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (10, N'Hemangiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (11, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (12, N'Hemangioma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (13, N'Hepatic Adenoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (14, N'Focal Nodular Hyperplasia', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (15, N'Angiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (16, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (17, N'Hemangiosarcoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (18, N'Hepatoblastoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (19, N'Hemangioma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (20, N'Hepatic Adenoma', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
INSERT [dbo].[tblLiverCancer] ([ID], [Cancer_Name], [OrigDate]) VALUES (21, N'Focal Nodular Hyperplasia', CAST(N'2022-04-27T21:35:54.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblLiverCancer] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPatients] ON 

INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (1, N'John', 44, N'Male', 1, 1)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (2, N'Maria', 41, N'Female', 2, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (3, N'Frank', 48, N'Male', 3, 3)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (4, N'Daniel', 51, N'Male', 4, 4)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (5, N'Henry', 45, N'Male', 5, 5)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (6, N'Mandy', 42, N'Female', 4, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (7, N'Katie', 31, N'Female', 3, 6)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (8, N'Shawn', 52, N'Male', 2, 9)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (9, N'Bill', 68, N'Male', 1, 7)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (10, N'Lana', 66, N'Female', 8, 8)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (11, N'John', 44, N'Male', 1, 1)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (12, N'Maria', 41, N'Female', 2, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (13, N'Frank', 48, N'Male', 3, 3)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (14, N'Daniel', 51, N'Male', 4, 4)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (15, N'Henry', 45, N'Male', 5, 5)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (16, N'Mandy', 42, N'Female', 4, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (17, N'Katie', 31, N'Female', 3, 6)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (18, N'Shawn', 52, N'Male', 2, 9)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (19, N'Bill', 68, N'Male', 1, 7)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (20, N'Lana', 66, N'Female', 8, 8)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (21, N'John', 44, N'Male', 1, 1)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (22, N'Maria', 41, N'Female', 2, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (23, N'Frank', 48, N'Male', 3, 3)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (24, N'Daniel', 51, N'Male', 4, 4)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (25, N'Henry', 45, N'Male', 5, 5)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (26, N'Mandy', 42, N'Female', 4, 2)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (27, N'Katie', 31, N'Female', 3, 6)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (28, N'Shawn', 52, N'Male', 2, 9)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (29, N'Bill', 68, N'Male', 1, 7)
INSERT [dbo].[tblPatients] ([PatientID], [Name], [Age], [Gender], [Cancertype], [DctId]) VALUES (30, N'Lana', 66, N'Female', 8, 8)
SET IDENTITY_INSERT [dbo].[tblPatients] OFF
GO
ALTER TABLE [dbo].[tblPatients]  WITH CHECK ADD  CONSTRAINT [FK_tblPatients_tblDoctorsDetail] FOREIGN KEY([DctId])
REFERENCES [dbo].[tblDoctorsDetail] ([DctId])
GO
ALTER TABLE [dbo].[tblPatients] CHECK CONSTRAINT [FK_tblPatients_tblDoctorsDetail]
GO
USE [master]
GO
ALTER DATABASE [Liver_Cancer] SET  READ_WRITE 
GO
