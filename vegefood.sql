USE [master]
GO
/****** Object:  Database [VEGEFOOD]    Script Date: 6/4/2020 3:08:04 PM ******/
CREATE DATABASE [VEGEFOOD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VegeFood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\VegeFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VegeFood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\VegeFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VEGEFOOD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VEGEFOOD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VEGEFOOD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VEGEFOOD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VEGEFOOD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VEGEFOOD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VEGEFOOD] SET ARITHABORT OFF 
GO
ALTER DATABASE [VEGEFOOD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VEGEFOOD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VEGEFOOD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VEGEFOOD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VEGEFOOD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VEGEFOOD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VEGEFOOD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VEGEFOOD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VEGEFOOD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VEGEFOOD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VEGEFOOD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VEGEFOOD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VEGEFOOD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VEGEFOOD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VEGEFOOD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VEGEFOOD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VEGEFOOD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VEGEFOOD] SET RECOVERY FULL 
GO
ALTER DATABASE [VEGEFOOD] SET  MULTI_USER 
GO
ALTER DATABASE [VEGEFOOD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VEGEFOOD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VEGEFOOD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VEGEFOOD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VEGEFOOD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VEGEFOOD', N'ON'
GO
ALTER DATABASE [VEGEFOOD] SET QUERY_STORE = OFF
GO
USE [VEGEFOOD]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABOUT_US]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABOUT_US](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About_Us] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserAddress]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserAddress](
	[Id] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[AddreddLine] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY_POST]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY_POST](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](150) NULL,
	[Category_Description] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
	[ParentId] [int] NULL,
	[Metatitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY_PRODUCTS]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY_PRODUCTS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](150) NULL,
	[Category_Description] [nvarchar](25) NULL,
	[ParenID] [int] NULL,
	[DateCreate] [date] NULL,
	[MetaTitle] [nvarchar](150) NULL,
 CONSTRAINT [PK_Category_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT_POST]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT_POST](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content_Comment] [nvarchar](500) NULL,
	[Cutomer_ID] [int] NULL,
	[Post_ID] [int] NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTACT]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTACT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Subject] [nvarchar](150) NULL,
	[Message] [nvarchar](250) NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NULL,
	[Password] [nvarchar](350) NULL,
	[FullName] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Address] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETAIL_ORDER]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAIL_ORDER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NULL,
	[Quantity] [int] NULL,
	[Size] [nvarchar](150) NULL,
	[Price] [int] NULL,
	[Price_Sale] [int] NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
	[OrderId] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_Detail_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMAGE_SALE]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGE_SALE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](100) NULL,
	[Category] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_IMAGE_SALE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGS]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Action] [nvarchar](150) NULL,
	[FullName] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
	[UserID] [nvarchar](128) NULL,
	[Address_Computer] [nvarchar](250) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](70) NULL,
	[Status] [bit] NULL,
	[Target] [nvarchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MY_SHOP]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MY_SHOP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[ShopName] [nvarchar](150) NULL,
	[Website] [nvarchar](50) NULL,
	[Lat] [nvarchar](150) NULL,
	[Long] [nvarchar](150) NULL,
 CONSTRAINT [PK_MyShop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](150) NULL,
	[Address] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
	[PhoneNumber] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POST]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POST](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](250) NULL,
	[Content_Post] [nvarchar](max) NULL,
	[DateCreate] [date] NULL,
	[UserId] [nvarchar](128) NULL,
	[Category_Post_ID] [int] NULL,
	[Status] [bit] NULL,
	[MetaTitle] [nvarchar](150) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](150) NULL,
	[Product_Description] [nvarchar](250) NULL,
	[Product_Image] [nvarchar](150) NULL,
	[Product_Image_XML] [xml] NULL,
	[Price] [int] NULL,
	[Price_Sale] [int] NULL,
	[Quantity] [int] NULL,
	[Category_Product_ID] [int] NULL,
	[MetaTitle] [nvarchar](150) NULL,
	[Status] [bit] NULL,
	[DateCreate] [date] NULL,
	[UserID] [nvarchar](128) NULL,
	[Views] [int] NULL,
	[Weight] [nvarchar](150) NULL,
	[SizeId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE_PRODUCT]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE_PRODUCT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [nvarchar](150) NULL,
 CONSTRAINT [PK_Size_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SLIDE_IMAGE]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SLIDE_IMAGE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreate] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAG]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAG](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post_ID] [int] NULL,
	[Tag_ID] [int] NULL,
 CONSTRAINT [PK_TAG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAG_POST]    Script Date: 6/4/2020 3:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAG_POST](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[DateCreate] [date] NULL,
	[UserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_TAG_POST] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202005210408348_InitialCreate', N'IIS.Framework.EF.ApplicationDbContext', 0x1F8B0800000000000400ED5DDD6EE3BA11BE2FD0771074D51639567EBA8B6D609F831C27698DE60FEBEC41EF16B4443BC24A948E44E52428FA64BDE823F5154A4AD40F4951A26CD99217C5028B881CCE0C871FA9196A26F9EFBFFF33FDE9CDF78C5718C56E8066E6D9E4D43420B203C7459B9999E0F50F9FCC9F7EFCFDEFA6378EFF66FC92D35D503A3212C533F305E3F0D2B262FB05FA209EF8AE1D0571B0C6133BF02DE004D6F9E9E95FACB3330B121626E16518D3CF09C2AE0FD307F2380F900D439C00EF3E70A017B376D2B34CB91A0FC08771086C3833178BE5E43622CFBF05D1B7C9CDAD695C792E207A2CA1B7360D80508001265A5E7E89E1124701DA2C43D200BCE7F71012BA35F062C8B4BF2CC97527727A4E2762950373567612E3C0EFC8F0EC8259C612876F655FB3B01CB1DD0DB1317EA7B34EED3733AF1C2782716C1AA2ACCBB917513AD9BA1336E6C4E07A4E0A2810C4D07F27C63CF17012C11982098E8077623C252BCFB5FF0EDF9F836F10CD50E27955F58882A48F6B204D4F5110C208BF7F866BA6F4C2310D8B1F6789038B619531D97C080008924DE31EBCDD41B4C12F04E3E79F4CE3D67D834EDEC210F105B904F864108E12F2F84014062B0F16FD56A34C82B66808B9E90239CE9D8B608370F2A396F06659F380ECDBE8BD673953AB446A237E170E4C9B3E071E6C02F17DB145AEE2F001E2493E7092B12C015EE57862688F2BE17FAE0BFF8BB3D5FAE2D3878FC0B9F8F86778F1E17BDE0AF4FF06A9E71F3EF622F501BCBA9B74E96BB62239E53E432FED8D5FDC307B3D70EBFD9591DD46814F9F797C65BD5F974112D974328192E419441B8877843465D53FAC73AEE387767E7A5AEDA47442DBEC84A10EE85CDFFDCAD546DC551892C54BA1452DD2CD19E0C7FEDF29685BFB5B427EA0D350907CE303D7EB41AC8614E2BDAFDDC887857D7F0E08E401EAACF31388630224E76F207ED9BB2FB384761291ADB1C4C00FF72EEDE92540F021F15774C71D4E566F4BF3FC5B700B6C1C4437888EDA99DF5D607F0B127C839C6B80E1176CE70CE9E3B3EBEB33E8459D2BDB2641CE2D01337452273767B840F8E27CAB5860682788056EB0DE11124EF2AF15EAD21F5212496E919AB2CE3B6A527BEE01D7D7D33927552B9C51B46ACBC8BAAA7A176C5CA4A76A4EAA5635A36855959175559532D3D39451AA154D095AF5CCA87A738DD315EADF374ED98EDF39DECDDB511D6115332EC9C10EFF0A118CC8E9EB3C018C6184CA1518EBD547BA7C54E8FE2F3EA8A45F8097F42D6AABDD901E02FDEF8694EDF87743AA26697E751DEA4C69448C393161AF455F1F8CB6EF3941B3436F076E9ADFE7F5A76ABB5CC57160BBE92EA8B92B64373DBCFEC4F534DAAF7DB2D9885747646204E82E7DE5911632375304D523BA861EC4D0B8B2B36F017310DBC091CD4826E474502C7FA3D628565E21F1CAFD499249900E233A08D0D82D263BD54558DE162EB2DD1078AD5612466ABEC2E8DC0B1962CF350C21A2025B2DA123BCFEC6882A50C81116A5CD4253AB82B86620AA3D6DD5B26BB8DDE5EA4BD739074166BBBF5F5531FFECB4175CB65AEB00F06C35878E0ECA2BD02150CA622BDDF51703ADB1E15388F014A7278B320E0253DE6203609437C9D1019445D4BA0010C3EBB1015488EB1500658EFF4100CA5B6C0080F226393A80661729BAEB2FDCAA8C0D9EFC75CEE19DCF46730D804DCE1E23836616219131988C80910CCFEB15ED846FB8E60A81E8C96E116216908910A1CC9710F3B7CCC4B92B0333D1EDB39A59B01B47693C1F70B5301171D8C4B0C46A0B53962020CF4CDC931D94CB2FAD1BB5638E4807B6F90573235BF6FA10D8566024F3AE264A5408D5E91422BEB5C2EC6266051AA47DA2151557F8D400423CFFF8896B18A5E1A3896C1BCDB8AF63E45799215B95064BB547691576E54EEEDD4E39E6DB8D54177674093C76328F102428C0944FA6772BE55BB8DD4A75BE6F17EF77272B099EAAC24AF9647AB712DBCBED46AAF1BF3A78603B9988F7967A3A94F2ABCFE2C55EF44DAD2C4B9A354C2D453AF5F41E84A18B3695F46AD6622CB3DCEAF90FCBEE69C77EC6C3B2396B8B6E4821090711D840A197A6963AF0D68D627C0D3058017AF13B777C89ACD68D51BC26739182A722AF63FECACC07D09FD96B50910E5DE3F3B1C1847AE353C731FDA6269FAFF2488366B9030F44355FF0E68197F848EDC2AA47E70E679583CA095573E1928BABACB80E7D7E4502719557D128F3995A825925F7595A3D29C8E1D1A08515D5D9D101289CF7DA1D2DCDC3F703992C63A53A3E6B19CDB2C8C7672F4B54C403DB2F939AC57EF767FE65A3CA45F5B563B0655305065D8E5D21E2DAE2F86DE3B09F3D552680567994ADFA9C584267950D6BEAC8A392132831ABF4E973E5D336AB3CF91E7D8E426E6695A5D0D541CB6A0626A764B5632B7E0A8BD653E84B90732EABDCE55E7DCE35D99755D635DD5BF0AED159ECEBE088C8099A9C3B2277777395E43D5AB68EE620AD09437B7B0166574EBBBD01153CC6ECE05652C83897B46CEEC88B258949CC58FB28B1A4BC4FD8124BD93DE36E5852F0509F3A5CEA157FE834E68BA97972F954DCC1DE944FA6E6D70DB17BC5857499209214D28B4B05E1F260CA02F9F6826D29B2CF484C23372379A9BFC718FA134A3059FEEACD3D17D2233C27B807C85DC318673984E6F9E9D9B950F53D9E0A6C2B8E1DAFE62244AB0C7B811CF83633FF69FCEBF069C2E81544F60B88E4A4BD9D32014BB6EAD9D27197C6E21F5FB3A127C6634456FDD2382576D8559B9AF2E85CA53FF8E0ED8F55865B944077E0B55D99F3F1E220739EBAA2804E9AFE94369F188BF80B727F4D48C73331A88087B486A69FAA488D3ADCDD36E7C10B5C87DE787CD96B276DB2A13B68B37531ECF1EE36B1D254DFE0F9C8B4B9F30E9335E12A4F6BE72770DDBED074E5E25E8A4C777A23D41692EEC4B1A658B42F7EBD9850550CBA0D2F6521A8431E715A08DA6DB2F585A1DBA8A62C0A755177666249A8FEFECC470EF846AC09EC0F7138A6766EAD4D3B6AF7542A61DBCD3995CAD4F6E99F3695A2EDE62C1D5989576F2FF19A0AAEEF222CDB7BD9D6582AB5CAF061D802AD43D664357C3EFDDE4AB1C690999D5F1E0D55607590746B6596CDC893FEBB954D8D004E3559C7C317471DFAF4527DFB1A39D8BA95408D0C6CCC711CBED0E9D060537D1C1B39D83A95338D0C6B43796403234DDB291BBC38494EFE1597B5B6EAA8A9E828FBC838339D5540963E8B4CB2DF674267AB5B9BC487129234BE5B2DB23ED75B25AC44A5526049D23C4F3DC1D20E95CD2A52348BED3657E659344E96D1348B55946634C9662F9A46D98CA659B6A2E06188E2AADA9283BA82B79603B329CFF5F88AA9F862A7E60ABEFA88AB3A5E717E8CB9566A6B0328F7AA2201EC984AA37A310A77882832998EA712AA1793F4798274A87C92939288AF52F95B13C45F8ADD4DC982FEE509046DCE4B296816681DE4CE92A0514E22DCB1DE430C1CE2C25C45D85D031B936EFA0929FD5558E9B53CFD90B982CE023D26384C309932F4571E77654D9DAE26F9697917AFF3F431A44F711F53206ABAF4D3DB23FA39713DA7D0FBB6E65657C1827A73EC830D5D4B4C3FDC6CDE0B4E0F815833A462C4CC5738A1CFD00F3DC22C7E444BF00AB7D18DC0EF0E6E80FD5EDEE1AB98B42F046FF6E9B50B3611F063C6A31C4F1E09861DFFEDC7FF0165FB2EED72650000, N'6.4.0')
SET IDENTITY_INSERT [dbo].[ABOUT_US] ON 

INSERT [dbo].[ABOUT_US] ([Id], [Title], [Description], [Image], [DateCreate], [Status]) VALUES (2, N'Welcome to Vegefoods an eCommerce website', N'Far far away, behind the word mountains, far the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.', N'205313691about.jpg', CAST(N'2020-05-30' AS Date), 1)
SET IDENTITY_INSERT [dbo].[ABOUT_US] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'fd632212-5ef1-4391-af6d-feba783ad518', N'Admin')
INSERT [dbo].[AspNetUserAddress] ([Id], [UserId], [AddreddLine], [Country]) VALUES (N'47c43770-2d8a-4e33-9415-26ab7cfc0a1d', N'c3e9e432-92a6-47d8-8415-d930b324f3b6', N'Việt Nam', N'Việt Nam')
INSERT [dbo].[AspNetUserAddress] ([Id], [UserId], [AddreddLine], [Country]) VALUES (N'bdcca354-b7b4-4d12-bdd0-a4b5fc375c1b', N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', N'Viet Nam ', N'Viet Nam')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', N'fd632212-5ef1-4391-af6d-feba783ad518')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c3e9e432-92a6-47d8-8415-d930b324f3b6', N'fd632212-5ef1-4391-af6d-feba783ad518')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', N'Vũ Tất Bình', N'binhhp20@gmail.com', 1, N'AJ9oM3YWoXkTHb0vq8OpPAWsXb+32eyZliIK7GNwx589QYy7kbnkypmSXvV91xG5wQ==', N'2849fa10-1fa3-4b13-a7e8-46200c8d1ffa', NULL, 0, 0, CAST(N'2020-05-31T18:31:10.877' AS DateTime), 0, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c3e9e432-92a6-47d8-8415-d930b324f3b6', N'Ngô Đăng Tín', N'vutatbinhhp12@gmail.com', 0, N'AKGVdfCHHqz8+xow+6BkiTKVkuQ9QfeViv9LfEtSGHK+jTfyFrDVC8XS0ruiqyomNg==', N'ff18d4ca-2954-487a-8743-831469923eae', NULL, 0, 0, NULL, 0, 0, N'tin123')
SET IDENTITY_INSERT [dbo].[CATEGORY_POST] ON 

