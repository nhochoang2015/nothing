insert into VAI_TRO(TEN_VAI_TRO) values ('USER');
insert into VAI_TRO(TEN_VAI_TRO) values ('ADMIN');
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('user1',0,'17130238@st.hcmuaf.edu.vn','thuan','E10ADC3949BA59ABBE56E057F20F883E', '123456789', 0, 0, 0, 2, 1);
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('user2',0,'test@gmail.com','Thuận 2','E10ADC3949BA59ABBE56E057F20F883E', '987654321', 0, 0, 0, 1, 1);
insert into MON_HOC(TEN_MON_HOC, HOAT_DONG) values (N'TOÁN',1)
insert into MON_HOC(TEN_MON_HOC, HOAT_DONG) values (N'TIẾNG VIỆT',1) 
-- CHƯƠNG
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 1: SỐ HỌC', 1, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 2: ĐẠI LƯỢNG ĐO LƯỜNG VÀ ỨNG DỤNG', 1, 1, 500)
insert into CHUONG(TEN_CHUONG, MA_MON_HOC, HOAT_DONG, DIEM) values (N'CHƯƠNG 3: HÌNH HỌC CƠ BẢN', 1, 1, 500)

--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 2: ĐẠI LƯỢNG ĐO LƯỜNG VÀ ỨNG DỤNG', 1)
--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 3: HÌNH HỌC CƠ BẢN', 1)
-- BÀI HỌC
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 1: Số đếm từ 1 đến 10', 1, 100, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 2: Ký hiệu toán học', 1, 150, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, MA_BAI_HOC_TIEN_QUYET, DIEM, HOAT_DONG) values (N'Bài 3: Số đếm từ 1 đến 10', 1, 1, 200, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 1: Hình chữ nhật', 2, 100, 1)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM, HOAT_DONG) values (N'Bài 1: Hình tam giác', 2, 100, 1)

--BÀI HỌC HOÀN THÀNH
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,1)
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,2)
insert into BAI_HOC_HOAN_THANH(MA_TAI_KHOAN, MA_BAI_HOC) values (1,3)
-- CÂU HỎI
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 3 con mèo', '3;1;2;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con chó', N'Hình 2 con chó', '2;1;2;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 4 con mèo', '4;1;2;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 1 con mèo', '1;1;2;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 5 con mèo', '3;1;2;5;4',1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 8 con mèo', '2;1;8;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 9 con mèo', '1;9;2;3;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 15 con mèo', '3;1;2;15;4', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 24 con mèo', '4;1;2;3;24', 1)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con mèo', N'Hình 0 con mèo', '1;0;2;3;4', 1)

insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 3 con bọ cạp', '3;1;2;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 2 con bọ cạp', '2;1;2;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 4 con bọ cạp', '4;1;2;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 1 con bọ cạp', '1;1;2;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 5 con bọ cạp', '3;1;2;5;4',2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 8 con bọ cạp', '2;1;8;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 9 con bọ cạp', '1;9;2;3;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 15 con bọ cạp', '3;1;2;15;4', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 24 con bọ cạp', '4;1;2;3;24', 2)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con bọ cạp', N'Hình 0 con bọ cạp', '1;0;2;3;4', 2)

insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 3 con cá voi', '3;1;2;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 2 con cá voi', '2;1;2;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 4 con cá voi', '4;1;2;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 1 con cá voi', '1;1;2;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 5 con cá voi', '3;1;2;5;4',3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 8 con cá voi', '2;1;8;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 9 con cá voi', '1;9;2;3;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 15 con cá voi', '3;1;2;15;4', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 24 con cá voi', '4;1;2;3;24', 3)
insert into CAU_HOI(NOI_DUNG, GIAI_THICH, DAP_AN, MA_BAI_HOC) values(N'Hình này có bao nhiêu con cá voi', N'Hình 0 con cá voi', '1;0;2;3;4', 3)