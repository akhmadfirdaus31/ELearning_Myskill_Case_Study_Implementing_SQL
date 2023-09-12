CREATE DATABASE umkm;

-- 1. Check tabel umkm_jabar
SELECT * FROM umkm_jabar;

-- 2. Tunjukkan data umkm di Kota Bandung!
SELECT * FROM umkm_jabar
WHERE nama_kabupaten_kota = "KOTA BANDUNG";

-- 3. Tunjukkan data umkm dari tahun 2019 dan disusun berdasarkan kategori usaha & tahun!
SELECT * FROM umkm_jabar
WHERE tahun >= 2019
ORDER BY kategori_usaha, tahun;

-- 4. Soal No.3 namun dibatasi rownya s.d. 10
SELECT * FROM umkm_jabar
WHERE tahun >= 2019
ORDER BY kategori_usaha, tahun
LIMIT 10;

-- 5. Kategori_usaha apa saja yang tersedia di dalam dataset & bernilai unique!
SELECT DISTINCT kategori_usaha FROM umkm_jabar;

-- 6. Tunjukkan seluruh data hanya kategori_usaha FASHION dan MAKANAN
SELECT * FROM umkm_jabar
WHERE kategori_usaha IN ("FASHION", "MAKANAN");

SELECT * FROM umkm_jabar
WHERE kategori_usaha = "FASHION" OR kategori_usaha = "MAKANAN";

-- 7. Tunjukkan seluruh data dengan kategori usaha FASHION di Kabupaten Karawang!
SELECT * FROM umkm_jabar
WHERE kategori_usaha = "FASHION" 
AND nama_kabupaten_kota = "KABUPATEN KARAWANG";

-- 8. Tunjukkan seluruh data selain kategori usaha kuliner, makanan dan minuman!
SELECT * FROM umkm_jabar
WHERE kategori_usaha NOT IN ("KULINER", "MAKANAN", "MINUMAN");

-- 9. Dari tahun 2018 s.d. 2020, Bagaimana tren jumlah umkm di Kabupaten Tasikmalaya untuk kategori usaha Batik?
SELECT nama_kabupaten_kota, kategori_usaha, jumlah_umkm, satuan, tahun FROM umkm_jabar
WHERE tahun >= 2018 AND tahun <= 2020
AND nama_kabupaten_kota = "KABUPATEN TASIKMALAYA"
AND kategori_usaha = "BATIK";


SELECT nama_kabupaten_kota, kategori_usaha, jumlah_umkm, satuan, tahun FROM umkm_jabar
WHERE tahun BETWEEN 2018 AND 2020
AND nama_kabupaten_kota = "KABUPATEN TASIKMALAYA"
AND kategori_usaha = "BATIK";

-- 10. Di antara Kota Bandung, Kabupaten Bandung dan Kabupaten Bandung Barat,
-- dimanakah umkm kuliner terpusat pada tahun 2021?
SELECT * FROM umkm_jabar 
WHERE nama_kabupaten_kota LIKE "%BANDUNG%"
AND kategori_usaha = "KULINER"
AND tahun = 2021;

-- 11. Kabupatan/Kota mana saja yang memiliki angka 7 pada digit ke 3 kode tersebut?
SELECT DISTINCT kode_kabupaten_kota, nama_kabupaten_kota FROM umkm_jabar
WHERE kode_kabupaten_kota LIKE "__7%";