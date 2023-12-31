USE [master]
GO
/****** Object:  Database [QuanLyHieuSach]    Script Date: 12/13/2023 1:17:22 PM ******/
CREATE DATABASE [QuanLyHieuSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyHieuSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyHieuSach.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyHieuSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyHieuSach_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyHieuSach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyHieuSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyHieuSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyHieuSach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHieuSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHieuSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyHieuSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyHieuSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyHieuSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyHieuSach] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyHieuSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyHieuSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyHieuSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyHieuSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyHieuSach]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[CaID] [nvarchar](50) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
	[ThoiGianBatDau] [time](7) NOT NULL,
	[ThoiGianKetCa] [time](7) NOT NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[CaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[GiamGiaSanPham]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGiaSanPham](
	[GiamGiaSanPhamID] [nvarchar](50) NOT NULL,
	[TenGiamGia] [nvarchar](250) NOT NULL,
	[SanPhamID] [nvarchar](50) NULL,
	[SoTienGiam] [float] NULL,
	[TyLeGiam] [float] NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[ChiTiet] [nvarchar](500) NULL,
	[Loai] [int] NOT NULL,
 CONSTRAINT [PK_GiamGiaSanPham] PRIMARY KEY CLUSTERED 
(
	[GiamGiaSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangCho]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangCho](
	[KhachHangID] [nvarchar](50) NOT NULL,
	[SanPhamID] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NgayMua] [date] NOT NULL,
 CONSTRAINT [PK_HangCho] PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC,
	[SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[KhuyenMaiThanhToan]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMaiThanhToan](
	[MaKhuyenMai] [nvarchar](50) NOT NULL,
	[TenKhuyenMai] [nvarchar](50) NOT NULL,
	[PhanTramGiam] [nvarchar](50) NULL,
	[GiaTriToiThieuDonHang] [float] NULL,
	[GiamToiDa] [float] NULL,
	[SoTienGiam] [float] NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[ChiTiet] [nvarchar](500) NULL,
	[Loai] [int] NOT NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[LoaiVanPhongPham]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[NgonNguThue]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgonNguThue](
	[NgonNguID] [nvarchar](50) NOT NULL,
	[Thue] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/13/2023 1:17:23 PM ******/
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
	[CaLamViec] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[SoLuongNhapToiThieu] [int] NOT NULL,
	[SoLuongNhapToiDa] [int] NOT NULL,
	[VAT] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/13/2023 1:17:23 PM ******/
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
	[TinhTrang] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](250) NOT NULL,
	[NgonNgu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[SachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach_TacGia]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_TacGia](
	[SachID] [nvarchar](50) NOT NULL,
	[TacGiaID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SachID] ASC,
	[TacGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach_TheLoai]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_TheLoai](
	[SachID] [nvarchar](50) NOT NULL,
	[TheLoaiID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SachID] ASC,
	[TheLoaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[TacGiaID] [nvarchar](50) NOT NULL,
	[TenTacGia] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[TacGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[ThoiGianHoatDong]    Script Date: 12/13/2023 1:17:23 PM ******/
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
/****** Object:  Table [dbo].[Thue]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thue](
	[ThueID] [nvarchar](50) NOT NULL,
	[MucThue] [float] NOT NULL,
 CONSTRAINT [PK_TheLoaiThue] PRIMARY KEY CLUSTERED 
(
	[ThueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 12/13/2023 1:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[ThuongHieuID] [nvarchar](250) NOT NULL,
	[TenThuongHieu] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[ThuongHieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VanPhongPham]    Script Date: 12/13/2023 1:17:23 PM ******/
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
	[TinhTrang] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[XuatXu]    Script Date: 12/13/2023 1:17:23 PM ******/
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
INSERT [dbo].[CaLamViec] ([CaID], [TenCa], [ThoiGianBatDau], [ThoiGianKetCa]) VALUES (N'Ca01', N'Ca sáng', CAST(N'06:00:00' AS Time), CAST(N'13:59:59' AS Time))
INSERT [dbo].[CaLamViec] ([CaID], [TenCa], [ThoiGianBatDau], [ThoiGianKetCa]) VALUES (N'Ca02', N'Ca chiều', CAST(N'14:00:00' AS Time), CAST(N'21:59:59' AS Time))
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'06122321080001', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'06122321080002', N'Sach001', 1, 78000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'06122321080002', N'VPP1', 1, 3000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'06122321080003', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'06122321080003', N'VanPhongPham00001', 1, 5000)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'07122321080001', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'07122321080002', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'07122321080003', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'07122321080004', N'Sach00001', 1, 188888)
INSERT [dbo].[ChiTietHoaDon] ([HoaDonID], [SanPhamID], [SoLuong], [DonGia]) VALUES (N'07122321080004', N'Sach0003', 1, 60000)
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (N'NV', N'Nhân viên ')
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (N'QL', N'Quản lý   ')
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT0712230001', N'Giảm giá sản phẩm', N'Sach00001', 10000, NULL, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đang diễn ra', NULL, 1)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT1012230001', N'Giảm giá sản phẩm', N'Sach0005', 10000, NULL, CAST(N'2023-12-14' AS Date), CAST(N'2023-12-31' AS Date), N'Sắp diễn ra', N'a', 1)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT1012230002', N'Giảm giá sản phẩm', N'Sach002', 10000, NULL, CAST(N'2023-12-16' AS Date), CAST(N'2023-12-31' AS Date), N'Sắp diễn ra', N'', 1)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT1212230001', N'', N'', 10, 0, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-17' AS Date), N'Đang diễn ra', N'10000', 3)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT1212230002', N'giảm 100k toàn bộ sản phẩm', N'', 10000, 0, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-17' AS Date), N'Đang diễn ra', N'1', 7)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPGT1212230003', N'', N'', 11500, 0, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-17' AS Date), N'Đang diễn ra', N'10000', 5)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPTL1212230001', N'a', N'', NULL, 10, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 2)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPTL1212230002', N'Giảm giá 10% cho sách Tôi Thấy Hoa vàng', N'Sach0005', NULL, 15, CAST(N'2023-12-15' AS Date), CAST(N'2023-12-30' AS Date), N'Sắp diễn ra', N'', 2)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPTL1212230003', N'', N'', NULL, 10, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 4)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPTL1212230004', N'asas', N'', NULL, 5, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 8)
INSERT [dbo].[GiamGiaSanPham] ([GiamGiaSanPhamID], [TenGiamGia], [SanPhamID], [SoTienGiam], [TyLeGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai]) VALUES (N'GGSPTL1212230005', N'', N'', NULL, 0, CAST(N'2023-12-13' AS Date), CAST(N'2023-12-17' AS Date), N'Sắp diễn ra', N'', 6)
INSERT [dbo].[HangCho] ([KhachHangID], [SanPhamID], [SoLuong], [NgayMua]) VALUES (N'1123043178', N'Sach001', 1, CAST(N'2023-12-06' AS Date))
INSERT [dbo].[HangCho] ([KhachHangID], [SanPhamID], [SoLuong], [NgayMua]) VALUES (N'1123043178', N'VPP1', 1, CAST(N'2023-12-06' AS Date))
INSERT [dbo].[HangCho] ([KhachHangID], [SanPhamID], [SoLuong], [NgayMua]) VALUES (N'1123048281', N'Sach00001', 1, CAST(N'2023-12-06' AS Date))
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'01122321080001', CAST(N'2023-12-01' AS Date), N'232108', N'KHL1223040699')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'06122321080001', CAST(N'2023-12-06' AS Date), N'232108', N'1123048281')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'06122321080002', CAST(N'2023-12-06' AS Date), N'232108', N'1123043178')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'06122321080003', CAST(N'2023-12-06' AS Date), N'232108', N'KHL1223026807')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'07122321080001', CAST(N'2023-12-07' AS Date), N'232108', N'KHL1223076583')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'07122321080002', CAST(N'2023-12-07' AS Date), N'232108', N'KHL1223069415')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'07122321080003', CAST(N'2023-12-07' AS Date), N'232108', N'KHL1223075345')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'07122321080004', CAST(N'2023-12-07' AS Date), N'232108', N'KHL1223035187')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'20112321080001', CAST(N'2023-11-20' AS Date), N'232108', N'1123048281')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'20112321080003', CAST(N'2023-11-20' AS Date), N'232108', N'KHL1123027459')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'20112321080004', CAST(N'2023-11-20' AS Date), N'232108', N'KHL1123017920')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'20112321080005', CAST(N'2023-11-20' AS Date), N'232108', N'KHL1123046818')
INSERT [dbo].[HoaDon] ([HoaDonID], [NgayLapHD], [NhanVienID], [KhachHangID]) VALUES (N'27112321080001', CAST(N'2023-11-27' AS Date), N'232108', N'1123048281')
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'1123043178', N'Nguyễn Văn Châu', N'0123456789', N'Tỉnh Hà Giang-Thành phố Hà Giang-Phường Quang Trung', NULL)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'1123048281', N'Nguyễn Văn Cần', N'0147852369', N'Tỉnh Hà Giang-Thành phố Hà Giang-Phường Quang Trung', NULL)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'1123073916', N'Abc', N'0145236784', N'Thành phố Hà Nội-Quận Ba Đình-Phường Trúc Bạch', NULL)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1123017920', N'No name', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1123027459', N'No name', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1123046818', N'No name', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223026807', N'No name', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223035187', N'No name', NULL, NULL, 2)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223040699', N'No name', NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223069415', N'No name', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223075345', N'No name', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKhachHang], [SoDienThoai], [DiaChi], [DiemTL]) VALUES (N'KHL1223076583', N'No name', NULL, NULL, 1)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL07122301', N'Khuyến mãi giảm 10% đơn hàng tối thiểu 500k', N'10', 500000, 0, NULL, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đang diễn ra', NULL, 1, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT07122301', N'Giảm 50k cho đơn hàng 500k', N'0', 500000, 0, 50000, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 2, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL12122301', N'Khuyến mãi', N'10', 1000000, 200000, NULL, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 1, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL12122302', N'', N'10', 1000000, 1000, NULL, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 1, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL12122303', N'a', N'100000', 1, 0, NULL, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 1, 10)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT12122301', N'Khuyến mãi thanh toán', NULL, 1000000, NULL, 100000, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 2, 1000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT12122302', N'Khuyến mãi thanh toán', N'0', 1000000, 0, 100000, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-22' AS Date), N'Đang diễn ra', N'', 2, 1000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL12122304', N'khuyến mãi', N'10', 100000, 10000, NULL, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-12' AS Date), N'Đang diễn ra', N'', 1, 10000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT13122301', N'', NULL, 1000000, NULL, 100000, CAST(N'2023-12-15' AS Date), CAST(N'2023-12-31' AS Date), N'Sắp diễn ra', N'', 2, 10000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT07122301', N'Giảm 50k cho đơn hàng 500k', N'0', 500000, 0, 50000, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 2, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT13122302', N'Giảm 50k cho đơn hàng 500k', NULL, 500000, NULL, 50000, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 2, 1000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT13122303', N'Giảm 50k cho đơn hàng 500k', NULL, 500000, NULL, 50000, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 2, 1000)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMGT07122301', N'Giảm 50k cho đơn hàng 500k', N'0', 500000, 0, 50000, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 2, 100)
INSERT [dbo].[KhuyenMaiThanhToan] ([MaKhuyenMai], [TenKhuyenMai], [PhanTramGiam], [GiaTriToiThieuDonHang], [GiamToiDa], [SoTienGiam], [NgayBatDau], [NgayKetThuc], [TinhTrang], [ChiTiet], [Loai], [SoLuong]) VALUES (N'KMTL07122301', N'Khuyến mãi giảm 10% đơn hàng tối thiểu 500k', N'10', 500000, 0, NULL, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-10' AS Date), N'Đã kết thúc', N'', 1, 100)
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [TenLoaiSanPham]) VALUES (N'LSP000001', N'Sách')
INSERT [dbo].[LoaiSanPham] ([LoaiSanPhamID], [TenLoaiSanPham]) VALUES (N'LSP000002', N'Văn phòng phẩm')
INSERT [dbo].[LoaiVanPhongPham] ([LoaiVanPhongPhamID], [TenVanPhongPham]) VALUES (N'LVPP1', N'Bút')
INSERT [dbo].[LoaiVanPhongPham] ([LoaiVanPhongPhamID], [TenVanPhongPham]) VALUES (N'LVPP2', N'Thước')
INSERT [dbo].[LoaiVanPhongPham] ([LoaiVanPhongPhamID], [TenVanPhongPham]) VALUES (N'LVPP3', N'Cặp sách')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SanPhamCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'HNBST', N'Hà Nội Bookstore', N'Sách', NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SanPhamCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NCC1', N'Thăng Long', N'Văn phòng phẩm', N'0788455884', N'0788455884', N'Tỉnh Quảng Ninh-Thị xã Quảng Yên-Phường Quảng Yên')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SanPhamCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NSPN', N'Nhà sách Phương Nam', N'Sách', NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SanPhamCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'OM', N'OfficeMate', N'Văn phòng phẩm', NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SanPhamCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'TGSTN', N'Thế Giới Sổ Tài Nguyên ', N'Văn phòng phẩm', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'232108', N'Ngô Thái Hiệp', N'052203008592', 1, CAST(N'2003-12-28' AS Date), N'0374313529', N'ngohiep1750@gmail.com', N'Tỉnh Bình Định-Huyện Phù Cát-Xã Cát Hanh', N'Đang làm', N'D:\MON\PTUD\DoAn1 - Copy\QuanLyHieuSach\src\IMG\z4776091937163_3eb03bdcabc2427f64da447f879600ac.jpg', N'QL', N'', N'232108')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'232761', N'Phạm Anh Khoa', N'052203008592', 1, CAST(N'2003-01-01' AS Date), N'0787945874', N'anhkhoa22022003@gmail.com', N'Tỉnh Cao Bằng', N'Đang làm', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh.png', N'QL', N'', N'232761')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'234397', N'Nguyễn Văn Bảo', N'052203878451', 1, CAST(N'2003-12-02' AS Date), N'0978451256', N'baonguyen@gmail.com', N'', N'Đang làm', N'C:\Users\FPTSHOP\Downloads\message.png', N'NV', N'Ca02', N'234397')
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTenNhanVien], [CCCD], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [TrangThai], [HinhAnh], [ChucVu], [CaLamViec], [TaiKhoan]) VALUES (N'234817', N'Nguyễn Gia Huy', N'072203784515', 1, CAST(N'2003-01-01' AS Date), N'0784512361', N'cfdkcom@gmail.com', N'', N'Đang làm', N'D:\MON\PTUD\s\src\IMG\anhMacDinhNhanVien _daThayDoi.png', N'QL', N'', N'234817')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBan], [TenNhaXuatBan], [Email], [SoDienThoai], [DiaChi]) VALUES (N'NCC1', N'TiKi', N'0784584541                                                                                                                                                                                              ', N'0784584541          ', N'Thành phố Hà Nội-Quận Ba Đình-Phường Phúc Xá')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBan], [TenNhaXuatBan], [Email], [SoDienThoai], [DiaChi]) VALUES (N'NXBKD', N'Nhà Xuất Bản Kim Đồng', NULL, NULL, NULL)
INSERT [dbo].[NhaXuatBan] ([NhaXuatBan], [TenNhaXuatBan], [Email], [SoDienThoai], [DiaChi]) VALUES (N'NXBT', N'Nhà Xuất Bản Trẻ', NULL, NULL, NULL)
INSERT [dbo].[QuyDinh] ([SoLuongNhapToiThieu], [SoLuongNhapToiDa], [VAT]) VALUES (100, 150, 8.5)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach00001', N'Ánh Sao', N'Tố Hữu,Nguyen Nhat Anh', N'NXBT', 1988, 1555, N'Tự sự,Trinh Thám', N'LSP000001', N'NSPN', 20, 188888, N'Một cuốn sách mới', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhTrangChu.png', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach00002', N'Nhà Giả Kim', N'Nguyen Nhat Anh', N'NCC1', 1888, 111, N'Tiểu thuyết,Ngôn tình,Bi kịch', N'LSP000001', N'HNBST', 15, 122212, N'', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh_daThayDoi.png', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach0003', N'Toi Thay Hoa Vang Tren Co Xanh', N'Nguyen Nhat Anh,Tố Hữu', N'NXBKD', 2010, 200, N'Tự sự,Tiểu thuyết,Ngôn tình', N'LSP000001', N'NSPN', 150, 60000, N'', N'Ngừng kinh doanh', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh.png', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach0004', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', N'Nguyen Nhat Anh', N'NXBKD', 2010, 150, N'Văn học', N'LSP000001', N'HNBST', 10, 12221, N'', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhMacDinhNhanVien.png', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach0005', N'Toi Thay Hoa Vang Tren Co Xanh', N'Nguyen Nhat Anh', N'NXBT', 2010, 200, N'Tiểu thuyết,Ngôn tình', N'LSP000001', N'HNBST', 100, 50000, N'', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\dangXuat.jpg', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach001', N'Từ ấy', N'Tố Hữu', N'NXBKD', 1978, 200, N'Trinh Thám,Tiểu thuyết', N'LSP000001', N'HNBST', 100, 78000, N'', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh.png', N'Tiếng Việt')
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBan], [NamXuatBan], [SoTrang], [TheLoai], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [NgonNgu]) VALUES (N'Sach002', N'Từ ấy', N'Tố Hữu', N'NXBT', 1978, 200, N'Trinh Thám', N'LSP000001', N'NSPN', 200, 78000, N'', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh.png', N'Tiếng Việt')
INSERT [dbo].[Sach_TheLoai] ([SachID], [TheLoaiID]) VALUES (N'Sach001', N'NT')
INSERT [dbo].[Sach_TheLoai] ([SachID], [TheLoaiID]) VALUES (N'Sach001', N'TS')
INSERT [dbo].[Sach_TheLoai] ([SachID], [TheLoaiID]) VALUES (N'Sach002', N'NT')
INSERT [dbo].[Sach_TheLoai] ([SachID], [TheLoaiID]) VALUES (N'Sach002', N'TS')
INSERT [dbo].[TacGia] ([TacGiaID], [TenTacGia]) VALUES (N'TG1', N'Tố Hữu')
INSERT [dbo].[TacGia] ([TacGiaID], [TenTacGia]) VALUES (N'TG2', N'Nguyen Nhat Anh')
INSERT [dbo].[TacGia] ([TacGiaID], [TenTacGia]) VALUES (N'TG3', N'Hữu Cảnh')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'232108', N'123456', N'', N'Đang đăng nhập')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'232761', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'233294', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'234397', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'234817', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaXacNhan], [TrangThai]) VALUES (N'235293', N'123456', N'', N'Đã đăng xuất')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'NT', N'Ngôn tình')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'TL1', N'Bi kịch')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'TL2', N'Khoa học')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'TS', N'Tự sự')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'TT', N'Tiểu thuyết')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'TTT', N'Trinh Thám')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (N'VanHoc', N'Văn học')
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0112231456232108', N'232108', CAST(N'2023-12-01' AS Date), CAST(N'14:56:57' AS Time), CAST(N'20:25:01' AS Time), CAST(N'01:51:21' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0211231717232108', N'232108', CAST(N'2023-11-02' AS Date), CAST(N'17:17:11' AS Time), CAST(N'21:06:21' AS Time), CAST(N'01:33:17' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0212231926232108', N'232108', CAST(N'2023-12-02' AS Date), CAST(N'19:26:30' AS Time), CAST(N'19:26:59' AS Time), CAST(N'00:00:28' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0311230007232108', N'232108', CAST(N'2023-11-03' AS Date), CAST(N'00:07:35' AS Time), CAST(N'23:57:44' AS Time), CAST(N'02:21:11' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0311230008232761', N'232761', CAST(N'2023-11-03' AS Date), CAST(N'00:08:05' AS Time), CAST(N'00:08:08' AS Time), CAST(N'00:00:02' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0312230013232108', N'232108', CAST(N'2023-12-03' AS Date), CAST(N'00:13:53' AS Time), CAST(N'00:37:54' AS Time), CAST(N'00:14:07' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0411231236232108', N'232108', CAST(N'2023-11-04' AS Date), CAST(N'12:36:50' AS Time), CAST(N'18:12:40' AS Time), CAST(N'05:35:48' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0511231435232108', N'232108', CAST(N'2023-11-05' AS Date), CAST(N'14:35:09' AS Time), CAST(N'23:51:11' AS Time), CAST(N'00:43:52' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0611230004232108', N'232108', CAST(N'2023-11-06' AS Date), CAST(N'00:04:33' AS Time), CAST(N'22:36:52' AS Time), CAST(N'00:15:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0611232036232761', N'232761', CAST(N'2023-11-06' AS Date), CAST(N'20:36:49' AS Time), NULL, NULL)
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0611232038234397', N'234397', CAST(N'2023-11-06' AS Date), CAST(N'20:38:14' AS Time), CAST(N'20:40:59' AS Time), CAST(N'00:02:44' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0612231404232108', N'232108', CAST(N'2023-12-06' AS Date), CAST(N'14:04:14' AS Time), CAST(N'23:28:23' AS Time), CAST(N'06:46:13' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0711231638232108', N'232108', CAST(N'2023-11-07' AS Date), CAST(N'16:38:46' AS Time), CAST(N'21:26:30' AS Time), CAST(N'00:08:50' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0712230044232108', N'232108', CAST(N'2023-12-07' AS Date), CAST(N'00:44:13' AS Time), CAST(N'14:16:07' AS Time), CAST(N'14:30:49' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0811230948232108', N'232108', CAST(N'2023-11-08' AS Date), CAST(N'09:48:06' AS Time), CAST(N'14:43:39' AS Time), CAST(N'04:39:38' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'0812231420232108', N'232108', CAST(N'2023-12-08' AS Date), CAST(N'14:20:38' AS Time), CAST(N'14:46:19' AS Time), CAST(N'00:17:31' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1012231841232108', N'232108', CAST(N'2023-12-10' AS Date), CAST(N'18:41:26' AS Time), CAST(N'23:42:38' AS Time), CAST(N'00:34:07' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1111231139232108', N'232108', CAST(N'2023-11-11' AS Date), CAST(N'11:39:34' AS Time), CAST(N'11:40:29' AS Time), CAST(N'00:00:54' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1112231521232108', N'232108', CAST(N'2023-12-11' AS Date), CAST(N'15:21:39' AS Time), CAST(N'21:32:44' AS Time), CAST(N'02:14:16' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1212231504232108', N'232108', CAST(N'2023-12-12' AS Date), CAST(N'15:04:47' AS Time), CAST(N'22:25:32' AS Time), CAST(N'00:29:06' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1311230631232108', N'232108', CAST(N'2023-11-13' AS Date), CAST(N'06:31:01' AS Time), CAST(N'00:00:26' AS Time), CAST(N'02:30:01' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1312231002232108', N'232108', CAST(N'2023-12-13' AS Date), CAST(N'10:02:52' AS Time), CAST(N'13:13:27' AS Time), CAST(N'00:53:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1411230000232108', N'232108', CAST(N'2023-11-14' AS Date), CAST(N'00:00:28' AS Time), CAST(N'23:55:28' AS Time), CAST(N'01:52:12' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1511230047232108', N'232108', CAST(N'2023-11-15' AS Date), CAST(N'00:47:15' AS Time), CAST(N'23:59:12' AS Time), CAST(N'15:21:28' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1611230002232108', N'232108', CAST(N'2023-11-16' AS Date), CAST(N'00:02:53' AS Time), CAST(N'12:22:25' AS Time), CAST(N'02:09:56' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'1911231500232108', N'232108', CAST(N'2023-11-19' AS Date), CAST(N'15:00:20' AS Time), CAST(N'23:26:01' AS Time), CAST(N'03:45:35' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2011230949232108', N'232108', CAST(N'2023-11-20' AS Date), CAST(N'09:49:17' AS Time), CAST(N'07:20:05' AS Time), CAST(N'10:46:40' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2111232307232108', N'232108', CAST(N'2023-11-21' AS Date), CAST(N'23:07:26' AS Time), NULL, NULL)
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2111232308234817', N'234817', CAST(N'2023-11-21' AS Date), CAST(N'23:08:55' AS Time), CAST(N'23:14:24' AS Time), CAST(N'00:05:28' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'211231620232761', N'232761', CAST(N'2023-11-02' AS Date), CAST(N'16:20:09' AS Time), CAST(N'00:07:28' AS Time), CAST(N'03:01:15' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210030600232108', N'232108', CAST(N'2023-10-22' AS Date), CAST(N'06:00:00' AS Time), CAST(N'22:06:42' AS Time), CAST(N'00:00:28' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210231710232761', N'232761', CAST(N'2023-10-22' AS Date), CAST(N'17:10:54' AS Time), CAST(N'17:10:59' AS Time), CAST(N'00:00:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210232152234397', N'234397', CAST(N'2023-10-22' AS Date), CAST(N'21:52:35' AS Time), CAST(N'23:34:39' AS Time), CAST(N'01:24:40' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2210232341234397', N'234397', CAST(N'2023-10-22' AS Date), CAST(N'23:41:08' AS Time), CAST(N'23:42:14' AS Time), CAST(N'00:01:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2310230015232108', N'232108', CAST(N'2023-10-23' AS Date), CAST(N'00:15:52' AS Time), CAST(N'20:59:09' AS Time), CAST(N'02:41:57' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232051232108', N'232108', CAST(N'2023-10-24' AS Date), CAST(N'20:51:56' AS Time), CAST(N'23:11:04' AS Time), CAST(N'01:19:58' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232109232761', N'232761', CAST(N'2023-10-24' AS Date), CAST(N'21:09:39' AS Time), CAST(N'21:18:03' AS Time), CAST(N'00:08:23' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232218234397', N'234397', CAST(N'2023-10-24' AS Date), CAST(N'22:18:12' AS Time), CAST(N'22:19:02' AS Time), CAST(N'00:00:49' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2410232220234397', N'234397', CAST(N'2023-10-24' AS Date), CAST(N'22:20:32' AS Time), CAST(N'22:21:32' AS Time), CAST(N'00:00:59' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2411231012232108', N'232108', CAST(N'2023-11-24' AS Date), CAST(N'10:12:11' AS Time), CAST(N'13:29:46' AS Time), CAST(N'03:17:13' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2510231016232108', N'232108', CAST(N'2023-10-25' AS Date), CAST(N'10:16:23' AS Time), CAST(N'13:59:35' AS Time), CAST(N'03:05:06' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2610231528232108', N'232108', CAST(N'2023-10-26' AS Date), CAST(N'15:28:06' AS Time), CAST(N'16:15:18' AS Time), CAST(N'00:13:49' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2611231446232108', N'232108', CAST(N'2023-11-26' AS Date), CAST(N'14:46:22' AS Time), CAST(N'21:59:14' AS Time), CAST(N'03:21:05' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2710232104232108', N'232108', CAST(N'2023-10-27' AS Date), CAST(N'21:04:01' AS Time), CAST(N'00:08:16' AS Time), CAST(N'03:02:13' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2711232111232108', N'232108', CAST(N'2023-11-27' AS Date), CAST(N'21:11:54' AS Time), CAST(N'23:15:32' AS Time), CAST(N'00:50:10' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'2810230008232108', N'232108', CAST(N'2023-10-28' AS Date), CAST(N'00:08:23' AS Time), CAST(N'00:13:14' AS Time), CAST(N'00:00:36' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3010230141234397', N'234397', CAST(N'2023-10-30' AS Date), CAST(N'01:41:42' AS Time), CAST(N'01:41:44' AS Time), CAST(N'00:00:01' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3010230146232108', N'232108', CAST(N'2023-10-30' AS Date), CAST(N'01:46:09' AS Time), CAST(N'22:03:43' AS Time), CAST(N'01:03:16' AS Time))
INSERT [dbo].[ThoiGianHoatDong] ([ThoiGianHoatDongID], [NhanVienID], [NgayDangNhap], [ThoiGianDangNhap], [ThoiGianDangXuat], [ThoiGianDaLam]) VALUES (N'3110230038232108', N'232108', CAST(N'2023-10-31' AS Date), CAST(N'00:38:02' AS Time), CAST(N'11:58:12' AS Time), CAST(N'00:23:40' AS Time))
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'NT', 11)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'TL1', 15)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'TL2', 14)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'TS', 10)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'TT', 1)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'TTT', 1)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'USA', 2.5)
INSERT [dbo].[Thue] ([ThueID], [MucThue]) VALUES (N'VN', 11)
INSERT [dbo].[ThuongHieu] ([ThuongHieuID], [TenThuongHieu]) VALUES (N'TH1', N'Thăng long')
INSERT [dbo].[ThuongHieu] ([ThuongHieuID], [TenThuongHieu]) VALUES (N'TH2', N'Hoa Hồng')
INSERT [dbo].[VanPhongPham] ([VanPhongPhamID], [TenVanPhongPham], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [XuatXu], [NamSanXuat], [ChatLieu], [ThuongHieu], [LoaiVanPhongPham]) VALUES (N'VanPhongPham00001', N'Thước Eke', N'LSP000001', N'TGSTN', 5, 5000, N'5', N'Ngừng kinh doanh', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhSachMacDinh_daThayDoi.png', N'USA', 1999, N'Nhựa', N'TH1', N'LVPP1')
INSERT [dbo].[VanPhongPham] ([VanPhongPhamID], [TenVanPhongPham], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [XuatXu], [NamSanXuat], [ChatLieu], [ThuongHieu], [LoaiVanPhongPham]) VALUES (N'VanPhongPham00002', N'Bút Bi Q', N'LSP000001', N'NCC1', 100, 50000, N'Văn phòng phẩm', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\anhTrangChu.png', N'VN', 2000, N'Gỗ', N'TH1', N'LVPP1')
INSERT [dbo].[VanPhongPham] ([VanPhongPhamID], [TenVanPhongPham], [LoaiSanPham], [NhaCungCap], [SoLuongTon], [DonGia], [MoTa], [TinhTrang], [HinhAnh], [XuatXu], [NamSanXuat], [ChatLieu], [ThuongHieu], [LoaiVanPhongPham]) VALUES (N'VPP1', N'Bút Thanh Long', N'LSP000002', N'OM', 15, 3000, N'VPP1', N'Còn hàng', N'D:\MON\PTUD\DoAn1\QuanLySach\QuanLyHieuSach\src\IMG\hoaDon.png', N'USA', 1997, N'Gỗ', N'TH1', N'LVPP1')
INSERT [dbo].[XuatXu] ([XuatXuID], [TenQuocGia]) VALUES (N'USA', N'Mỹ')
INSERT [dbo].[XuatXu] ([XuatXuID], [TenQuocGia]) VALUES (N'VN', N'Việt Nam')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([HoaDonID])
REFERENCES [dbo].[HoaDon] ([HoaDonID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[HangCho]  WITH CHECK ADD  CONSTRAINT [FK_HangCho_KhachHang] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HangCho] CHECK CONSTRAINT [FK_HangCho_KhachHang]
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
ALTER TABLE [dbo].[Sach_TacGia]  WITH CHECK ADD FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[Sach_TacGia]  WITH CHECK ADD FOREIGN KEY([TacGiaID])
REFERENCES [dbo].[TacGia] ([TacGiaID])
GO
ALTER TABLE [dbo].[Sach_TheLoai]  WITH CHECK ADD FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[Sach_TheLoai]  WITH CHECK ADD FOREIGN KEY([TheLoaiID])
REFERENCES [dbo].[TheLoai] ([TheLoaiID])
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
ALTER TABLE [dbo].[VanPhongPham]  WITH CHECK ADD  CONSTRAINT [FK_VanPhongPham_ThuongHieu] FOREIGN KEY([ThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([ThuongHieuID])
GO
ALTER TABLE [dbo].[VanPhongPham] CHECK CONSTRAINT [FK_VanPhongPham_ThuongHieu]
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