INSERT [dbo].[CATEGORY_POST] ([Id], [Category_Name], [Category_Description], [DateCreate], [ParentId], [Metatitle]) VALUES (13, N'Thực phẩm sạch', N'Thực phẩm ', CAST(N'2020-05-24' AS Date), 6, N'thucphamsach')
INSERT [dbo].[CATEGORY_POST] ([Id], [Category_Name], [Category_Description], [DateCreate], [ParentId], [Metatitle]) VALUES (14, N'Rau củ quả', N'Rau củ quả', CAST(N'2020-05-24' AS Date), 6, N'raucuqua')
SET IDENTITY_INSERT [dbo].[CATEGORY_POST] OFF
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCTS] ON 

INSERT [dbo].[CATEGORY_PRODUCTS] ([Id], [Category_Name], [Category_Description], [ParenID], [DateCreate], [MetaTitle]) VALUES (3, N'Vegetable', N'vegetable', 4, CAST(N'2020-05-29' AS Date), N'vegetable')
INSERT [dbo].[CATEGORY_PRODUCTS] ([Id], [Category_Name], [Category_Description], [ParenID], [DateCreate], [MetaTitle]) VALUES (4, N'Tubers', N'tubers', 4, CAST(N'2020-05-29' AS Date), N'tubers')
INSERT [dbo].[CATEGORY_PRODUCTS] ([Id], [Category_Name], [Category_Description], [ParenID], [DateCreate], [MetaTitle]) VALUES (5, N'Fruit', N'fruit', 4, CAST(N'2020-05-29' AS Date), N'fruit')
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCTS] OFF
SET IDENTITY_INSERT [dbo].[COMMENT_POST] ON 

