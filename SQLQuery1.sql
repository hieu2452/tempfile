use ThuongMaiDT5


select * from GioHang

select * from NguoiDung

select * from ChiTietGioHang

select * from SanPham where supplierid = 1

select ct.productid,n.supplierN,g.cartId,g.userid,g.supplierid, s.product_ame,s.price from SanPham s join ChiTietGioHang ct on ct.productid = s.productid 
	join GioHang g on g.cartId = ct.cartId join NhaCungCap n on n.supplierid = g.supplierid where g.userid = 2

select * from PhuongThucGiaoHang
select * from TinhTrangDanHang
select * from DiaChi
select * from NhaCungCap
select * from NguoiDung
select * from HoaDon
select * from ChiTietHoaDon

insert into TinhTrangDanHang(status) values ('approved')
insert into TinhTrangDanHang(status) values ('pendding')
insert into TinhTrangDanHang(status) values ('rejected')

insert into PhuongThucGiaoHang(name,price) values('Vn Express',20000)
insert into PhuongThucGiaoHang(name,price) values('Giao hàng tiết kiệm',20000)

insert into HoaDon(userid,supplierid) values(2,1)

select * from DanhMuc

select DISTINCT  d.categoryname  from NhaCungCap n join SanPham s on n.supplierid = s.supplierid join DanhMuc d on d.categoryid = s.categoryid



delete from SanPham where productid = 25


select * from NhaCungCap 

select * from DanhMuc

delete from DanhMuc where categoryid >=5 and categoryid <= 8

update HoaDon set statusid = 2 where supplierid = 1


select * from DanhGia

insert into DanhGia(userid,id,comment,productid) values (2,24,'hieu test comment',14)

select * from NguoiDung

select * from QuyenTruyCap

select * from NguoiDung

update NguoiDung set roleid = 1 where userid =1

select userN, g.comment,g.productid from NguoiDung n join DanhGia g on g.userid = n.userid 

select * from DanhGia

select * from SanPham

update SanPham set productimage = 'linkhinh_638165634040360338.jpg' where productid =2

insert into DanhMuc(categoryname) values(N'Giải trí')
select * from NguoiDung

update NguoiDung set isActive = 1
select * from NhaCungCap
update NhaCungCap set approved =0 where supplierid = 3

select * from NguoiDung
insert into NguoiDung(email,userN,passW,roleid) values('x@gmail.com','test','1',2)