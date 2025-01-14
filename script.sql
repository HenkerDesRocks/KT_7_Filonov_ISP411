USE [master]
GO
/****** Object:  Database [MasterFloor]    Script Date: 21.11.2024 10:21:13 ******/
CREATE DATABASE [MasterFloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterFloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterFloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterFloor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterFloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterFloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterFloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterFloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterFloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterFloor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterFloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterFloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterFloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterFloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterFloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterFloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET  MULTI_USER 
GO
ALTER DATABASE [MasterFloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterFloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterFloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterFloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterFloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterFloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterFloor] SET QUERY_STORE = OFF
GO
USE [MasterFloor]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCof]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCof](
	[id] [int] NOT NULL,
	[productId] [int] NULL,
	[typeCof] [decimal](4, 2) NULL,
 CONSTRAINT [PK_MaterialCof] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialPrc]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialPrc](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[percentage] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_MaterialPrc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OblName]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OblName](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OblName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInf]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInf](
	[id] [int] NOT NULL,
	[productTypeId] [int] NOT NULL,
	[productNameId] [int] NOT NULL,
	[article] [int] NOT NULL,
	[minPrice] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_ProductInf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[id] [int] NOT NULL,
	[name] [nvarchar](90) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[id] [int] NOT NULL,
	[productNameId] [int] NULL,
	[partnerNameId] [int] NULL,
	[quentity] [int] NULL,
	[dateOfSale] [date] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.11.2024 10:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[partnerTypeId] [int] NOT NULL,
	[partnerNameId] [int] NOT NULL,
	[oblId] [int] NOT NULL,
	[cityId] [int] NOT NULL,
	[streetId] [int] NOT NULL,
	[director] [nvarchar](50) NOT NULL,
	[email] [nvarchar](70) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[postIndex] [int] NOT NULL,
	[building] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([id], [name]) VALUES (1, N' Приморск')
INSERT [dbo].[City] ([id], [name]) VALUES (2, N' Реутов')
INSERT [dbo].[City] ([id], [name]) VALUES (3, N' Северодвинск')
INSERT [dbo].[City] ([id], [name]) VALUES (4, N' Старый Оскол')
INSERT [dbo].[City] ([id], [name]) VALUES (5, N' Юрга')
GO
INSERT [dbo].[MaterialCof] ([id], [productId], [typeCof]) VALUES (1, 1, CAST(2.35 AS Decimal(4, 2)))
INSERT [dbo].[MaterialCof] ([id], [productId], [typeCof]) VALUES (2, 2, CAST(5.15 AS Decimal(4, 2)))
INSERT [dbo].[MaterialCof] ([id], [productId], [typeCof]) VALUES (3, 3, CAST(4.34 AS Decimal(4, 2)))
INSERT [dbo].[MaterialCof] ([id], [productId], [typeCof]) VALUES (5, 4, CAST(1.50 AS Decimal(4, 2)))
GO
INSERT [dbo].[MaterialPrc] ([id], [type], [percentage]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(5, 2)))
INSERT [dbo].[MaterialPrc] ([id], [type], [percentage]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(5, 2)))
INSERT [dbo].[MaterialPrc] ([id], [type], [percentage]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(5, 2)))
INSERT [dbo].[MaterialPrc] ([id], [type], [percentage]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(5, 2)))
INSERT [dbo].[MaterialPrc] ([id], [type], [percentage]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(5, 2)))
GO
INSERT [dbo].[OblName] ([id], [name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[OblName] ([id], [name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[OblName] ([id], [name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[OblName] ([id], [name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[OblName] ([id], [name]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[PartnerType] ([id], [name]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([id], [name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([id], [name]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([id], [name]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[ProductInf] ([id], [productTypeId], [productNameId], [article], [minPrice]) VALUES (1, 3, 4, 8758385, CAST(4456.90 AS Decimal(8, 2)))
INSERT [dbo].[ProductInf] ([id], [productTypeId], [productNameId], [article], [minPrice]) VALUES (2, 3, 1, 8858958, CAST(7330.99 AS Decimal(8, 2)))
INSERT [dbo].[ProductInf] ([id], [productTypeId], [productNameId], [article], [minPrice]) VALUES (3, 1, 2, 7750282, CAST(1799.33 AS Decimal(8, 2)))
INSERT [dbo].[ProductInf] ([id], [productTypeId], [productNameId], [article], [minPrice]) VALUES (4, 1, 3, 7028748, CAST(3890.41 AS Decimal(8, 2)))
INSERT [dbo].[ProductInf] ([id], [productTypeId], [productNameId], [article], [minPrice]) VALUES (5, 4, 5, 5012543, CAST(5450.59 AS Decimal(8, 2)))
GO
INSERT [dbo].[ProductName] ([id], [name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[ProductSale] ([id], [productNameId], [partnerNameId], [quentity], [dateOfSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[ProductType] ([id], [name]) VALUES (1, N'Ламинат')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (2, N'Массивная доска')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (4, N'Пробковое покрытие')
GO
INSERT [dbo].[Street] ([id], [name]) VALUES (1, N' Лесная')
INSERT [dbo].[Street] ([id], [name]) VALUES (2, N' Парковая')
INSERT [dbo].[Street] ([id], [name]) VALUES (3, N' Рабочая')
INSERT [dbo].[Street] ([id], [name]) VALUES (4, N' Свободы')
INSERT [dbo].[Street] ([id], [name]) VALUES (5, N' Строителей')
GO
INSERT [dbo].[User] ([id], [partnerTypeId], [partnerNameId], [oblId], [cityId], [streetId], [director], [email], [phone], [postIndex], [building]) VALUES (1, 1, 1, 3, 5, 1, N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', 652050, 15)
INSERT [dbo].[User] ([id], [partnerTypeId], [partnerNameId], [oblId], [cityId], [streetId], [director], [email], [phone], [postIndex], [building]) VALUES (2, 3, 3, 1, 3, 5, N'Петров Василий Петрович', N'vppetrov@vl.ru', N'987 123 56 78', 164500, 18)
INSERT [dbo].[User] ([id], [partnerTypeId], [partnerNameId], [oblId], [cityId], [streetId], [director], [email], [phone], [postIndex], [building]) VALUES (3, 4, 5, 4, 1, 2, N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'812 223 32 00', 188910, 21)
INSERT [dbo].[User] ([id], [partnerTypeId], [partnerNameId], [oblId], [cityId], [streetId], [director], [email], [phone], [postIndex], [building]) VALUES (4, 2, 4, 5, 2, 4, N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', 143960, 51)
INSERT [dbo].[User] ([id], [partnerTypeId], [partnerNameId], [oblId], [cityId], [streetId], [director], [email], [phone], [postIndex], [building]) VALUES (5, 1, 2, 2, 4, 3, N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', 309500, 122)
GO
ALTER TABLE [dbo].[MaterialCof]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCof_ProductType] FOREIGN KEY([productId])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[MaterialCof] CHECK CONSTRAINT [FK_MaterialCof_ProductType]
GO
ALTER TABLE [dbo].[ProductInf]  WITH CHECK ADD  CONSTRAINT [FK_ProductInf_ProductName] FOREIGN KEY([productNameId])
REFERENCES [dbo].[ProductName] ([id])
GO
ALTER TABLE [dbo].[ProductInf] CHECK CONSTRAINT [FK_ProductInf_ProductName]
GO
ALTER TABLE [dbo].[ProductInf]  WITH CHECK ADD  CONSTRAINT [FK_ProductInf_ProductType] FOREIGN KEY([productTypeId])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[ProductInf] CHECK CONSTRAINT [FK_ProductInf_ProductType]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_PartnerName] FOREIGN KEY([partnerNameId])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_PartnerName]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ProductName] FOREIGN KEY([productNameId])
REFERENCES [dbo].[ProductName] ([id])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ProductName]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_City] FOREIGN KEY([cityId])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_City]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_OblName] FOREIGN KEY([oblId])
REFERENCES [dbo].[OblName] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_OblName]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_PartnerName] FOREIGN KEY([partnerNameId])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_PartnerName]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_PartnerType] FOREIGN KEY([partnerTypeId])
REFERENCES [dbo].[PartnerType] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_PartnerType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Street] FOREIGN KEY([streetId])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Street]
GO
USE [master]
GO
ALTER DATABASE [MasterFloor] SET  READ_WRITE 
GO
