USE [master]
GO
/****** Object:  Database [pruebaAliadosDB]    Script Date: 18/02/2021 8:09:52 a. m. ******/
CREATE DATABASE [pruebaAliadosDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pruebaAliadosDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pruebaAliadosDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pruebaAliadosDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pruebaAliadosDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pruebaAliadosDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pruebaAliadosDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pruebaAliadosDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pruebaAliadosDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pruebaAliadosDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pruebaAliadosDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pruebaAliadosDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET RECOVERY FULL 
GO
ALTER DATABASE [pruebaAliadosDB] SET  MULTI_USER 
GO
ALTER DATABASE [pruebaAliadosDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pruebaAliadosDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pruebaAliadosDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pruebaAliadosDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pruebaAliadosDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pruebaAliadosDB', N'ON'
GO
ALTER DATABASE [pruebaAliadosDB] SET QUERY_STORE = OFF
GO
USE [pruebaAliadosDB]
GO
/****** Object:  Table [dbo].[agreement]    Script Date: 18/02/2021 8:09:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agreement](
	[id] [nvarchar](10) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[description] [nchar](100) NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_agreement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[agreement] ([id], [name], [description], [amount]) VALUES (N'1020', N'oscar miticanoy               ', N'no convenio                                                                                         ', 200000)
INSERT [dbo].[agreement] ([id], [name], [description], [amount]) VALUES (N'1022', N'juan camilo m                 ', NULL, 100000)
USE [master]
GO
ALTER DATABASE [pruebaAliadosDB] SET  READ_WRITE 
GO
