<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

if(!isset($_SESSION["verifikasi"])){
  header("Location: login.php");
  exit;
}

$id_admin = $_SESSION["id"];

$id_pembayaran = $_SESSION["verifikasi"];

$row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id='$id_pembayaran' AND status_pem='pending' "));
// get id user dan nominal
$id_user = $row['id_akun'];
$nominal = $row['nominal'];


// update banyak_tunggakan (tb_akun) (junggakan_awal - 1)
// update total_tagihan (tb_akun) (tagihan_awal - nominal)
// get jumlah awal 
$tb_akun = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id='$id_user'"));
$byk_tunggakan_awal = $tb_akun['banyak_tunggakan'];
$ttl_tagihan_awal = $tb_akun['total_tagihan'];

$byk_tunggakan_akhir = $byk_tunggakan_awal - 1;
$ttl_tagihan_akhir = $ttl_tagihan_awal - $nominal;

mysqli_query($conn, "UPDATE akun SET banyak_tunggakan='$byk_tunggakan_akhir', total_tagihan='$ttl_tagihan_akhir' WHERE id='$id_user' ");


// get id_tunggakan dari tb riwayat_pembayaran
// delete row dari tb list_tunggalan (id_tunggakan dan id_akun)
$id_tunggakan = $row['id_tunggakan'];
mysqli_query($conn, "DELETE FROM list_tunggakan WHERE id='$id_tunggakan'");



// update tb riwayat_pembayaran (status_pem) (berhasil)
// update tb riwayat_pembayaran (tindakan) (terima)
// update tb riwayat_pembayaran (id_petugas) (id_admin)
mysqli_query($conn, "UPDATE riwayat_pembayaran SET status_pem='berhasil', tindakan='terima', id_petugas='$id_admin' WHERE id='$id_pembayaran' ");



// update tb_total (saldo) (saldo + nominal) 
// update tb_total (s_masuk) (jmlh awal + nominal)
// get data saldo_awal dan jmlah awal s_masuk
$tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));
$saldo_awal = $tb_total['saldo'];
$s_masuk_awal = $tb_total['s_masuk'];

$saldo_akhir = $saldo_awal + $nominal;
$s_masuk_akhir = $s_masuk_awal + $nominal;

mysqli_query($conn, "UPDATE total SET saldo='$saldo_akhir', s_masuk='$s_masuk_akhir' WHERE id=1 ");


// update jumlah_tagihan dan nominal_tagihan dari tabel tagihan
// get tgl_tagihan
$tanggal_tagihan = $row['tgl_tagihan'];

$tb_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM tagihan WHERE tanggal='$tanggal_tagihan' "));
$jumlah_tagihan_akhir = $tb_tagihan['jumlah_tagihan'] -  1;
$nominal_tagihan_akhir = $tb_tagihan['nominal_tagihan'] -  $nominal;


mysqli_query($conn, "UPDATE tagihan SET jumlah_tagihan='$jumlah_tagihan_akhir', nominal_tagihan='$nominal_tagihan_akhir' WHERE tanggal='$tanggal_tagihan' ");




// insert tb riwayat_saldokas (nominal, jenis="masuk", ket="uang kas mingguan", tanggal=time_now)
$jenis = "masuk";
$ket = "uang kas mingguan";
$tanggal = date("d/m/Y");

mysqli_query($conn, "INSERT INTO riwayat_saldokas VALUES ('','$nominal','$jenis','$ket','$tanggal')");

unset($_SESSION["verifikasi"]);
header("Location: admin.verifikasi.list.php");


?>