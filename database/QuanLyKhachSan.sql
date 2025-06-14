USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NoiDung] [text] NULL,
	[SoSao] [int] NULL,
	[NgayDanhGia] [datetime] NULL,
	[MaKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](100) NULL,
	[MoTa] [text] NULL,
	[DonGia] [decimal](10, 2) NULL,
	[MaKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatPhong]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatPhong](
	[MaDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NULL,
	[MaKH] [int] NULL,
	[NgayNhan] [date] NULL,
	[NgayTra] [date] NULL,
	[TrangThai] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDienWeb]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDienWeb](
	[MaGiaoDien] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachSan] [int] NULL,
	[MaTemplate] [int] NULL,
	[TinhTrang] [bit] NULL,
	[TuyChinhCSS] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaoDien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[SDT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKhachSan] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachSan] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[MoTa] [text] NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[ChucVu] [varchar](50) NULL,
	[MaKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[GiaPhong] [decimal](10, 2) NULL,
	[LoaiPhong] [varchar](50) NULL,
	[TrangThai] [varchar](20) NULL,
	[MaTang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanKhachSan]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanKhachSan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tang]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[MaTang] [int] IDENTITY(1,1) NOT NULL,
	[SoTang] [int] NULL,
	[MaKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[MaTemplate] [int] IDENTITY(1,1) NOT NULL,
	[TenTemplate] [varchar](100) NULL,
	[MauSac] [varchar](20) NULL,
	[HinhAnh] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTemplate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaThietBi] [int] IDENTITY(1,1) NOT NULL,
	[TenThietBi] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[MaPhong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuChi]    Script Date: 06/06/2025 16:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuChi](
	[MaThuChi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[SoTien] [decimal](10, 2) NULL,
	[Loai] [varchar](10) NULL,
	[NgayLap] [date] NULL,
	[MaKhachSan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([MaDanhGia], [MaKH], [NoiDung], [SoSao], [NgayDanhGia], [MaKhachSan]) VALUES (1, 1, N'Khách s?n s?ch s?, ph?c v? t?t', 5, CAST(N'2025-06-06T15:55:11.490' AS DateTime), 1)
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaKH], [NoiDung], [SoSao], [NgayDanhGia], [MaKhachSan]) VALUES (2, 2, N'V? trí d?p nhung hoi ?n', 4, CAST(N'2025-06-06T15:55:11.490' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [MaKhachSan]) VALUES (1, N'Giặt ủi', N'D?ch v? gi?t qu?n áo', CAST(50000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [MaKhachSan]) VALUES (2, N'Dọn phòng', N'D?ch v? d?n v? sinh phòng', CAST(70000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [MaKhachSan]) VALUES (3, N'Ăn sáng', N'Buffet sáng', CAST(100000.00 AS Decimal(10, 2)), 2)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatPhong] ON 

INSERT [dbo].[DonDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayNhan], [NgayTra], [TrangThai]) VALUES (1, 1, 1, CAST(N'2025-06-10' AS Date), CAST(N'2025-06-12' AS Date), N'Ðã d?t')
INSERT [dbo].[DonDatPhong] ([MaDatPhong], [MaPhong], [MaKH], [NgayNhan], [NgayTra], [TrangThai]) VALUES (2, 2, 2, CAST(N'2025-06-15' AS Date), CAST(N'2025-06-18' AS Date), N'Ch? xác nh?n')
SET IDENTITY_INSERT [dbo].[DonDatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoDienWeb] ON 

INSERT [dbo].[GiaoDienWeb] ([MaGiaoDien], [MaKhachSan], [MaTemplate], [TinhTrang], [TuyChinhCSS]) VALUES (1, 1, 1, 1, N'body { font-family: Arial; }')
INSERT [dbo].[GiaoDienWeb] ([MaGiaoDien], [MaKhachSan], [MaTemplate], [TinhTrang], [TuyChinhCSS]) VALUES (2, 2, 2, 1, N'body { background-color: #000; }')
SET IDENTITY_INSERT [dbo].[GiaoDienWeb] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [SDT]) VALUES (1, N'Nguyễn Văn A', N'nva@example.com', N'0912345678')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Email], [SDT]) VALUES (2, N'Trần Thị B', N'ttb@example.com', N'0987654321')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [DiaChi], [MoTa], [MaTaiKhoan]) VALUES (1, N'Khách Sạn ABC', N'123 Đường A, TP.HCM', N'Khách s?n 3 sao g?n trung tâm', 1)
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [DiaChi], [MoTa], [MaTaiKhoan]) VALUES (2, N'Khách Sạn DEF', N'456 Đường B, Hà Nội', N'Khách s?n 4 sao g?n h?', 2)
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [ChucVu], [MaKhachSan]) VALUES (1, N'Lê Văn C', N'L? tân', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [ChucVu], [MaKhachSan]) VALUES (2, N'Phạm Thị D', N'Qu?n lý', 2)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [GiaPhong], [LoaiPhong], [TrangThai], [MaTang]) VALUES (1, N'Phòng 101', CAST(500000.00 AS Decimal(10, 2)), N'Standard', N'Tr?ng', 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [GiaPhong], [LoaiPhong], [TrangThai], [MaTang]) VALUES (2, N'Phòng 102', CAST(750000.00 AS Decimal(10, 2)), N'Deluxe', N'Có khách', 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [GiaPhong], [LoaiPhong], [TrangThai], [MaTang]) VALUES (3, N'Phòng 201', CAST(1000000.00 AS Decimal(10, 2)), N'VIP', N'Tr?ng', 2)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [GiaPhong], [LoaiPhong], [TrangThai], [MaTang]) VALUES (4, N'Phòng A1', CAST(650000.00 AS Decimal(10, 2)), N'Standard', N'Ðang d?n', 3)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanKhachSan] ON 

