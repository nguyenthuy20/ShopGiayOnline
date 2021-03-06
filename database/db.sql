use master
go
create database [db_ecomartvietnam]
go
USE [db_ecomartvietnam]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/28/2021 1:21:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 9/28/2021 1:21:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/28/2021 1:21:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/28/2021 1:21:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[product_source] [nvarchar](100) NULL,
	[product_weight] [nvarchar](100) NULL,
	[product_description] [ntext] NOT NULL,
	[product_price] [decimal](18, 0) NOT NULL,
	[product_image] [varchar](50) NULL,
	[product_amount] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/28/2021 1:21:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone_number] [nvarchar](11) NULL,
	[password] [nvarchar](200) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[role] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (1, N'Giày Cao Gót', NULL, CAST(N'2021-09-28T09:08:32.620' AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (2, N'Giày Sneaker', NULL, CAST(N'2021-09-28T09:08:58.377' AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (3, N'Giày Sandals', NULL, CAST(N'2021-09-28T09:08:45.457' AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (4, N'Giày Boots', NULL, CAST(N'2021-09-28T09:09:10.393' AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (5, N'Giày Da Thật', NULL, CAST(N'2021-09-28T09:09:25.210' AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [created_at], [updated_at]) VALUES (6, N'Giày Lười', NULL, CAST(N'2021-09-28T09:09:43.063' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (1, 37, CAST(20000 AS Decimal(18, 0)), 2, CAST(N'2021-09-24T07:54:48.090' AS DateTime), CAST(N'2021-09-24T07:54:48.093' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (1, 38, CAST(20000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T07:54:48.097' AS DateTime), CAST(N'2021-09-24T07:54:48.097' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (1, 43, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T07:54:48.097' AS DateTime), CAST(N'2021-09-24T07:54:48.097' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (1, 44, CAST(200000 AS Decimal(18, 0)), 3, CAST(N'2021-09-24T07:54:48.097' AS DateTime), CAST(N'2021-09-24T07:54:48.097' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (2, 38, CAST(20000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T10:47:08.010' AS DateTime), CAST(N'2021-09-24T10:47:08.020' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (2, 41, CAST(200000 AS Decimal(18, 0)), 3, CAST(N'2021-09-24T10:47:08.020' AS DateTime), CAST(N'2021-09-24T10:47:08.020' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (2, 42, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T10:47:08.023' AS DateTime), CAST(N'2021-09-24T10:47:08.023' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (3, 37, CAST(20000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T10:50:35.453' AS DateTime), CAST(N'2021-09-24T10:50:35.457' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (3, 38, CAST(20000 AS Decimal(18, 0)), 7, CAST(N'2021-09-24T10:50:35.457' AS DateTime), CAST(N'2021-09-24T10:50:35.457' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (3, 41, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T10:50:35.457' AS DateTime), CAST(N'2021-09-24T10:50:35.457' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (3, 43, CAST(200000 AS Decimal(18, 0)), 33, CAST(N'2021-09-24T10:50:35.457' AS DateTime), CAST(N'2021-09-24T10:50:35.457' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (3, 44, CAST(200000 AS Decimal(18, 0)), 25, CAST(N'2021-09-24T10:50:35.460' AS DateTime), CAST(N'2021-09-24T10:50:35.460' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (4, 42, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T13:20:56.603' AS DateTime), CAST(N'2021-09-24T13:20:56.603' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (4, 43, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T13:20:56.607' AS DateTime), CAST(N'2021-09-24T13:20:56.607' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (5, 39, CAST(2000 AS Decimal(18, 0)), 3, CAST(N'2021-09-24T20:58:36.327' AS DateTime), CAST(N'2021-09-24T20:58:36.330' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (5, 41, CAST(200000 AS Decimal(18, 0)), 3, CAST(N'2021-09-24T20:58:36.333' AS DateTime), CAST(N'2021-09-24T20:58:36.333' AS DateTime))
INSERT [dbo].[Order_detail] ([order_id], [product_id], [price], [quantity], [created_at], [updated_at]) VALUES (5, 42, CAST(200000 AS Decimal(18, 0)), 1, CAST(N'2021-09-24T20:58:36.333' AS DateTime), CAST(N'2021-09-24T20:58:36.333' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [user_id], [status], [created_at], [updated_at]) VALUES (1, 3, 1, CAST(N'2021-09-24T07:54:48.030' AS DateTime), CAST(N'2021-09-24T07:54:48.040' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [status], [created_at], [updated_at]) VALUES (2, 3, 1, CAST(N'2021-09-24T10:47:07.987' AS DateTime), CAST(N'2021-09-24T10:47:07.990' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [status], [created_at], [updated_at]) VALUES (3, 3, 3, CAST(N'2021-09-24T10:50:35.423' AS DateTime), CAST(N'2021-09-24T11:51:03.097' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [status], [created_at], [updated_at]) VALUES (4, 3, 1, CAST(N'2021-09-24T13:20:56.587' AS DateTime), CAST(N'2021-09-24T13:20:56.590' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [status], [created_at], [updated_at]) VALUES (5, 1, 1, CAST(N'2021-09-24T20:58:36.270' AS DateTime), CAST(N'2021-09-28T09:47:58.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (37, 1, N'Nước muberone', N'Gót loe, cao 8cm', N'Hở mũi (mũi vuông), da nhân tạo.', N' Đi làm, đi tiệc, đi chơi', CAST(545000 AS Decimal(18, 0)), N'ankle-got-tru.jpg', 1000, NULL, CAST(N'2021-09-28T13:08:36.200' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (38, 1, N'Giày Ankle Strap Vân Da Kỳ Đà ', N'Gót loe, cao 7cm', N' Bít mũi nhọn, da nhân tạo', N' Đi làm, đi tiệc, đi chơi', CAST(555000 AS Decimal(18, 0)), N'ankle-nau.jpg', 991, NULL, CAST(N'2021-09-28T13:10:11.700' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (39, 1, N'Giày Sandal Ankle Strap Gót Trụ Metallic - SDN 0694 - Màu Trắng', N' Gót loe, 8cm', N' Hở mũi (mũi vuông), da nhân tạo', N' Đi làm, đi tiệc, đi chơi', CAST(600000 AS Decimal(18, 0)), N'ankle-strap-got-tru.jpg', 997, NULL, CAST(N'2021-09-28T13:11:23.307' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (41, 1, N'Giày Ankle Strap Vân Da Kỳ Đà ', N'Gót loe, cao 7cm', N'Bít mũi nhọn, cao 8cm', N' Đi làm, đi tiệc, đi chơi', CAST(1200000 AS Decimal(18, 0)), N'ankle-van-da-ky-da.jpg', 993, NULL, CAST(N'2021-09-28T13:12:42.043' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (42, 3, N'Thịt đùi heo', N'Hà Nội', N'1kg', N'Thực phẩm tươi sống', CAST(200000 AS Decimal(18, 0)), N'thit-dui-heo-2-405x330.jpg', 997, CAST(N'2021-09-23T00:33:27.997' AS DateTime), CAST(N'2021-09-24T20:58:36.233' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (43, 1, N'Việt quất', N'Hà Nội', N'1kg', N'Hoa quả', CAST(200000 AS Decimal(18, 0)), N'Viet-quat-Rainier-Organic-01-405x330.jpg', 965, CAST(N'2021-09-23T00:33:48.847' AS DateTime), CAST(N'2021-09-24T13:20:56.563' AS DateTime))
INSERT [dbo].[Products] ([product_id], [category_id], [product_name], [product_source], [product_weight], [product_description], [product_price], [product_image], [product_amount], [created_at], [updated_at]) VALUES (44, 3, N'Xương ống heo', N'Hà Nội', N'1kg', N'Thực phẩm tươi sống', CAST(200000 AS Decimal(18, 0)), N'XUONG-ONG-MEAT-DELI-01-768x625-1-405x330.jpg', 972, CAST(N'2021-09-23T00:34:18.140' AS DateTime), CAST(N'2021-09-24T10:50:35.383' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [email], [phone_number], [password], [full_name], [address], [role], [created_at], [updated_at], [is_active]) VALUES (1, N'nhom2admin@gmail.com', N'0866136920', N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'Hoàng Duy Khánh', N'Số 12, Xã Thanh Xuân, Huyện Yên Lão, Thành phố Hải Phòng', 1, CAST(N'2021-09-22T22:44:01.790' AS DateTime), CAST(N'2021-09-23T12:54:04.733' AS DateTime), 1)
INSERT [dbo].[Users] ([user_id], [email], [phone_number], [password], [full_name], [address], [role], [created_at], [updated_at], [is_active]) VALUES (3, N'dotrongnam2307200@gmail.com', N'0384640190', N'1B-BD-88-64-60-82-70-15-E5-D6-05-ED-44-25-22-51', N'Trong Nam', N'38/132 Đường Cầu Diễn, Bắc Từ Liêm', 0, CAST(N'2021-09-23T21:30:57.760' AS DateTime), CAST(N'2021-09-23T21:32:43.427' AS DateTime), 1)
INSERT [dbo].[Users] ([user_id], [email], [phone_number], [password], [full_name], [address], [role], [created_at], [updated_at], [is_active]) VALUES (4, N'dotrongnam23072000@gmail.com', N'0384640190', N'6C-30-73-48-11-91-6B-0F-0F-24-A4-63-0B-08-03-6F', N'Nam', N'38/132 Đường Cầu Diễn, Bắc Từ Liêm', 1, CAST(N'2021-09-24T11:50:33.447' AS DateTime), CAST(N'2021-09-24T11:50:33.450' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
