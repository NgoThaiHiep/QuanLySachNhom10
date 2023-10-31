USE [master]
GO
/****** Object:  Database [QuanLyHieuSach]    Script Date: 10/31/2023 1:42:56 PM ******/
CREATE DATABASE [QuanLyHieuSach]
GO
USE [QuanLyHieuSach]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[CaID] [nvarchar](50) NOT NULL,
	[TenCa] [nvarchar](50) NOT NULL,
	[ThoiGianBatDau] [date] NOT NULL,
	[ThoiGianKetCa] [date] NOT NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[CaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[HoaDonID] [nvarchar](50) NOT NULL,
	[SanPhamID] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDonID] ASC,
	[SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ChucVuID] [nvarchar](50) NOT NULL,
	[TenChucVu] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[ChucVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDonID] [nvarchar](50) NOT NULL,
	[NgayLapHD] [date] NOT NULL,
	[NhanVienID] [nvarchar](50) NOT NULL,
	[KhachHangID] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[HoaDonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [nvarchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](200) NOT NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DiemTL] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[LoaiSanPhamID] [nvarchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[LoaiSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiVanPhongPham]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVanPhongPham](
	[LoaiVanPhongPhamID] [nvarchar](50) NOT NULL,
	[TenVanPhongPham] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_LoaiVanPhongPham] PRIMARY KEY CLUSTERED 
