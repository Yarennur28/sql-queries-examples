--3.SORU--
--Yazılım veya Donanım biriminde çalışanlar
SELECT ad, soyad, maas, birim_ad From calisanlar JOIN birimler ON calisan_birim_id = birim_id
WHERE birim_ad IN ('Yazılım', 'Donanım');

--4.SORU--
--Maaşı en yüksek çalışan
SELECT ad, soyad, maas FROM calisanlar 
WHERE maas = (SELECT MAX(maas) FROM calisanlar);

--5.SORU--
--Birimlerin her birinde çalışan sayısı
SELECT b.birim_ad, COUNT(c.calisan_id) AS calisan_sayisi 
FROM birimler b LEFT JOIN calisanlar c ON b.birim_id = c.calisan_birim_id
GROUP BY b.birim_ad; 

--6.SORU--
--Birden fazla çalışana ait unvanlar ve o unvanlarda bulunan çalışan sayısı
SELECT unvan_calisan, COUNT(unvan_calisan_id) AS calisan_sayisi
FROM unvan GROUP BY unvan_calisan HAVING COUNT(unvan_calisan_id) > 1;

--7.SORU--
--Maaşı 5000 ile 100000 arasında değişen çalışanalrın ad, soyad ve maaş bilgileri
SELECT ad, soyad, maas FROM calisanlar 
WHERE maas BETWEEN 50000 AND 100000;

--8.SORU--
--İkramiye hakkına sahip çalışanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgileri
SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
JOIN ikramiye i ON c.calisan_id = i.ikramiye_calisan_id;

--9.SORU--
--Ünvanı Yönetici ve Müdür olan çalışanların ad, soyad ve ünvanlarının listelenmesi
SELECT c.ad, c.soyad, u.unvan_calisan
FROM calisanlar c
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');

--10.SORU--
--Her bir birimde en yüksek maaş alan çalışanların ad, soyad ve maaş bilgilerinin listelenmesi
SELECT c.ad, c.soyad, c.maas, b.birim_ad
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE c.maas = (SELECT MAX(maas) FROM calisanlar WHERE calisan_birim_id = c.calisan_birim_id);




