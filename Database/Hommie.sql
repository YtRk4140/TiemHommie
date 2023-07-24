CREATE DATABASE Hommie
GO
Use Hommie
GO

/****** Object:  Table [dbo].[Address]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[dateCreate] [date] NOT NULL,
	[dateUpdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[addressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[cartItemId] [int] IDENTITY(1,1) NOT NULL,
	[cartId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[deliveryId] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[deliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[orderItemsId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderItemsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[paymentId] [int] NOT NULL,
	[orderDate] [date] NOT NULL,
	[deliveryId] [int] NULL,
	[note] [nvarchar](100) NULL,
	[totalPayment] [money] NOT NULL,
	[statusId] [int] NOT NULL,
	[paymentDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[statusId] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[paymentId] [int] IDENTITY(1,1) NOT NULL,
	[paymentType] [nvarchar](max) NULL,
	[paymentCost] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](40) NOT NULL,
	[price] [money] NOT NULL,
	[quantity] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[description] [nvarchar](300) NULL,
	[status] [nvarchar](20) NULL,
	[image] [varchar](30) NOT NULL,
	[dateCreate] [date] NOT NULL,
	[dateUpdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2023 1:27:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userRole] [int] NOT NULL,
	[userName] [nvarchar](30) NOT NULL,
	[userUid] [varchar](100) NOT NULL,
	[email] [varchar](254) NOT NULL,
	[phoneNumber] [varchar](max) NULL,
	[note] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[Feedback]    Script Date: 7/4/2023 1:27:43 PM ******/
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (1, N'Đồ chơi')
GO
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (2, N'Đồ nhồi bông')
GO
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (3, N'Trang sức')
GO
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (4, N'Đồ trang trí')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO


