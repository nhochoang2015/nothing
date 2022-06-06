insert into VAI_TRO(TEN_VAI_TRO) values ('USER');
insert into VAI_TRO(TEN_VAI_TRO) values ('ADMIN');
insert into TAI_KHOAN(TEN_TAI_KHOAN, TIEN_XU, EMAIL, NICK_NAME, MAT_KHAU, SDT, DIEM_TICH_LUY, DIEM_TICH_LUY_TUAN, DIEM_TICH_LUY_THANG, MA_VAI_TRO, HOAT_DONG) 
values('user1',0,'17130238@st.hcmuaf.edu.vn','thuan','E10ADC3949BA59ABBE56E057F20F883E', '123456789', 0, 0, 0, 1, 1);
insert into MON_HOC(TEN_MON_HOC) values (N'TOÁN')
insert into MON_HOC(TEN_MON_HOC) values (N'TIẾNG VIỆT') Test
-- CHƯƠNG
insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values (N'CHƯƠNG 1: SỐ HỌC', 1)
--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 2: ĐẠI LƯỢNG ĐO LƯỜNG VÀ ỨNG DỤNG', 1)
--insert into CHUONG(TEN_CHUONG, MA_MON_HOC) values ('CHƯƠNG 3: HÌNH HỌC CƠ BẢN', 1)
-- BÀI HỌC
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM) values (N'Bài 1: Số đếm từ 1 đến 10', 1, 100)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, DIEM) values (N'Bài 2: Ký hiệu toán học', 1, 150)
insert into BAI_HOC(TEN_BAI_HOC, MA_CHUONG, MA_BAI_HOC_TIEN_QUYET, DIEM) values (N'Bài 3: Số đếm từ 1 đến 10', 1, 1, 200)
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