INSERT [dbo].[COMMENT_POST] ([Id], [Content_Comment], [Cutomer_ID], [Post_ID], [DateCreate], [Status], [ParentID]) VALUES (10, N'Good job!', 2, 17, CAST(N'2020-06-02' AS Date), 1, 0)
INSERT [dbo].[COMMENT_POST] ([Id], [Content_Comment], [Cutomer_ID], [Post_ID], [DateCreate], [Status], [ParentID]) VALUES (11, N'I love you', 2, 17, CAST(N'2020-06-02' AS Date), 1, 10)
INSERT [dbo].[COMMENT_POST] ([Id], [Content_Comment], [Cutomer_ID], [Post_ID], [DateCreate], [Status], [ParentID]) VALUES (12, N'ádqwe', 2, 18, CAST(N'2020-06-02' AS Date), 1, 0)
INSERT [dbo].[COMMENT_POST] ([Id], [Content_Comment], [Cutomer_ID], [Post_ID], [DateCreate], [Status], [ParentID]) VALUES (13, N'qưeqrewrqwer', 2, 18, CAST(N'2020-06-02' AS Date), 1, 12)
SET IDENTITY_INSERT [dbo].[COMMENT_POST] OFF
SET IDENTITY_INSERT [dbo].[CONTACT] ON 

