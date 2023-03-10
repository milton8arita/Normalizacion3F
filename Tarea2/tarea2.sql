USE [master]
GO
/****** Object:  Database [Tarea2]    Script Date: 20/2/2023 09:25:47 ******/
CREATE DATABASE [Tarea2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tarea2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tarea2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tarea2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tarea2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tarea2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tarea2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tarea2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tarea2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tarea2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tarea2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tarea2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tarea2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tarea2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tarea2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tarea2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tarea2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tarea2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tarea2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tarea2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tarea2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tarea2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tarea2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tarea2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tarea2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tarea2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tarea2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tarea2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tarea2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tarea2] SET RECOVERY FULL 
GO
ALTER DATABASE [Tarea2] SET  MULTI_USER 
GO
ALTER DATABASE [Tarea2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tarea2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tarea2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tarea2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tarea2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tarea2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tarea2', N'ON'
GO
ALTER DATABASE [Tarea2] SET QUERY_STORE = OFF
GO
USE [Tarea2]
GO
/****** Object:  Table [dbo].[Combustible]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combustible](
	[id] [int] NOT NULL,
	[descripcion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos](
	[id] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[combustiblesid] [int] NULL,
	[pais] [int] NULL,
	[valor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lugar](
	[id] [int] NOT NULL,
	[descripcion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monedas](
	[id] [int] NOT NULL,
	[descripcion] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [int] NOT NULL,
	[descripcion] [varchar](30) NULL,
	[monedaid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peaje]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peaje](
	[nombre] [varchar](30) NULL,
	[fecha] [datetime] NULL,
	[vehiculo] [varchar](30) NULL,
	[tarifa] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeajeDatos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeajeDatos](
	[id] [int] NOT NULL,
	[lugar] [int] NULL,
	[vehiculos] [int] NULL,
	[tarifa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos](
	[id] [int] NOT NULL,
	[nombre] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[precioRuta]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[precioRuta](
	[id] [int] NOT NULL,
	[precios] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precios]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precios](
	[id] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[precio] [int] NULL,
	[combustible] [varchar](40) NULL,
	[pais] [varchar](30) NULL,
	[moneda] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreciosPlatillos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreciosPlatillos](
	[id] [int] NOT NULL,
	[precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestauranteDatos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestauranteDatos](
	[id] [int] NOT NULL,
	[nombre] [int] NULL,
	[nombreP] [int] NULL,
	[precios] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurantes]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurantes](
	[id] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ruta]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ruta](
	[id] [int] NOT NULL,
	[ruta] [varchar](30) NULL,
	[descripcion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifa]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifa](
	[id] [int] NOT NULL,
	[tarifap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[id] [int] NOT NULL,
	[ruta] [int] NULL,
	[precios] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehiculos]    Script Date: 20/2/2023 09:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehiculos](
	[id] [int] NOT NULL,
	[tipo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Combustible] ([id], [descripcion]) VALUES (1, N'superior')
INSERT [dbo].[Combustible] ([id], [descripcion]) VALUES (2, N'regular')
INSERT [dbo].[Combustible] ([id], [descripcion]) VALUES (3, N'diesel')
GO
INSERT [dbo].[Datos] ([id], [fecha], [combustiblesid], [pais], [valor]) VALUES (1, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 1, 1, 105)
INSERT [dbo].[Datos] ([id], [fecha], [combustiblesid], [pais], [valor]) VALUES (2, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 2, 1, 95)
INSERT [dbo].[Datos] ([id], [fecha], [combustiblesid], [pais], [valor]) VALUES (3, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 3, 1, 120)
GO
INSERT [dbo].[Lugar] ([id], [descripcion]) VALUES (1, N'Zambrano')
GO
INSERT [dbo].[Monedas] ([id], [descripcion]) VALUES (1, N'lempira')
INSERT [dbo].[Monedas] ([id], [descripcion]) VALUES (2, N'lempira')
INSERT [dbo].[Monedas] ([id], [descripcion]) VALUES (3, N'colones')
GO
INSERT [dbo].[Pais] ([id], [descripcion], [monedaid]) VALUES (1, N'honduras', 2)
INSERT [dbo].[Pais] ([id], [descripcion], [monedaid]) VALUES (2, N'guatemala', 3)
INSERT [dbo].[Pais] ([id], [descripcion], [monedaid]) VALUES (3, N'usa', 1)
GO
INSERT [dbo].[PeajeDatos] ([id], [lugar], [vehiculos], [tarifa]) VALUES (1, 1, 1, 1)
INSERT [dbo].[PeajeDatos] ([id], [lugar], [vehiculos], [tarifa]) VALUES (2, 1, 2, 2)
INSERT [dbo].[PeajeDatos] ([id], [lugar], [vehiculos], [tarifa]) VALUES (3, 1, 3, 3)
GO
INSERT [dbo].[Platillos] ([id], [nombre]) VALUES (1, N'Hamburguesas')
INSERT [dbo].[Platillos] ([id], [nombre]) VALUES (2, N'Pollo')
INSERT [dbo].[Platillos] ([id], [nombre]) VALUES (3, N'Carne')
INSERT [dbo].[Platillos] ([id], [nombre]) VALUES (4, N'Pizza')
INSERT [dbo].[Platillos] ([id], [nombre]) VALUES (5, N'Pollo pizza')
GO
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (1, 10)
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (2, 12)
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (3, 25)
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (4, 11)
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (5, 20)
INSERT [dbo].[precioRuta] ([id], [precios]) VALUES (6, 30)
GO
INSERT [dbo].[Precios] ([id], [fecha], [precio], [combustible], [pais], [moneda]) VALUES (1, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 105, N'superior', N'honduras', N'lps')
INSERT [dbo].[Precios] ([id], [fecha], [precio], [combustible], [pais], [moneda]) VALUES (2, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 95, N'regular', N'honduras', N'lps')
INSERT [dbo].[Precios] ([id], [fecha], [precio], [combustible], [pais], [moneda]) VALUES (3, CAST(N'2023-01-30T00:00:00.000' AS DateTime), 120, N'diesel', N'honduras', N'lps')
GO
INSERT [dbo].[PreciosPlatillos] ([id], [precio]) VALUES (1, 150)
INSERT [dbo].[PreciosPlatillos] ([id], [precio]) VALUES (2, 200)
INSERT [dbo].[PreciosPlatillos] ([id], [precio]) VALUES (3, 300)
INSERT [dbo].[PreciosPlatillos] ([id], [precio]) VALUES (4, 300)
INSERT [dbo].[PreciosPlatillos] ([id], [precio]) VALUES (5, 100)
GO
INSERT [dbo].[RestauranteDatos] ([id], [nombre], [nombreP], [precios]) VALUES (1, 1, 1, 1)
INSERT [dbo].[RestauranteDatos] ([id], [nombre], [nombreP], [precios]) VALUES (2, 1, 2, 2)
INSERT [dbo].[RestauranteDatos] ([id], [nombre], [nombreP], [precios]) VALUES (3, 1, 3, 3)
INSERT [dbo].[RestauranteDatos] ([id], [nombre], [nombreP], [precios]) VALUES (4, 2, 4, 4)
INSERT [dbo].[RestauranteDatos] ([id], [nombre], [nombreP], [precios]) VALUES (5, 2, 5, 5)
GO
INSERT [dbo].[Restaurantes] ([id], [nombre]) VALUES (1, N'Dennys')
INSERT [dbo].[Restaurantes] ([id], [nombre]) VALUES (2, N'pizza hut')
GO
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (1, N'centro', N'salida')
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (2, N'centro', N'satelite')
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (3, N'centro', N'progreso')
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (4, N'salida', N'satelite')
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (5, N'salida', N'progreso')
INSERT [dbo].[ruta] ([id], [ruta], [descripcion]) VALUES (6, N'satelite', N'progreso')
GO
INSERT [dbo].[tarifa] ([id], [tarifap]) VALUES (1, 23)
INSERT [dbo].[tarifa] ([id], [tarifap]) VALUES (2, 25)
INSERT [dbo].[tarifa] ([id], [tarifap]) VALUES (3, 30)
GO
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (1, 1, 1)
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (2, 2, 2)
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (3, 3, 3)
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (4, 4, 4)
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (5, 5, 5)
INSERT [dbo].[Transporte] ([id], [ruta], [precios]) VALUES (6, 6, 6)
GO
INSERT [dbo].[vehiculos] ([id], [tipo]) VALUES (1, N'turismo')
INSERT [dbo].[vehiculos] ([id], [tipo]) VALUES (2, N'3 ejes')
INSERT [dbo].[vehiculos] ([id], [tipo]) VALUES (3, N'4 ejes')
GO
ALTER TABLE [dbo].[Datos]  WITH CHECK ADD FOREIGN KEY([combustiblesid])
REFERENCES [dbo].[Combustible] ([id])
GO
ALTER TABLE [dbo].[Datos]  WITH CHECK ADD FOREIGN KEY([pais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD FOREIGN KEY([monedaid])
REFERENCES [dbo].[Monedas] ([id])
GO
ALTER TABLE [dbo].[PeajeDatos]  WITH CHECK ADD FOREIGN KEY([lugar])
REFERENCES [dbo].[Lugar] ([id])
GO
ALTER TABLE [dbo].[PeajeDatos]  WITH CHECK ADD FOREIGN KEY([tarifa])
REFERENCES [dbo].[tarifa] ([id])
GO
ALTER TABLE [dbo].[PeajeDatos]  WITH CHECK ADD FOREIGN KEY([vehiculos])
REFERENCES [dbo].[vehiculos] ([id])
GO
ALTER TABLE [dbo].[RestauranteDatos]  WITH CHECK ADD FOREIGN KEY([nombre])
REFERENCES [dbo].[Restaurantes] ([id])
GO
ALTER TABLE [dbo].[RestauranteDatos]  WITH CHECK ADD FOREIGN KEY([nombreP])
REFERENCES [dbo].[Platillos] ([id])
GO
ALTER TABLE [dbo].[RestauranteDatos]  WITH CHECK ADD FOREIGN KEY([precios])
REFERENCES [dbo].[PreciosPlatillos] ([id])
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD FOREIGN KEY([precios])
REFERENCES [dbo].[precioRuta] ([id])
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD FOREIGN KEY([ruta])
REFERENCES [dbo].[ruta] ([id])
GO
USE [master]
GO
ALTER DATABASE [Tarea2] SET  READ_WRITE 
GO
