USE [SamokatA]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 31.05.2023 22:13:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[IdManu] [int] IDENTITY(1,1) NOT NULL,
	[NameManu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[IdManu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 31.05.2023 22:13:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Samokat]    Script Date: 31.05.2023 22:13:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Samokat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ProductType] [int] NOT NULL,
	[Manufactur] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[MaxLoad] [int] NOT NULL,
	[PowerReserve] [int] NOT NULL,
	[MaxSpeed] [float] NOT NULL,
	[MaxWatt] [int] NOT NULL,
 CONSTRAINT [PK_Samokats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (1, N'MIDWAY')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (2, N'Xiaomi')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (3, N'Ninebot')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (4, N'HIPER')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (5, N'OKAI')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (6, N'KUGOO')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (7, N'TRIBE')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (8, N'G1')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (9, N'Tordin')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (10, N'SmartOne')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (11, N'Accesstyle')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (12, N'Mizar')
INSERT [dbo].[Manufacturer] ([IdManu], [NameManu]) VALUES (13, N'Halten')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([IdType], [TypeName]) VALUES (1, N'Взрослый')
INSERT [dbo].[ProductType] ([IdType], [TypeName]) VALUES (2, N'Детский')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Samokat] ON 

INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (81, N'MIDWAY Yamato 0809', 1, 1, 19900, N'hrrpv3r5.kis.webp', 120, 20, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (82, N'Xiaomi Mijia M365 Pro', 1, 2, 46488, N'ow2ovevl.oib.webp', 100, 45, 25, 300)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (83, N'MIDWAY Yamato 0809', 1, 1, 19900, N'4osmrt43.5mz.webp', 120, 20, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (84, N'Ninebot KickScooter A6', 2, 3, 7590, N'3qe51kzc.u51.webp', 40, 5, 12, 50)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (85, N'HIPER Slim VX900', 1, 4, 12990, N'kthsojex.nog.webp', 110, 16, 24, 250)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (86, N'HIPER Slim VX561', 1, 4, 10990, N'mya2pumt.fak.webp', 100, 15, 20, 230)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (87, N'MIDWAY Air PRO', 1, 1, 57900, N'h0kh5rjn.mt0.webp', 120, 45, 40, 1200)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (88, N'OKAI ES520', 1, 5, 29990, N'nb4hsa2j.jdd.webp', 120, 55, 25, 300)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (89, N'MIDWAY Yamato 0810', 1, 2, 20900, N'u53rxet2.3me.webp', 100, 25, 25, 250)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (90, N'KUGOO S8 Pro', 1, 6, 23835, N'zpupq4if.pbb.webp', 120, 23, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (91, N'KUGOO First', 2, 6, 10800, N'fe1swp3f.ari.webp', 50, 8, 16, 100)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (92, N'Ninebot KickScooter C20', 2, 3, 14490, N'2rh1msfi.oqr.webp', 75, 20, 20, 150)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (93, N'Ninebot KickScooter F40', 1, 3, 39990, N'dwpi42a5.hyx.webp', 120, 40, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (94, N'HIPER Slim VX561', 1, 4, 10990, N'hk4fhn2j.p55.webp', 100, 15, 20, 230)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (95, N'Xiaomi Mi Electric Scooter Pro 2', 1, 2, 75900, N'24em4z0h.c31.webp', 100, 45, 25, 600)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (96, N'TRIBE Himba Pro', 1, 7, 35990, N'arz4b5vg.5dh.webp', 120, 25, 25, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (97, N'G1 plus X. X.', 2, 8, 11760, N'401f1bsz.py1.webp', 50, 8, 6, 80)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (98, N'KUGOO Max Speed', 1, 6, 35072, N'mmb4h5h0.3j4.webp', 120, 35, 60, 600)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (99, N'Tordin Hermes Black', 1, 9, 29990, N'ui42tewu.dkt.webp', 120, 30, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (100, N'MIDWAY i-One', 1, 1, 22900, N'bvo4ipco.254.webp', 120, 23, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (101, N'KUGOO G2 Pro', 1, 6, 62706, N'n5gmioj3.few.webp', 120, 40, 45, 1000)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (102, N'MIDWAY i-One PRO', 1, 1, 24900, N'djmy2m23.mlg.webp', 120, 40, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (103, N'SmartONE 1S Pro', 1, 10, 27900, N'allldt2f.lnv.webp', 120, 30, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (104, N'Ninebot KickScooter C10', 2, 3, 16990, N'vubv1mna.gwr.webp', 60, 10, 18, 120)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (105, N'KUGOO S3 Jilong', 1, 6, 22990, N'xfjb4cel.xzl.webp', 120, 25, 30, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (106, N'Accesstyle Tsunami 30S', 1, 11, 23990, N'bjz53ztc.xjl.webp', 120, 30, 25, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (107, N'Accesstyle Frost 20S', 1, 11, 13990, N'mspee5zu.04e.webp', 80, 15, 18, 150)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (108, N'Xiaomi Mi Electric Scooter Essential', 1, 2, 31500, N'a2detnud.gal.webp', 100, 20, 20, 250)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (109, N'KUGOO S1 6 Ah', 1, 6, 22900, N'wq3vvi0v.1ib.webp', 100, 25, 25, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (112, N'KUGOO Max', 1, 6, 42900, N'qe4jx2q5.qjo.webp', 140, 30, 50, 600)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (113, N'Halten Kiddy', 2, 13, 4990, N'glnnpkbj.dat.webp', 23, 0, 4, 20)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (114, N'KUGOO Kirin S8 Pro', 1, 6, 25999, N'opi1skl5.y12.webp', 100, 25, 25, 350)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (115, N'Halten Flash', 1, 13, 43900, N'hd5ihhxj.gpy.webp', 100, 40, 30, 540)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (116, N'Ninebot KickScooter', 1, 3, 24452, N't3hywacj.nig.webp', 100, 20, 20, 250)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (117, N'KUGOO M4', 1, 6, 41990, N'ng22xyw0.nz0.webp', 120, 30, 45, 500)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (3122, N'dffdfsd', 2, 3, 34667, N'f2bf3abc13ba4165b7f03644e8283070.png', 54, 25, 50, 200)
INSERT [dbo].[Samokat] ([Id], [Name], [ProductType], [Manufactur], [Price], [Photo], [MaxLoad], [PowerReserve], [MaxSpeed], [MaxWatt]) VALUES (4121, N'wwwww', 2, 13, 55555, N'f5982453707743c1bc91f98a6c85179d.png', 55, 55, 55, 55)
SET IDENTITY_INSERT [dbo].[Samokat] OFF
GO
ALTER TABLE [dbo].[Samokat]  WITH CHECK ADD  CONSTRAINT [FK_Samokats_Manufacturer] FOREIGN KEY([Manufactur])
REFERENCES [dbo].[Manufacturer] ([IdManu])
GO
ALTER TABLE [dbo].[Samokat] CHECK CONSTRAINT [FK_Samokats_Manufacturer]
GO
ALTER TABLE [dbo].[Samokat]  WITH CHECK ADD  CONSTRAINT [FK_Samokats_ProductType] FOREIGN KEY([ProductType])
REFERENCES [dbo].[ProductType] ([IdType])
GO
ALTER TABLE [dbo].[Samokat] CHECK CONSTRAINT [FK_Samokats_ProductType]
GO
ALTER TABLE [dbo].[Samokat]  WITH CHECK ADD  CONSTRAINT [FK_Samokats_Samokats] FOREIGN KEY([Id])
REFERENCES [dbo].[Samokat] ([Id])
GO
ALTER TABLE [dbo].[Samokat] CHECK CONSTRAINT [FK_Samokats_Samokats]
GO
