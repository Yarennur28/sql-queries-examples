--2.SORU--
--birimler tablosuna veri ekleme
INSERT INTO birimler (birim_id, birim_ad) VALUES
 (1, 'Yazılım');
 (2, 'Donanım');
 (3, 'Güvenlik');

--calisanlar tablosuna veri ekleme
INSERT INTO calisanlar (calisan_id, ad, soyad, maas, katilmaTarihi, calisan_birim_id) VALUES 
(1, 'İsmail', 'İşeri', 100000, '2014-02-20', 1),
(2, 'Hami', 'Satılmış', 80000, '2014-06-11', 2),
(3, 'Durmuş', 'Şahin', 300000, '2014-02-02', 2),
(4, 'Kağan', 'Yazar', 500000, '2014-06-11', 3),
(5, 'Meryem', 'Soysaldı', 500000, '2014-06-11', 3),
(6, 'Duygu', 'Akşehir', 200000, '2014-06-11', 1),
(7, 'Kübra', 'Seyhan', 75000, '2014-06-11', 1),
(8, 'Gülcan', 'Yıldız', 90000, '2014-11-04', 3);

--unvan tablosuna veri ekleme
INSERT INTO unvan (unvan_calisan_id, unvan_calisan, unvan_tarih) VALUES 
(1, 'Yönetici', '2016-02-20'),
(2, 'Personel', '2016-06-11'),
(8, 'Personel', '2016-06-11'),
(5, 'Müdür', '2016-06-11'),
(4, 'Yönetici Yardımcısı', '2016-06-11'),
(7, 'Personel', '2016-06-11'),
(6, 'Takım Lideri', '2016-06-11'),
(3, 'Takım Lideri', '2016-06-11');

--ikramiye tablosuna veri ekleme
INSERT INTO ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih) VALUES 
(1, 5000, '2016-02-20'),
(2, 3000, '2016-06-11'),
(3, 4000, '2016-02-20'),
(4, 4500, '2016-02-20'),
(5, 3500, '2016-06-11');
