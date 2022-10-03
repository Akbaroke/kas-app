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

$id_pembayaran = $_SESSION["verifikasi"];

$row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id='$id_pembayaran' AND status_pem='pending' "));

// update banyak_tunggakan (tb_akun) (jumlah awal - 1)
// update total_tagihan (tb_akun) (jumlah awal - nominal)


// get id_tunggakan dari tb riwayat_pembayaran
// delete row dari tb list_tunggalan (id_tunggakan dan id_akun)

// update tb riwayat_pembayaran (status_pem) (berhasil)
// update tb riwayat_pembayaran (tindakan) (terima)
// update tb riwayat_pembayaran (id_petugas) (id_admin)

// update tb_total (saldo) (saldo + nominal) 
// update tb_total (s_masuk) (jmlh awal + nominal) 

// insert tb riwayat_saldokas (nominal, jenis="masuk", ket="uang kas mingguan", tanggal=time_now)
?>