INSERT [dbo].[TaiKhoanKhachSan] ([MaTaiKhoan], [TenDangNhap], [Email], [MatKhau], [NgayTao]) VALUES (1, N'khachsanabc', N'abc@hotel.com', N'matkhau123', CAST(N'2025-06-06T15:54:32.457' AS DateTime))
INSERT [dbo].[TaiKhoanKhachSan] ([MaTaiKhoan], [TenDangNhap], [Email], [MatKhau], [NgayTao]) VALUES (2, N'khachsandef', N'def@hotel.com', N'matkhau456', CAST(N'2025-06-06T15:54:32.457' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaiKhoanKhachSan] OFF
GO
SET IDENTITY_INSERT [dbo].[Tang] ON 

INSERT [dbo].[Tang] ([MaTang], [SoTang], [MaKhachSan]) VALUES (1, 1, 1)
INSERT [dbo].[Tang] ([MaTang], [SoTang], [MaKhachSan]) VALUES (2, 2, 1)
INSERT [dbo].[Tang] ([MaTang], [SoTang], [MaKhachSan]) VALUES (3, 1, 2)
SET IDENTITY_INSERT [dbo].[Tang] OFF
GO
SET IDENTITY_INSERT [dbo].[Template] ON 

INSERT [dbo].[Template] ([MaTemplate], [TenTemplate], [MauSac], [HinhAnh]) VALUES (1, N'Template Sáng', N'Light', N'light.jpg')
INSERT [dbo].[Template] ([MaTemplate], [TenTemplate], [MauSac], [HinhAnh]) VALUES (2, N'Template T?i', N'Dark', N'dark.jpg')
SET IDENTITY_INSERT [dbo].[Template] OFF
GO
SET IDENTITY_INSERT [dbo].[ThietBi] ON 

INSERT [dbo].[ThietBi] ([MaThietBi], [TenThietBi], [SoLuong], [MaPhong]) VALUES (1, N'TV', 1, 1)
INSERT [dbo].[ThietBi] ([MaThietBi], [TenThietBi], [SoLuong], [MaPhong]) VALUES (2, N'Máy lạnh', 1, 1)
INSERT [dbo].[ThietBi] ([MaThietBi], [TenThietBi], [SoLuong], [MaPhong]) VALUES (3, N'Bình nước nóng', 1, 2)
INSERT [dbo].[ThietBi] ([MaThietBi], [TenThietBi], [SoLuong], [MaPhong]) VALUES (4, N'Tủ lạnh mini', 1, 3)
SET IDENTITY_INSERT [dbo].[ThietBi] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuChi] ON 

INSERT [dbo].[ThuChi] ([MaThuChi], [NoiDung], [SoTien], [Loai], [NgayLap], [MaKhachSan]) VALUES (1, N'Thu tiền đặt phòng', CAST(2000000.00 AS Decimal(10, 2)), N'Thu', CAST(N'2025-06-06' AS Date), 1)
INSERT [dbo].[ThuChi] ([MaThuChi], [NoiDung], [SoTien], [Loai], [NgayLap], [MaKhachSan]) VALUES (2, N'Chi mua thiết bị', CAST(1500000.00 AS Decimal(10, 2)), N'Chi', CAST(N'2025-06-06' AS Date), 1)
INSERT [dbo].[ThuChi] ([MaThuChi], [NoiDung], [SoTien], [Loai], [NgayLap], [MaKhachSan]) VALUES (3, N'Thu tiền dịch vụ', CAST(500000.00 AS Decimal(10, 2)), N'Thu', CAST(N'2025-06-06' AS Date), 2)
SET IDENTITY_INSERT [dbo].[ThuChi] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC0B5174BE2]    Script Date: 06/06/2025 16:06:55 ******/
ALTER TABLE [dbo].[TaiKhoanKhachSan] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D10534E2A48649]    Script Date: 06/06/2025 16:06:55 ******/
ALTER TABLE [dbo].[TaiKhoanKhachSan] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DanhGia] ADD  DEFAULT (getdate()) FOR [NgayDanhGia]
GO
ALTER TABLE [dbo].[GiaoDienWeb] ADD  DEFAULT ((1)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[TaiKhoanKhachSan] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThuChi] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[GiaoDienWeb]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[GiaoDienWeb]  WITH CHECK ADD FOREIGN KEY([MaTemplate])
REFERENCES [dbo].[Template] ([MaTemplate])
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoanKhachSan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([MaTang])
REFERENCES [dbo].[Tang] ([MaTang])
GO
ALTER TABLE [dbo].[Tang]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[ThietBi]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ThuChi]  WITH CHECK ADD FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD CHECK  (([SoSao]>=(1) AND [SoSao]<=(5)))
GO
ALTER TABLE [dbo].[ThuChi]  WITH CHECK ADD CHECK  (([Loai]='Chi' OR [Loai]='Thu'))
GO
