SELECT
    pengguna.nama AS nama_pengguna,
    COUNT(transaksi.id_transaksi) AS jumlah_transaksi,
    SUM(transaksi.total_pembayaran) AS total_pembayaran
FROM transaksi
JOIN pengguna
    ON transaksi.id_pengguna = pengguna.id_pengguna
WHERE transaksi.status_transaksi = 'Selesai'
GROUP BY pengguna.id_pengguna, pengguna.nama;
