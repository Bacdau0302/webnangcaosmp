USE [master]
GO
/****** Object:  Database [db_Shopmypham]    Script Date: 10/9/2020 3:21:02 AM ******/
CREATE DATABASE [db_Shopmypham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Shopmypham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_Shopmypham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Shopmypham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_Shopmypham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db_Shopmypham] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Shopmypham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Shopmypham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Shopmypham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Shopmypham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Shopmypham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Shopmypham] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Shopmypham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Shopmypham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Shopmypham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Shopmypham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Shopmypham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Shopmypham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Shopmypham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Shopmypham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Shopmypham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Shopmypham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_Shopmypham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Shopmypham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Shopmypham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Shopmypham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Shopmypham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Shopmypham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Shopmypham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Shopmypham] SET RECOVERY FULL 
GO
ALTER DATABASE [db_Shopmypham] SET  MULTI_USER 
GO
ALTER DATABASE [db_Shopmypham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Shopmypham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Shopmypham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Shopmypham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Shopmypham] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_Shopmypham', N'ON'
GO
ALTER DATABASE [db_Shopmypham] SET QUERY_STORE = OFF
GO
USE [db_Shopmypham]
GO
/****** Object:  Table [dbo].[tblChitiethoadon]    Script Date: 10/9/2020 3:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChitiethoadon](
	[FK_iHoadonID] [int] NOT NULL,
	[FK_iSanphamID] [int] NOT NULL,
	[iSoluong] [int] NOT NULL,
	[mDongiaban] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoadon]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoadon](
	[PK_iHoadonID] [int] IDENTITY(1,1) NOT NULL,
	[dNgaylap] [date] NULL,
	[FK_iKhanhhangID] [int] NOT NULL,
	[FK_iNhanvienID] [int] NOT NULL,
	[mTongtien] [money] NULL,
	[sDiachigiao] [nvarchar](500) NOT NULL,
	[sGhichu] [nvarchar](500) NOT NULL,
	[sSodienthoaigiao] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iHoadonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaihang]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaihang](
	[PK_iLoaihangID] [int] IDENTITY(1,1) NOT NULL,
	[sTenloaihang] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iLoaihangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhasanxuat]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhasanxuat](
	[PK_iNhasanxuatID] [int] IDENTITY(1,1) NOT NULL,
	[sTennhasanxuat] [nvarchar](150) NOT NULL,
	[sDiachi] [nvarchar](500) NULL,
	[sEmail] [varchar](100) NOT NULL,
	[sSodienthoai] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iNhasanxuatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuyen]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuyen](
	[PK_iQuyenID] [int] IDENTITY(1,1) NOT NULL,
	[sTenquyen] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iQuyenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanpham]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanpham](
	[PK_iSanphamID] [int] IDENTITY(1,1) NOT NULL,
	[sTensanpham] [nvarchar](500) NOT NULL,
	[sMota] [nvarchar](500) NULL,
	[sCongdung] [ntext] NULL,
	[mDongia] [money] NOT NULL,
	[sLinkanh] [nvarchar](500) NULL,
	[FK_iLoaihangID] [int] NOT NULL,
	[FK_iNhasanxuatID] [int] NOT NULL,
	[FK_iNguoithemID] [int] NOT NULL,
	[FK_iNguoicapnhapID] [int] NOT NULL,
	[iSoluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iSanphamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/9/2020 3:21:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[PK_iUserID] [int] IDENTITY(1,1) NOT NULL,
	[sUsername] [varchar](50) NOT NULL,
	[sPassword] [varchar](50) NOT NULL,
	[sHoten] [nvarchar](100) NOT NULL,
	[dNgaysinh] [date] NOT NULL,
	[sEmail] [varchar](100) NOT NULL,
	[sSodienthoai] [varchar](15) NOT NULL,
	[sDiachi] [nvarchar](500) NULL,
	[FK_iQuyenID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[sUsername] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblHoadon] ADD  DEFAULT (getdate()) FOR [dNgaylap]
GO
ALTER TABLE [dbo].[tblHoadon] ADD  DEFAULT ((0)) FOR [mTongtien]
GO
ALTER TABLE [dbo].[tblSanpham] ADD  DEFAULT ((0)) FOR [iSoluong]
GO
ALTER TABLE [dbo].[tblChitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_tblChitiethoadon_tblHoadon] FOREIGN KEY([FK_iHoadonID])
REFERENCES [dbo].[tblHoadon] ([PK_iHoadonID])
GO
ALTER TABLE [dbo].[tblChitiethoadon] CHECK CONSTRAINT [FK_tblChitiethoadon_tblHoadon]
GO
ALTER TABLE [dbo].[tblChitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_tblChitiethoadon_tblSanpham] FOREIGN KEY([FK_iSanphamID])
REFERENCES [dbo].[tblSanpham] ([PK_iSanphamID])
GO
ALTER TABLE [dbo].[tblChitiethoadon] CHECK CONSTRAINT [FK_tblChitiethoadon_tblSanpham]
GO
ALTER TABLE [dbo].[tblHoadon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoadon_tblUser] FOREIGN KEY([FK_iKhanhhangID])
REFERENCES [dbo].[tblUser] ([PK_iUserID])
GO
ALTER TABLE [dbo].[tblHoadon] CHECK CONSTRAINT [FK_tblHoadon_tblUser]
GO
ALTER TABLE [dbo].[tblHoadon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoadon_tblUser1] FOREIGN KEY([FK_iNhanvienID])
REFERENCES [dbo].[tblUser] ([PK_iUserID])
GO
ALTER TABLE [dbo].[tblHoadon] CHECK CONSTRAINT [FK_tblHoadon_tblUser1]
GO
ALTER TABLE [dbo].[tblSanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanpham_tblLoaihang] FOREIGN KEY([FK_iLoaihangID])
REFERENCES [dbo].[tblLoaihang] ([PK_iLoaihangID])
GO
ALTER TABLE [dbo].[tblSanpham] CHECK CONSTRAINT [FK_tblSanpham_tblLoaihang]
GO
ALTER TABLE [dbo].[tblSanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanpham_tblNhasanxuat] FOREIGN KEY([FK_iNhasanxuatID])
REFERENCES [dbo].[tblNhasanxuat] ([PK_iNhasanxuatID])
GO
ALTER TABLE [dbo].[tblSanpham] CHECK CONSTRAINT [FK_tblSanpham_tblNhasanxuat]
GO
ALTER TABLE [dbo].[tblSanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanpham_tblUser] FOREIGN KEY([FK_iNguoithemID])
REFERENCES [dbo].[tblUser] ([PK_iUserID])
GO
ALTER TABLE [dbo].[tblSanpham] CHECK CONSTRAINT [FK_tblSanpham_tblUser]
GO
ALTER TABLE [dbo].[tblSanpham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanpham_tblUser1] FOREIGN KEY([FK_iNguoicapnhapID])
REFERENCES [dbo].[tblUser] ([PK_iUserID])
GO
ALTER TABLE [dbo].[tblSanpham] CHECK CONSTRAINT [FK_tblSanpham_tblUser1]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblQuyen] FOREIGN KEY([FK_iQuyenID])
REFERENCES [dbo].[tblQuyen] ([PK_iQuyenID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblQuyen]
GO
USE [master]
GO
ALTER DATABASE [db_Shopmypham] SET  READ_WRITE 
GO