INSERT [dbo].[CONTACT] ([Id], [Name], [Email], [Subject], [Message], [DateCreate], [Status]) VALUES (1, N'qưe', N'ưqe', N'ưqe', N'ưqe', CAST(N'2020-05-30' AS Date), 0)
INSERT [dbo].[CONTACT] ([Id], [Name], [Email], [Subject], [Message], [DateCreate], [Status]) VALUES (2, N'qưe', N'qưe', N'qưe', N'qưe', CAST(N'2020-05-30' AS Date), 0)
INSERT [dbo].[CONTACT] ([Id], [Name], [Email], [Subject], [Message], [DateCreate], [Status]) VALUES (3, N'qưe', N'binhhp20@gmail.com', N'qưe', N'qưe', CAST(N'2020-05-30' AS Date), 0)
INSERT [dbo].[CONTACT] ([Id], [Name], [Email], [Subject], [Message], [DateCreate], [Status]) VALUES (4, N'Binh', N'binhhp20@gmail.com', N'Hỗ trợ tìm kiếm hàng hóa', N'không tìm thấy sản phẩm', CAST(N'2020-06-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[CONTACT] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([Id], [UserName], [Password], [FullName], [Email], [Address], [PhoneNumber], [DateCreate], [Status]) VALUES (2, N'binhhp20', N'DdBJCDZRlm1egplPKQtiBqZpoIjaRuykwzpFQtuT642//j0ml9D2G5uV8F+yZv06+38qogFlstNBI3BTGaat/3JPInA5G9enNIS003HMTEjDRcbsuUExTs9IJ0cSKRaJ', N'Vũ Tất Bình', N'binhhp20@gmail.com', N'99 Nguyễn Chí Thanh Láng Thượng Đống Đa Hà Nội', N'0988401921', CAST(N'2020-06-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[DETAIL_ORDER] ON 

INSERT [dbo].[DETAIL_ORDER] ([Id], [Product_ID], [Quantity], [Size], [Price], [Price_Sale], [DateCreate], [Status], [OrderId], [Total]) VALUES (20, 8, 5, N'Small', 1200000, 0, CAST(N'2020-06-02' AS Date), 0, 15, 6000000)
INSERT [dbo].[DETAIL_ORDER] ([Id], [Product_ID], [Quantity], [Size], [Price], [Price_Sale], [DateCreate], [Status], [OrderId], [Total]) VALUES (21, 9, 1, N'Small', 4000000, 0, CAST(N'2020-06-02' AS Date), 0, 15, 4000000)
SET IDENTITY_INSERT [dbo].[DETAIL_ORDER] OFF
SET IDENTITY_INSERT [dbo].[IMAGE_SALE] ON 

INSERT [dbo].[IMAGE_SALE] ([Id], [Image], [Category], [Title], [Description]) VALUES (4, N'202734520bg_3.jpg', N'Best for you', N'Sale only today', N'Price most cheap')
SET IDENTITY_INSERT [dbo].[IMAGE_SALE] OFF
SET IDENTITY_INSERT [dbo].[LOGS] ON 

INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (1, N'Bài viết giới thiệu', N'Thêm mới', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (2, N'Bài viết giới thiệu', N'Xóa', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (3, N'Kích thước sản phẩm', N'Thêm mới', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (4, N'Kích thước sản phẩm', N'Xóa', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (5, N'Bài viết giới thiệu', N'Cập nhật', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (6, N'Comment của khách hàng', N'Xóa', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (7, N'Comment của khách hàng', N'Xóa', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (8, N'Chủ đề sản phẩm', N'Cập nhật', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (9, N'Chủ đề sản phẩm', N'Cập nhật', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (10, N'Chủ đề sản phẩm', N'Cập nhật', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (11, N'Sản phẩm', N'Thêm mới', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
INSERT [dbo].[LOGS] ([Id], [Description], [Action], [FullName], [DateCreate], [UserID], [Address_Computer]) VALUES (12, N'Sản phẩm', N'Xóa', N'admin', CAST(N'2020-06-02' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[LOGS] OFF
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([Id], [Text], [Link], [Status], [Target]) VALUES (3, N'Home', N'/www.vegefood.com/home', 1, N'_self')
INSERT [dbo].[MENU] ([Id], [Text], [Link], [Status], [Target]) VALUES (4, N'Product', N'/www.vegefood.com/product', 1, N'_self')
INSERT [dbo].[MENU] ([Id], [Text], [Link], [Status], [Target]) VALUES (5, N'About', N'/www.vegefood.com/about', 1, N'_self')
INSERT [dbo].[MENU] ([Id], [Text], [Link], [Status], [Target]) VALUES (6, N'Blog', N'/www.vegefood.com/blog', 1, N'_self')
INSERT [dbo].[MENU] ([Id], [Text], [Link], [Status], [Target]) VALUES (7, N'Contact', N'/www.vegefood.com/contact', 1, N'_self')
SET IDENTITY_INSERT [dbo].[MENU] OFF
SET IDENTITY_INSERT [dbo].[MY_SHOP] ON 

INSERT [dbo].[MY_SHOP] ([Id], [Address], [Phone], [Email], [Password], [ShopName], [Website], [Lat], [Long]) VALUES (4, N'78 Cầu giấy Hà Nội ', N'0988401921', N'vetements8796@gmail.com', N'Binhhp20@@', N'vegefood brand 2', N'.', N'20.069347', N'105.970721')
INSERT [dbo].[MY_SHOP] ([Id], [Address], [Phone], [Email], [Password], [ShopName], [Website], [Lat], [Long]) VALUES (8, N'99 Nguyễn Chí Thanh Láng Thượng Đống Đa Hà Nội', N'0988401921', N'vegefood8796@gmail.com', N'binhhp20', N'vegefood brand 1', N'www.vegefood.com', N'21.017895', N'105.807652')
SET IDENTITY_INSERT [dbo].[MY_SHOP] OFF
SET IDENTITY_INSERT [dbo].[ORDER] ON 

INSERT [dbo].[ORDER] ([Id], [FullName], [Address], [Email], [PhoneNumber], [DateCreate]) VALUES (15, N'binhhp20', N'99 Nguyễn Chí Thanh Láng Thượng Đống Đa Hà Nội', N'binhhp20@gmail.com', N'0988401921', CAST(N'2020-06-02' AS Date))
SET IDENTITY_INSERT [dbo].[ORDER] OFF
SET IDENTITY_INSERT [dbo].[POST] ON 

INSERT [dbo].[POST] ([Id], [Image], [Title], [Description], [Content_Post], [DateCreate], [UserId], [Category_Post_ID], [Status], [MetaTitle]) VALUES (17, N'202002386Gold-Coast.jpg', N'Gold Coast Packing supplies 600 fresh produce boxes to residents', N'In response to shelter in place orders due to COVID-19, Gold Coast Packing', N'<p>In response to shelter in place orders due to COVID-19,<a href="http://goldcoastpack.com/" onclick="javascript:window.open(''http://goldcoastpack.com/''); return false;" rel="noopener"><strong>&nbsp;</strong>Gold Coast Packing</a>, a leading grower, shipper and processor of fresh produce, partnered with sister winery,<a href="https://www.cdowinery.com/" onclick="javascript:window.open(''https://www.cdowinery.com/''); return false;" rel="noopener">&nbsp;Costa de Oro</a>, to offer local central coast residents produce boxes as a convenient and safe way to pick-up essential produce.</p>

<p>Since mid-March, Gold Coast has sold over 600 boxes, equating to about 6,000 pounds of fresh produce. Each box sells for $18 and features an assortment of fresh, locally grown vegetables that have been washed, trimmed and are ready to use. Vegetables include salad spinach, cauliflower and broccoli florets, whole brussel sprouts, broccoli slaw, and cilantro.<img alt="" src="https://vegetablegrowersnews.com/wp-content/uploads/2020/05/GoldCoast_Logo-825x510.png" style="height:210px; width:340px" /></p>

<p>&ldquo;We created this produce box to offer our community a convenient and easy way to get fresh produce essentials without going to the grocery store. When shelter in place orders were issued, we saw people were uncomfortable getting out and were looking for delivery or pickup options with minimal contact,&rdquo; said Crystal Chavez, marketing coordinator at Gold Coast Packing. &ldquo;We&rsquo;re thrilled with the success we&rsquo;ve had so far and look forward to continuing to serve our community through this unprecedented time, and beyond.&rdquo;</p>

<p>For local Central Coast residents, Gold Coast is still accepting orders and will continue to offer this package while demand remains high. To place an order, call the winery at (805) 922-1468 by no later than Wednesday. Pickup is Friday and Saturday from 2:00 p.m. to 6:00 p.m. Costa de Oro winery is also offering 30% off all wine to those who place a produce box order.</p>

<p>For further more information on Gold Coast Packing, visit<a href="http://goldcoastpack.com/" onclick="javascript:window.open(''http://goldcoastpack.com/''); return false;" rel="noopener">&nbsp;www.goldcoastpack.com</a>.</p>

<p>Gold Coast Packing, Inc., is a grower, shipper and processor, located in the ideal growing region of Santa Maria, California. The company&rsquo;s mission is to produce fresh, safe, nutritious, and innovative value-added products while promoting growth and prosperity for its customers, employees, and company. Gold Coast Packing has dedicated itself to ensuring that its customers receive the freshest and highest quality products for nearly 40 years.</p>
', CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 13, 1, N'gold-coast-packing-supplies-600-fresh-produce-boxes-to-residents')
INSERT [dbo].[POST] ([Id], [Image], [Title], [Description], [Content_Post], [DateCreate], [UserId], [Category_Post_ID], [Status], [MetaTitle]) VALUES (18, N'202054521Leafy-greens.jpg', N'Leafy greens group responds to report identifying foodborne illness source', N'California leafy greens growers are pledging to incorporate findings from a report issued today by the U.S. Food and Drug Administration (FDA) into its ongoing process to strengthen required food safety practices on farms.', N'<p>&nbsp;</p>

<p>California leafy greens growers are pledging to incorporate findings from a<a href="https://www.fda.gov/food/outbreaks-foodborne-illness/factors-potentially-contributing-contamination-romaine-lettuce-implicated-three-outbreaks-e-coli?utm_campaign=CFSANCU_LeafyGreens_05212020&amp;utm_medium=email&amp;utm_source=Eloqua" onclick="javascript:window.open(''https://www.fda.gov/food/outbreaks-foodborne-illness/factors-potentially-contributing-contamination-romaine-lettuce-implicated-three-outbreaks-e-coli?utm_campaign=CFSANCU_LeafyGreens_05212020&amp;utm_medium=email&amp;utm_source=Eloqua''); return false;" rel="noreferrer noopener">&nbsp;report issued today by the U.S. Food and Drug Administration (FDA) into its ongoing process to strengthen required food safety practices on farms</a>.</p>

<p>Leafy greens farmers work hard every day to follow the best-known food safety practices. Clearly, we need to look even beyond our own farms to help us prevent future outbreaks. Information from this new FDA report will be extremely valuable as we further strengthen our practices both in and around our farms.</p>

<p>The FDA report issued today relates to what was actually three distinct outbreaks all occurring in the fall of 2019. In the report, identifies adjacent or nearby land used for cattle grazing as the most likely contributing factor associated with these three outbreaks.</p>

<p>The leafy greens industry hopes to learn more about how leafy greens are being exposed to pathogens like e. coli in the environment and on land surrounding farms through a series of research projects. A project to gather samples and collect data is now underway in Arizona in cooperation with producers, the University of Arizona and the FDA.</p>

<p>A similar study is being developed to perform research in California&rsquo;s central coast growing areas with an eye toward considering preventative controls that may be necessary on land surrounding our farms as well as additional controls on the leafy greens farms themselves. The study would be done in cooperation with FDA, the California Department of Food and Agriculture, academia and the leafy greens industry. We&rsquo;re hopeful this kind of work can be done to provide us with answers to help prevent future outbreaks.&rdquo;</p>

<p>Even before these last outbreaks occurred, the leafy greens industry had launched a comprehensive process to review and update required food safety practices included under the California LGMA.</p>

<p>A series of subcommittees has been appointed to review practices in all areas. Water continues to be a focus of this effort and the industry is in the process of considering some 30 changes to further update practices for water used in farming leafy greens. Other subcommittees on soil amendments and sanitation have been meeting for weeks and a subcommittee on proximity to animals and adjacent land use is being appointed this week. All subcommittees are suggesting updates to strengthen existing requirements.</p>

<p>More information about the collaborative process for updating required food safety practices for leafy greens can be found&nbsp;<a href="https://lgma.ca.gov/news/strengthen-food-safety-practices" onclick="javascript:window.open(''https://lgma.ca.gov/news/strengthen-food-safety-practices''); return false;">here</a>.</p>

<p>The goal is to create unified standards for how leafy greens are farmed using the best science and expertise available. We will be relying on information supplied by FDA, scientists and others to help us improve these practices so we can further protect consumers.</p>

<p>The real benefit of the LGMA system is that farmers clearly understand what practices are required. When new information is learned, the standards can quickly be updated and adopted throughout the industry.</p>

<p><em>&ndash; Scott Horsfall,&nbsp;<a href="https://lgma.ca.gov/" onclick="javascript:window.open(''https://lgma.ca.gov/''); return false;" rel="noopener">California Leafy Green Products Handler Marketing Agreement (LGMA)</a></em></p>
', CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 14, 1, N'leafy-greens-group-responds-to-report-identifying')
SET IDENTITY_INSERT [dbo].[POST] OFF
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (6, N'Bell Pepper', N'Bell Pepper', N'205728307product-1.jpg', NULL, 120000, 48000, 5, 4, N'bell-pepper', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 30, N'600 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (7, N'Strawberry', N'Strawberry', N'205808645product-2.jpg', NULL, 120000, 0, 30, 3, N'strawberry', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 12, N'600 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (8, N'Green Beans', N'Green Beans', N'205850133product-3.jpg', NULL, 1200000, 0, 4, 3, N'green-beans', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 4, N'500 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (9, N'Purple Cabbage', N'Purple Cabbage', N'205920428product-4.jpg', NULL, 4000000, 0, 45, 3, N'purple-cabbage', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 1, N'400 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (10, N'Tomatoe', N'Tomatoe', N'205950268product-5.jpg', NULL, 45000, 10000, 12, 3, N'tomatoe', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 1, N'450 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (11, N'Brocolli', N'Brocolli', N'200025259product-6.jpg', NULL, 60000, 0, 56, 3, N'brocolli', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 8, N'350 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (12, N'Carrots', N'Carrots', N'200052724product-7.jpg', NULL, 74000, 0, 23, 3, N'carrots', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 2, N'300 kg', NULL)
INSERT [dbo].[PRODUCT] ([Id], [Product_Name], [Product_Description], [Product_Image], [Product_Image_XML], [Price], [Price_Sale], [Quantity], [Category_Product_ID], [MetaTitle], [Status], [DateCreate], [UserID], [Views], [Weight], [SizeId]) VALUES (13, N'Fruit Juice', N'Fruit Juice', N'200122910product-8.jpg', NULL, 34000, 0, 100, 3, N'fruit-juice', 1, CAST(N'2020-05-30' AS Date), N'7942a6b2-06d5-4864-8c7d-fda37f642a9b', 0, N'250 kg', NULL)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[SIZE_PRODUCT] ON 

INSERT [dbo].[SIZE_PRODUCT] ([Id], [Size]) VALUES (3, N'Small')
INSERT [dbo].[SIZE_PRODUCT] ([Id], [Size]) VALUES (4, N'Medium')
INSERT [dbo].[SIZE_PRODUCT] ([Id], [Size]) VALUES (5, N'Large')
INSERT [dbo].[SIZE_PRODUCT] ([Id], [Size]) VALUES (6, N'Extra Large')
SET IDENTITY_INSERT [dbo].[SIZE_PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[SLIDE_IMAGE] ON 

INSERT [dbo].[SLIDE_IMAGE] ([Id], [Image], [Title], [Description], [DateCreate], [Status]) VALUES (4, N'204238585bg_1.jpg', N'We serve Fresh Vegestables &amp; Fruits', N'We deliver organic vegetables &amp; fruits', CAST(N'2020-05-30' AS Date), 1)
INSERT [dbo].[SLIDE_IMAGE] ([Id], [Image], [Title], [Description], [DateCreate], [Status]) VALUES (5, N'204257474bg_2.jpg', N'100% Fresh &amp; Organic Foods', N'We deliver organic vegetables &amp; fruits', CAST(N'2020-05-30' AS Date), 1)
SET IDENTITY_INSERT [dbo].[SLIDE_IMAGE] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserAddress]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FullNameIndex]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE NONCLUSTERED INDEX [FullNameIndex] ON [dbo].[AspNetUsers]
(
	[FullName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/4/2020 3:08:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserAddress]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserAddress_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserAddress] CHECK CONSTRAINT [FK_dbo.AspNetUserAddress_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCTS] FOREIGN KEY([Category_Product_ID])
REFERENCES [dbo].[CATEGORY_PRODUCTS] ([Id])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCTS]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_SIZE_PRODUCT] FOREIGN KEY([SizeId])
REFERENCES [dbo].[SIZE_PRODUCT] ([Id])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_SIZE_PRODUCT]
GO
USE [master]
GO
ALTER DATABASE [VEGEFOOD] SET  READ_WRITE 
GO
