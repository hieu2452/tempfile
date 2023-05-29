create database ThuongMaiDT5

use ThuongMaiDT5


CREATE TABLE [dbo].[DanhMuc](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](1000) NOT NULL,
	[parentcategoryid] [int] Null
 CONSTRAINT [tDanhMuc] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
 CONSTRAINT [tSanPham] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

alter table [SanPham]
add qty int


CREATE TABLE [dbo].[ChiTietSp](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[SKU] [nvarchar](100) NOT NULL UNIQUE,
	[product_image] [nvarchar](100) NULL,
	[price] [float] NULL,
	[qtyinstock] [int] NULL,
 CONSTRAINT [tChiTietSp] PRIMARY KEY CLUSTERED 
(
	[itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[PhanLoai](
	[variationid] [int] IDENTITY(1,1) NOT NULL,
	[categoryid] [int] NULL,
	[variationname] [nvarchar](100) Null ,
 CONSTRAINT [tPhanLoai] PRIMARY KEY CLUSTERED 
(
	[variationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DacTinhPhanLoai](
	[optionid] [int] IDENTITY(1,1) NOT NULL,
	[value] [nvarchar](100)  NULL,
	[variationid] [int] Null
 CONSTRAINT [tDacTinhPhanLoai] PRIMARY KEY CLUSTERED 
(
	[optionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[SanPhamPhanLoai](
	[itemid] [int] NOT NULL,
	[optionid] [int] NOT Null,
	[active] [bit] NULL
 CONSTRAINT [tSanPhamPhanLoai] PRIMARY KEY CLUSTERED 
(
	[itemid] ASC,
	[optionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NguoiDung](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100)  NOT NULL,
	[phonenumber] [int] Null,
	[passW] [nvarchar](100) NUll,
	[userN] [nvarchar](100) NOT NUll,
	[profilepic] [nvarchar](100) NUll,
	[roleid] [int] NULL,
 CONSTRAINT [tNguoiDung] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

alter table [NguoiDung] drop constraint FK_NguoiDung_QuyenTruyCap
alter table [NguoiDung] drop column roleid

alter table [NguoiDung] add roleid [int] NULL

ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenTruyCap] FOREIGN KEY([roleid])
REFERENCES [dbo].[QuyenTruyCap] ([roleid])
GO 

CREATE TABLE [dbo].[BinhLuan](
	[commentid] [int] IDENTITY(1,1) NOT NULL,
	[userid] int  NULL,
	[productid] int Null,
	[content] [nvarchar](max) 
 CONSTRAINT [tBinhLuan] PRIMARY KEY CLUSTERED 
(
	[commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLua_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO 

ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLua_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO

CREATE TABLE [dbo].[QuyenTruyCap](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](10)  NOT NULL,
 CONSTRAINT [tQuyenTruyCap] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[DiaChi](
	[addressid] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](100)  NULL,
	[district] [nvarchar](100) Null,
	[addressline1] [nvarchar](100) Null,
	[addressline2] [nvarchar](100) Null,
 CONSTRAINT [tDiaChi] PRIMARY KEY CLUSTERED 
(
	[addressid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[NguoiDungDiaChi](
	[userid] [int] NOT NULL,
	[addressid] [int] NOT Null,
	[active] [bit] NUlL
 CONSTRAINT [tNguoiDungDiaChi] PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[addressid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NhaCungCap](
	[supplierid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100)  NOT NULL,
	[phonenumber] [int] Null,
	[passW] [nvarchar](100) NUll,
	[supplierN] [nvarchar](100) NOT NUll,
	[profilepic] [nvarchar](100) NUll,
	[description] [nvarchar](max) NUll,
	[approved] [bit] NULL,
	[supplier] [bit] NULL,
 CONSTRAINT [tSupplier] PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[TinhTrangDanHang](
	[statusid] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50)  NOT NULL,
 CONSTRAINT [tTinhTrangDanHang] PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PhuongThucGiaoHang](
	[methodid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50)  NOT NULL,
	[price] [float] NULL,
 CONSTRAINT [tPhuongThucGiaoHang] PRIMARY KEY CLUSTERED 
(
	[methodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int]  NOT NULL,
	[orderdate] datetime NULL,
	[methodid] [int] NULL,
	[addressid] [int] NULL,
	[statusid] [int] NULL,
 CONSTRAINT [tHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

alter table [HoaDon]
add supplierid int

CREATE TABLE [dbo].[ChiTietHoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int]  NULL,
	[itemid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [tChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DanhGia](
	[reviewId] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int]  NULL,
	[id] [int] NULL,
	[rate] [float] NULL, 
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [tDanhGia] PRIMARY KEY CLUSTERED 
(
	[reviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

alter table [DanhGia]
add [productid] int not null

CREATE TABLE [dbo].[GioHang](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int]  NULL,
	[supplierid] [int] NULL,
 CONSTRAINT [tGioHang] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[ChiTietGioHang](
	[cartItemId] [int] IDENTITY(1,1) NOT NULL,
	[cartId] [int]  NULL,
	[itemid] [int] NULL,
	[qty] [int] NULL,
 CONSTRAINT [tChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[cartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO 


ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([cartId])
REFERENCES [dbo].[GioHang] ([cartId])
GO 

ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([productid])
REFERENCES [dbo].SanPham ([productid])
GO 

ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO

ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_tNhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO 

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_tNhaCungCap] FOREIGN KEY([supplierid])
REFERENCES [dbo].[NhaCungCap] ([supplierid])
GO 


ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenTruyCap] FOREIGN KEY([roleid])
REFERENCES [dbo].[QuyenTruyCap] ([roleid])
GO 


ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO 

ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([productid])
REFERENCES [dbo].SanPham ([productid])
GO 

ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_ChiTietHoaDon] FOREIGN KEY([id])
REFERENCES [dbo].[ChiTietHoaDon] ([id])
GO 


ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSp] FOREIGN KEY([itemid])
REFERENCES [dbo].[ChiTietSp] ([itemid])
GO 

ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([orderid])
REFERENCES [dbo].[HoaDon] ([id])
GO 


ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TinhTrangDanHang] FOREIGN KEY([statusid])
REFERENCES [dbo].[TinhTrangDanHang] ([statusid])
GO 

ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DiaChi] FOREIGN KEY([addressid])
REFERENCES [dbo].[DiaChi] ([addressid])
GO 

ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhuongThucGiaoHang] FOREIGN KEY([methodid])
REFERENCES [dbo].[PhuongThucGiaoHang] ([methodid])
GO 

ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO 


ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenTruyCap] FOREIGN KEY([roleid])
REFERENCES [dbo].[QuyenTruyCap] ([roleid])
GO 


ALTER TABLE [dbo].[NguoiDungDiaChi]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungDiaChi_NguoiDung] FOREIGN KEY([userid])
REFERENCES [dbo].[NguoiDung] ([userid])
GO 

ALTER TABLE [dbo].[NguoiDungDiaChi]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungDiaChi_DiaChi] FOREIGN KEY([addressid])
REFERENCES [dbo].[DiaChi] ([addressid])
GO 


ALTER TABLE [dbo].[SanPhamPhanLoai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamPhanLoai_ChiTietSp] FOREIGN KEY([itemid])
REFERENCES [dbo].[ChiTietSp] ([itemid])
GO 

ALTER TABLE [dbo].[SanPhamPhanLoai]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamPhanLoai_DacTinhPhanLoai] FOREIGN KEY([optionid])
REFERENCES [dbo].[DacTinhPhanLoai] ([optionid])
GO 


ALTER TABLE [dbo].[PhanLoai]  WITH CHECK ADD  CONSTRAINT [FK_PhanLoai_DanhMuc] FOREIGN KEY([categoryid])
REFERENCES [dbo].[DanhMuc] ([categoryid])
GO 


ALTER TABLE [dbo].[DacTinhPhanLoai]  WITH CHECK ADD  CONSTRAINT [FK_DacTinhPhanLoai_PhanLoai] FOREIGN KEY([variationid])
REFERENCES [dbo].[PhanLoai] ([variationid])
GO 


ALTER TABLE [dbo].[ChiTietSp]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSp_SanPham] FOREIGN KEY([productid])
REFERENCES [dbo].[SanPham] ([productid])
GO 

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([categoryid])
REFERENCES [dbo].[DanhMuc] ([categoryid])
GO

ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_DanhMuc_DanhMuc] FOREIGN KEY([parentcategoryid])
REFERENCES [dbo].[DanhMuc] ([categoryid])
GO