(
	[LoaiVanPhongPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCapID] [nvarchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[SanPhamCungCap] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[DiaChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [nvarchar](50) NOT NULL,
	[HoTenNhanVien] [nvarchar](200) NOT NULL,
	[CCCD] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoDienThoai] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](200) NOT NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[CaLamViec] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[NhaXuatBan] [nvarchar](50) NOT NULL,
	[TenNhaXuatBan] [nvarchar](250) NOT NULL,
	[Email] [nchar](200) NULL,
	[SoDienThoai] [nchar](20) NULL,
	[DiaChi] [nvarchar](250) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[NhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[SachID] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](200) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[NhaXuatBan] [nvarchar](50) NOT NULL,
	[NamXuatBan] [int] NOT NULL,
	[SoTrang] [int] NOT NULL,
	[TheLoai] [nvarchar](50) NOT NULL,
	[LoaiSanPham] [nvarchar](50) NOT NULL,
	[NhaCungCap] [nvarchar](50) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[MoTa] [nvarchar](250) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[HinhAnh] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[SachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[MaXacNhan] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[TheLoaiID] [nvarchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](250) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[TheLoaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThoiGianHoatDong]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGianHoatDong](
	[ThoiGianHoatDongID] [nvarchar](50) NOT NULL,
	[NhanVienID] [nvarchar](50) NOT NULL,
	[NgayDangNhap] [date] NOT NULL,
	[ThoiGianDangNhap] [time](7) NOT NULL,
	[ThoiGianDangXuat] [time](7) NULL,
	[ThoiGianDaLam] [time](7) NULL,
 CONSTRAINT [PK_ThoiGianHoatDong] PRIMARY KEY CLUSTERED 
(
	[ThoiGianHoatDongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VanPhongPham]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanPhongPham](
	[VanPhongPhamID] [nvarchar](50) NOT NULL,
	[TenVanPhongPham] [nvarchar](200) NOT NULL,
	[LoaiSanPham] [nvarchar](50) NOT NULL,
	[NhaCungCap] [nvarchar](50) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[MoTa] [nvarchar](250) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[HinhAnh] [nvarchar](250) NOT NULL,
	[XuatXu] [nvarchar](50) NOT NULL,
	[NamSanXuat] [int] NOT NULL,
	[ChatLieu] [nvarchar](50) NOT NULL,
	[ThuongHieu] [nvarchar](250) NOT NULL,
	[LoaiVanPhongPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VanPhongPham] PRIMARY KEY CLUSTERED 
(
	[VanPhongPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 10/31/2023 1:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[XuatXuID] [nvarchar](50) NOT NULL,
	[TenQuocGia] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_XuatXu] PRIMARY KEY CLUSTERED 
(
	[XuatXuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CaLamViec] ([CaID], [TenCa], [ThoiGianBatDau], [ThoiGianKetCa]) VALUES (N'Ca01', N'Ca Sáng', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (N'NV', N'Nhân Viên ')
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (N'QL', N'Quản Lý   ')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [TenLoaiSanPham]) VALUES (N'LSP000001', N'Sách')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [TenLoaiSanPham]) VALUES (N'LSP000002', N'Văn phòng phẩm')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'232108', N'Ngô Thái Hiệp', N'0521', 1, CAST(N'2003-12-28' AS Date), N'0374313529', N'ngohiep1750@gmail.com', NULL, N'Đang làm', N'''''', N'QL', N'Ca01', N'232108')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'232761', N'Phạm Anh Khoa', N'15', 1, CAST(N'2003-02-22' AS Date), N'0787945874', N'anhkhoa22022003@gmail.com', NULL, N'Đang làm', N'''''', N'QL', N'Ca01', N'232761')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'234397', N'Nguyễn Văn Bảo', N'052203878451', 1, CAST(N'2003-12-02' AS Date), N'0978451256', N'baonguyen@gmail.com', NULL, N'Đang làm', N'D:\MON\PTUD\s\src\IMG\anhMacDinhNhanVien _daThayDoi.png', N'NV', N'', N'234397')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'234817', N'Nguyễn Gia Huy', N'072203784515', 1, CAST(N'2003-01-01' AS Date), N'0784512361', N'cfdkcom@gmail.com', NULL, N'Đang làm', N'D:\MON\PTUD\s\src\IMG\anhMacDinhNhanVien _daThayDoi.png', N'QL', N'', N'234817')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'232108', N'145236', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'232761', N'122212', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'233294', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'234397', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'234817', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'235293', N'123456', N'', N'Đang đang nhập')
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210030600232108', N'232108', CAST(N'2023-10-22' AS Date), CAST(N'06:00:00' AS Time), CAST(N'22:06:42' AS Time), CAST(N'00:00:28' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210231710232761', N'232761', CAST(N'2023-10-22' AS Date), CAST(N'17:10:54' AS Time), CAST(N'17:10:59' AS Time), CAST(N'00:00:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210232152234397', N'234397', CAST(N'2023-10-22' AS Date), CAST(N'21:52:35' AS Time), CAST(N'23:34:39' AS Time), CAST(N'01:24:40' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210232341234397', N'234397', CAST(N'2023-10-22' AS Date), CAST(N'23:41:08' AS Time), CAST(N'23:42:14' AS Time), CAST(N'00:01:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2310230015232108', N'232108', CAST(N'2023-10-23' AS Date), CAST(N'00:15:52' AS Time), CAST(N'20:59:09' AS Time), CAST(N'02:41:57' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232051232108', N'232108', CAST(N'2023-10-24' AS Date), CAST(N'20:51:56' AS Time), CAST(N'23:11:04' AS Time), CAST(N'01:19:58' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232109232761', N'232761', CAST(N'2023-10-24' AS Date), CAST(N'21:09:39' AS Time), CAST(N'21:18:03' AS Time), CAST(N'00:08:23' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232218234397', N'234397', CAST(N'2023-10-24' AS Date), CAST(N'22:18:12' AS Time), CAST(N'22:19:02' AS Time), CAST(N'00:00:49' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232220234397', N'234397', CAST(N'2023-10-24' AS Date), CAST(N'22:20:32' AS Time), CAST(N'22:21:32' AS Time), CAST(N'00:00:59' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2510231016232108', N'232108', CAST(N'2023-10-25' AS Date), CAST(N'10:16:23' AS Time), CAST(N'13:59:35' AS Time), CAST(N'03:05:06' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2610231528232108', N'232108', CAST(N'2023-10-26' AS Date), CAST(N'15:28:06' AS Time), CAST(N'16:15:18' AS Time), CAST(N'00:13:49' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2710232104232108', N'232108', CAST(N'2023-10-27' AS Date), CAST(N'21:04:01' AS Time), CAST(N'00:08:16' AS Time), CAST(N'03:02:13' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2810230008232108', N'232108', CAST(N'2023-10-28' AS Date), CAST(N'00:08:23' AS Time), CAST(N'00:13:14' AS Time), CAST(N'00:00:36' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3010230141234397', N'234397', CAST(N'2023-10-30' AS Date), CAST(N'01:41:42' AS Time), CAST(N'01:41:44' AS Time), CAST(N'00:00:01' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3010230146232108', N'232108', CAST(N'2023-10-30' AS Date), CAST(N'01:46:09' AS Time), CAST(N'22:03:43' AS Time), CAST(N'01:03:16' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3110230038232108', N'232108', CAST(N'2023-10-31' AS Date), CAST(N'00:38:02' AS Time), CAST(N'11:58:12' AS Time), CAST(N'00:23:40' AS Time))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([HoaDonID])
REFERENCES [dbo].[HoaDon] ([HoaDonID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_VanPhongPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[VanPhongPham] ([VanPhongPhamID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_VanPhongPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([ChucVu])
REFERENCES [dbo].[ChucVu] ([ChucVuID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSanPham] FOREIGN KEY([LoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([LoaiSanPhamID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_LoaiSanPham]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaCungCap]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([NhaXuatBan])
REFERENCES [dbo].[NhaXuatBan] ([NhaXuatBan])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([TheLoai])
REFERENCES [dbo].[TheLoai] ([TheLoaiID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
ALTER TABLE [dbo].[ThoiGianHoatDong]  WITH CHECK ADD  CONSTRAINT [FK_ThoiGianHoatDong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[ThoiGianHoatDong] CHECK CONSTRAINT [FK_ThoiGianHoatDong_NhanVien]
GO
ALTER TABLE [dbo].[VanPhongPham]  WITH CHECK ADD  CONSTRAINT [FK_VanPhongPham_LoaiSanPham] FOREIGN KEY([LoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([LoaiSanPhamID])
GO
ALTER TABLE [dbo].[VanPhongPham] CHECK CONSTRAINT [FK_VanPhongPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[VanPhongPham]  WITH CHECK ADD  CONSTRAINT [FK_VanPhongPham_LoaiVanPhongPham] FOREIGN KEY([LoaiVanPhongPham])
REFERENCES [dbo].[LoaiVanPhongPham] ([LoaiVanPhongPhamID])
GO
ALTER TABLE [dbo].[VanPhongPham] CHECK CONSTRAINT [FK_VanPhongPham_LoaiVanPhongPham]
GO
ALTER TABLE [dbo].[VanPhongPham]  WITH CHECK ADD  CONSTRAINT [FK_VanPhongPham_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[VanPhongPham] CHECK CONSTRAINT [FK_VanPhongPham_NhaCungCap]
GO
ALTER TABLE [dbo].[VanPhongPham]  WITH CHECK ADD  CONSTRAINT [FK_VanPhongPham_XuatXu] FOREIGN KEY([XuatXu])
REFERENCES [dbo].[XuatXu] ([XuatXuID])
GO
ALTER TABLE [dbo].[VanPhongPham] CHECK CONSTRAINT [FK_VanPhongPham_XuatXu]
GO
USE [master]
GO
ALTER DATABASE [QuanLyHieuSach] SET  READ_WRITE 
GO
