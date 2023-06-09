USE [ThuongMaiDT5]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[cartItemId] [int] IDENTITY(1,1) NOT NULL,
	[cartId] [int] NULL,
	[productid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [tChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[cartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [tChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[reviewId] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[id] [int] NULL,
	[rate] [float] NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [tDanhGia] PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](1000) NOT NULL,
	[parentcategoryid] [int] NULL,
 CONSTRAINT [tDanhMuc] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[addressid] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](100) NULL,
	[district] [nvarchar](100) NULL,
	[addressline1] [nvarchar](100) NULL,
	[addressline2] [nvarchar](100) NULL,
 CONSTRAINT [tDiaChi] PRIMARY KEY CLUSTERED 
(
	[addressid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[supplierid] [int] NULL,
 CONSTRAINT [tGioHang] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[orderdate] [datetime] NULL,
	[methodid] [int] NULL,
	[addressid] [int] NULL,
	[statusid] [int] NULL,
	[supplierid] [int] NULL,
 CONSTRAINT [tHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phonenumber] [int] NULL,
	[passW] [nvarchar](100) NULL,
	[userN] [nvarchar](100) NOT NULL,
	[profilepic] [nvarchar](100) NULL,
	[roleid] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [tNguoiDung] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDungDiaChi]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungDiaChi](
	[userid] [int] NOT NULL,
	[addressid] [int] NOT NULL,
	[active] [bit] NULL,
 CONSTRAINT [tNguoiDungDiaChi] PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[addressid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[supplierid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phonenumber] [int] NULL,
	[passW] [nvarchar](100) NULL,
	[supplierN] [nvarchar](100) NOT NULL,
	[profilepic] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[approved] [bit] NULL,
	[supplier] [bit] NULL,
 CONSTRAINT [tSupplier] PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongThucGiaoHang]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucGiaoHang](
	[methodid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
 CONSTRAINT [tPhuongThucGiaoHang] PRIMARY KEY CLUSTERED 
(
	[methodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenTruyCap]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenTruyCap](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](10) NOT NULL,
 CONSTRAINT [tQuyenTruyCap] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[product_ame] [nvarchar](1000) NOT NULL,
	[categoryid] [int] NULL,
	[productimage] [nvarchar](1000) NULL,
	[price] [float] NULL,
	[description] [nvarchar](500) NULL,
	[InActive] [bit] NULL,
	[supplierid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [tSanPham] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangDanHang]    Script Date: 4/22/2023 3:20:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDanHang](
	[statusid] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [tTinhTrangDanHang] PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([cartId])
REFERENCES [dbo].[GioHang] ([cartId])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([productid])
REFERENCES [dbo].[SanPham] ([productid])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([orderid])
REFERENCES [dbo].[HoaDon] ([id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([productid])
REFERENCES [dbo].[SanPham] ([productid])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_ChiTietHoaDon] FOREIGN KEY([id])
REFERENCES [dbo].[ChiTietHoaDon] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_ChiTietHoaDon]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_NguoiDung]
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_DanhMuc_DanhMuc] FOREIGN KEY([parentcategoryid])
REFERENCES [dbo].[DanhMuc] ([categoryid])
GO
ALTER TABLE [dbo].[DanhMuc] CHECK CONSTRAINT [FK_DanhMuc_DanhMuc]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NguoiDung]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_tNhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_tNhaCungCap]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DiaChi] FOREIGN KEY([addressid])
REFERENCES [dbo].[DiaChi] ([addressid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DiaChi]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhuongThucGiaoHang] FOREIGN KEY([methodid])
REFERENCES [dbo].[PhuongThucGiaoHang] ([methodid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhuongThucGiaoHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TinhTrangDanHang] FOREIGN KEY([statusid])
REFERENCES [dbo].[TinhTrangDanHang] ([statusid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TinhTrangDanHang]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenTruyCap] FOREIGN KEY([roleid])
REFERENCES [dbo].[QuyenTruyCap] ([roleid])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_QuyenTruyCap]
GO
ALTER TABLE [dbo].[NguoiDungDiaChi]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungDiaChi_DiaChi] FOREIGN KEY([addressid])
REFERENCES [dbo].[DiaChi] ([addressid])
GO
ALTER TABLE [dbo].[NguoiDungDiaChi] CHECK CONSTRAINT [FK_NguoiDungDiaChi_DiaChi]
GO
ALTER TABLE [dbo].[NguoiDungDiaChi]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungDiaChi_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO
ALTER TABLE [dbo].[NguoiDungDiaChi] CHECK CONSTRAINT [FK_NguoiDungDiaChi_NguoiDung]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([categoryid])
REFERENCES [dbo].[DanhMuc] ([categoryid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_tNhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_tNhaCungCap]
GO