SET IDENTITY_INSERT [dbo].[OrderStatus] ON 
GO
INSERT [dbo].[OrderStatus] ([statusId], [status]) VALUES (1, N'Đang xử lý')
GO
INSERT [dbo].[OrderStatus] ([statusId], [status]) VALUES (2, N'Đã xác nhận')
GO
INSERT [dbo].[OrderStatus] ([statusId], [status]) VALUES (3, N'Đang giao')
GO
INSERT [dbo].[OrderStatus] ([statusId], [status]) VALUES (4, N'Đã giao')
GO
INSERT [dbo].[OrderStatus] ([statusId], [status]) VALUES (5, N'Đã huỷ')
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 
GO
INSERT [dbo].[Payment] ([paymentId], [paymentType], [paymentCost]) VALUES (1, N'Thanh toán qua VNPAY', CAST(22000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Payment] ([paymentId], [paymentType], [paymentCost]) VALUES (2, N'Thanh toán khi nhận hàng', CAST(30000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (1, N'LEGO Hoa Hồng ', 620000.0000, 0, 1, N'Hàng có sẵn tại Shop
 Lego 40460 Rose - Hoa hồng
 Sản phẩm đi kèm hướng dẫn lắp ráp
 - Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed -  hàng mới 100% full box ) ', N'bán chạy', N'1.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (2, N'LEGO Hoa Hướng Dương', 650000.0000, 80, 1, N'Sản phẩm có sẵn tại Shop và đi kèm hướng dẫn lắp ráp bên trong sản phẩm
 Lego 40524 Sunflowers - Hoa Hướng Dương - 
Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed  - hàng mới 100% full box)', N'', N'2.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (3, N'LEGO Hoa Thủy Tiên', 580000.0000, 32, 1, N'Sản phẩm có sẵn tại Shop và đi kèm hướng dẫn lắp ráp
 Lego 40646 Daffodils - Hoa Thủy Tiên 
- Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed - hàng mới 100% full box) ', N'', N'3.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (4, N'LEGO Hoa Lan', 600000.0000, 88, 1, N'Sản phẩm có sẵn tại Shop và đi kèm hướng dẫn lắp ráp
 
Lego 10311 Orchid - Hoa Lan - 
Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed - hàng mới 100% full box) ', N'', N'4.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (5, N'LEGO Hoa Tuilip', 700000.0000, 43, 1, N'Sản phẩm có sẵn tại Shop và đi kèm hướng dẫn lắp ráp
 
Lego 40461 Tuilips - Hoa Uất Kim Cương - 
Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed - hàng mới 100% full box) ', N'', N'5.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (6, N'LEGO Chậu Hoa Phát Tài', 680000.0000, 80, 1, N'Sản phẩm có sẵn tại Shop và đi kèm hướng dẫn lắp ráp
 
Lego 40648 Money Trees - Chậu Hoa Phát Tài - 
Thương hiệu đồ chơi tới từ Đan Mạch ( mới nguyên hộp - new sealed - hàng mới 100% full box) ', N'', N'6.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (7, N'LEGO Bình Hoa', 740000.0000, 0, 1, N'Bình hoa duyên dáng với các loại hoa Mùa Xuân được yêu thích như hoa anh đào, hoa cúc Billy Button và nhiều loại hoa đáng yêu khác. Bình hoa cao hơn 29cm, cực đẹp khi trưng bày trên bàn hay giá sách.', N'bán chạy', N'7.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (8, N'Tranh tô màu Kim Tự Tháp', 50000.0000, 29, 1, N'Tranh tô màu số hóa DIY Pyramid with colorful sky kèm dụng cụ', N'', N'8.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (9, N'Tranh tô màu Vạn Lý Trường Thành', 50000.0000, 59, 1, N'Tranh tô màu số hóa DIY 1 Great Wall of China kèm dụng cụ', N'', N'9.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (10, N'Tranh tô màu Nhà hát Sydney', 70000.0000, 35, 1, N'Tranh tô màu số hóa DIY 2 Sydney Opera kèm dụng cụ', N'', N'10.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (11, N'Tranh tô màu Đồng hồ Big Ben', 70000.0000, 79, 1, N'Tranh tô màu số hóa DIY 3 đồng hồ Big Ben kèm dụng cụ', N'', N'11.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (12, N'Tranh tô màu Bình Minh', 70000.0000, 28, 1, N'Tranh tô màu số hóa DIY Flower at sunset kèm dụng cụ', N'', N'12.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (13, N'Tranh tô màu núi Phú Sĩ', 70000.0000, 49, 1, N'Tranh tô màu số hóa DIY Mountain and sakura kèm dụng cụ', N'', N'13.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-30' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (14, N'Thú nhồi bông Cừu trắng', 150000.0000, 11, 2, N'Gấu bông Cute white sheep 23cm', N'bán chạy', N'14.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (15, N'Thú nhồi bông Thỏ dâu', 200000.0000, 92, 2, N'Gấu bông Cute rabbit little fruit strawberry 25cm', N'bán chạy', N'15.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (16, N'Thú nhồi bông Mèo nghiêng đầu', 150000.0000, 75, 2, N'Gấu bông Cute cat smile có đuôi 40cm', N'', N'16.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (17, N'Thú nhồi bông Cáo cam', 125000.0000, 49, 2, N'Gấu bông Friends Cáo cam happy face 30cm', N'', N'17.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (18, N'Thú nhồi bông Cánh cụt', 150000.0000, 46, 2, N'Gấu bông Penguin basic 30cm - Đen', N'', N'18.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (19, N'Gối nhồi bông chữ U khủng long', 100000.0000, 94, 2, N'Gối chữ U Khủng long dinosaur', N'', N'19.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (20, N'Gối nhồi bông chữ U tai thỏ hồng', 100000.0000, 96, 2, N'Gối chữ U ruột cao su Rabbit wow face má hồng có tai', N'', N'20.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (21, N'Gối nhồi bông chữ U tai mèo', 100000.0000, 44, 2, N'Gối chữ U ruột cao su Grey cat cute face má hồng có tai', N'', N'21.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (22, N'Gối nhồi bông chữ U hoa văn caro', 100000.0000, 10, 2, N'Gối chữ U ruột cao su basic caro pattern', N'', N'22.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (23, N'Combo 4 huy hiệu cài áo Vô diện', 100000.0000, 90, 3, N'Spirit Away - No Face Man - 100% hàng mới và chất lượng cao', N'', N'23.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (24, N'Huy hiệu cài áo Khủng long ', 30000.0000, 54, 3, N'Huy hiệu/Pin/Ghim trang trí Balo, cài áo chủ đề Giáng sinh', N'', N'24.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (25, N'Huy hiệu cài áo Dơi tím', 30000.0000, 60, 3, N'Huy hiệu/Pin/Ghim trang trí Balo, cài áo chủ đề Halloween màu tím chủ đạo', N'', N'25.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-04' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (26, N'Huy hiệu cài áo Ong & Hoa', 25000.0000, 28, 3, N'Huy hiệu/Pin/Ghim trang trí Balo, cài áo chủ đề Thiên nhiên làm bằng nhựa', N'', N'26.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (27, N'Huy hiệu cài áo Sách và Hoa', 300000.0000, 66, 3, N'Huy hiệu/Pin/Ghim trang trí Balo, cài áo chủ đề Thiên nhiên làm bằng thép không gỉ', N'', N'27.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (28, N'Lắc tay bạc Tinh tú', 380000.0000, 45, 3, N'Lắc tay bạc nữ chủ đề Vũ trụ, chất liệu bạc cao cấp 925
. 
Thiết kế tinh xảo trên công nghệ 3D tiên tiến. 
Bảo hành miễn phí trọn đời đánh bóng làm mới hoặc rơi đá. 
Kiểu dáng trẻ trung thời trang', N'', N'28.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (29, N'Lắc tay bạc Cườm Màu Thạch Lựu', 400000.0000, 69, 3, N'Lắc tay bạc nữ có hạt màu thạch lựu chất liệu bạc cao cấp 925
. 
Thiết kế tinh xảo trên công nghệ 3D tiên tiến. 
Bảo hành miễn phí trọn đời đánh bóng làm mới hoặc rơi đá. 
Kiểu dáng trẻ trung thời trang', N'bán chạy', N'29.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (30, N'Lắc tay bạc Đơn giản', 300000.0000, 15, 3, N'Lắc tay bạc nữ chất liệu bạc cao cấp 925
. 
Thiết kế tinh xảo trên công nghệ 3D tiên tiến. 
Bảo hành miễn phí trọn đời đánh bóng làm mới hoặc rơi đá. 
Kiểu dáng trẻ trung thời trang', N'', N'30.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (31, N'Lắc tay bạc Dream Catcher', 400000.0000, 74, 3, N'Lắc tay bạc nữ Dream Catcher chất liệu bạc cao cấp 925
. 
Thiết kế tinh xảo trên công nghệ 3D tiên tiến. 
Bảo hành miễn phí trọn đời đánh bóng làm mới hoặc rơi đá. 
Kiểu dáng trẻ trung thời trang', N'', N'31.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (32, N'Lắc tay bạc Hình chân mèo', 320000.0000, 74, 3, N'Lắc tay bạc nữ chủ đề mèo, chất liệu bạc cao cấp 925
. 
Thiết kế tinh xảo trên công nghệ 3D tiên tiến. 
Bảo hành miễn phí trọn đời đánh bóng làm mới hoặc rơi đá. 
Kiểu dáng trẻ trung thời trang', N'', N'32.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (33, N'Dây chuyền bạc Aurora hình mèo', 400000.0000, 32, 3, N'Dây chuyền bạc mặt pha lê Swarovski Aurora Mèo con là một thiết kế vô cùng sang trọng và hấp dẫn đến từ Tiệm Hommie. Hãy tưởng tượng viên pha lê đính trên dây chuyền bạc này sáng lấp lánh trên khuôn cổ của bạn', N'', N'33.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (34, N'Dây chuyền bạc Pha lê xanh dương', 500000.0000, 45, 3, N'Dây chuyền bạc mặt pha lê Swarovski trái tim đại dương là một thiết kế vô cùng sang trọng và hấp dẫn đến từ Tiệm Hommie. Hãy tưởng tượng viên pha lê đính trên dây chuyền bạc này sáng lấp lánh trên khuôn cổ của bạn', N'', N'34.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (35, N'Dây chuyền bạc Pha lê tím', 500000.0000, 19, 3, N'Dây chuyền bạc mặt pha lê Swarovski trái tim đại dương là một thiết kế vô cùng sang trọng và hấp dẫn đến từ Tiệm Hommie. Hãy tưởng tượng viên pha lê đính trên dây chuyền bạc này sáng lấp lánh trên khuôn cổ của bạn', N'', N'35.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (36, N'Dây chuyền bạc Pha lê xanh lục', 500000.0000, 86, 3, N'Dây chuyền bạc mặt pha lê Swarovski trái tim đại dương là một thiết kế vô cùng sang trọng và hấp dẫn đến từ Tiệm Hommie. Hãy tưởng tượng viên pha lê đính trên dây chuyền bạc này sáng lấp lánh trên khuôn cổ của bạn', N'', N'36.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (37, N'Dây chuyền bạc Pha lê hồng', 500000.0000, 91, 3, N'Dây chuyền bạc mặt pha lê Swarovski trái tim đại dương là một thiết kế vô cùng sang trọng và hấp dẫn đến từ Tiệm Hommie. Hãy tưởng tượng viên pha lê đính trên dây chuyền bạc này sáng lấp lánh trên khuôn cổ của bạn', N'', N'37.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (38, N'Chuông gió Vô diện', 75000.0000, 86, 4, N'Xóa tan cảm giác uể oải, không gian tĩnh lặng thay vào đó là những thanh âm ngẫu nhiên tạo nên những giai điệu tùy hứng.
  Chuông gió mang đến bạn những thanh âm thú vị ngẫu nhiên. Cho bạn một cảm giác thanh bình an nhiên tự tại.
 Giúp bạn thư giãn sau nhiều giờ làm việc mệt mỏi căng thẳng.', N'', N'38.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (39, N'Chuông gió Khủng Long Xanh lá', 75000.0000, 47, 4, N'Xóa tan cảm giác uể oải, không gian tĩnh lặng thay vào đó là những thanh âm ngẫu nhiên tạo nên những giai điệu tùy hứng.
  Chuông gió mang đến bạn những thanh âm thú vị ngẫu nhiên. Cho bạn một cảm giác thanh bình an nhiên tự tại.
 Giúp bạn thư giãn sau nhiều giờ làm việc mệt mỏi căng thẳng.', N'', N'39.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-22' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (40, N'Chuông gió Khủng Long Hồng', 75000.0000, 71, 4, N'Xóa tan cảm giác uể oải, không gian tĩnh lặng thay vào đó là những thanh âm ngẫu nhiên tạo nên những giai điệu tùy hứng.
  Chuông gió mang đến bạn những thanh âm thú vị ngẫu nhiên. Cho bạn một cảm giác thanh bình an nhiên tự tại.
 Giúp bạn thư giãn sau nhiều giờ làm việc mệt mỏi căng thẳng.', N'', N'40.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (41, N'Chuông gió Khủng Long Xanh dương nhạt', 75000.0000, 49, 4, N'Xóa tan cảm giác uể oải, không gian tĩnh lặng thay vào đó là những thanh âm ngẫu nhiên tạo nên những giai điệu tùy hứng.
  Chuông gió mang đến bạn những thanh âm thú vị ngẫu nhiên. Cho bạn một cảm giác thanh bình an nhiên tự tại.
 Giúp bạn thư giãn sau nhiều giờ làm việc mệt mỏi căng thẳng.', N'', N'41.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-30' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (42, N'Nến thơm Quả Táo', 60000.0000, 38, 4, N'Xuất xứ: Việt Nam; Hương: táo; Kích thước: 7 x 7 x 8 cm', N'mới', N'42.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-06-22' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (43, N'Nến thơm Trái Cam', 60000.0000, 61, 4, N'Xuất xứ: Việt Nam; Hương: cam; Kích thước: 7 x 7 x 8 cm', N'mới', N'43.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (44, N'Nến thơm Quả Đào', 60000.0000, 46, 4, N'Xuất xứ: Việt Nam; Hương: đào; Kích thước: 7 x 7 x 8 cm', N'mới', N'44.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (45, N'Nến thơm Bánh Gato Dâu', 60000.0000, 25, 4, N'Xuất xứ: Việt Nam; Hương: dâu; Kích thước: 7 x 7 x 8 cm', N'mới', N'45.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (46, N'Nến thơm Xương Rồng', 40000.0000, 17, 4, N'Xuất xứ: Việt Nam; Hương: nho; Kích thước: 7 x 7 x 8 cm', N'mới', N'46.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (47, N'Combo 4 tượng trang trí Hổ Con', 150000.0000, 55, 4, N'Xuất xứ: Việt Nam; Chất liệu: gốm; Kích thước mỗi nhân vật: 4 x 4 x 5 cm', N'', N'47.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (48, N'Tượng trang trí Mèo vuốt mặt', 40000.0000, 84, 4, N'Xuất xứ: Việt Nam; Chất liệu: gốm; Kích thước: 4 x 4 x 5 cm', N'', N'48.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (49, N'Tượng trang trí Mèo ôm đầu', 40000.0000, 18, 4, N'Xuất xứ: Việt Nam; Chất liệu: gốm; Kích thước: 4 x 4 x 5 cm', N'bán chạy', N'49.jpg', CAST(N'2022-05-18' AS Date), CAST(N'2023-07-01' AS Date))
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [categoryId], [description], [status], [image], [dateCreate], [dateUpdate]) VALUES (50, N'Tượng trang trí Totoro', 45000.0000, 68, 4, N'Xuất xứ: Việt Nam; Chất liệu: gốm; Kích thước: 4 x 4 x 5 cm', N'bán chạy', N'50.jpg', CAST(N'2022-05-18' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([userId], [userRole], [userName], [userUid], [email], [phoneNumber], [note]) VALUES (1, 1, N'Admin', N'VwbMgYPex1gJ8UzUwEvT1DZpebc2', N'cskh.tiemhommie@gmail.com', N'0123456789', N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E6164533BCEC3]    Script Date: 7/4/2023 1:27:54 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD FOREIGN KEY([cartId])
REFERENCES [dbo].[Cart] ([cartId])
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([orderId])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([deliveryId])
REFERENCES [dbo].[Delivery] ([deliveryId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([paymentId])
REFERENCES [dbo].[Payment] ([paymentId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([statusId])
REFERENCES [dbo].[OrderStatus] ([statusId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO