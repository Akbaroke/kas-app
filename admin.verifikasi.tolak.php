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
$fotoBukti = $row['bukti'];


// update tb riwayat_pembayaran (status_pem) (gagal)
// update tb riwayat_pembayaran (tindakan) (tolak)
// update tb riwayat_pembayaran (id_petugas) (id_admin)
// update tb riwayat_pembayaran (bukti) (dihapus)
mysqli_query($conn, "UPDATE riwayat_pembayaran SET bukti='dihapus', status_pem='gagal', tindakan='tolak', id_petugas='$id_admin' WHERE id='$id_pembayaran' ");


// hapus foto bukti pembayaran 
unlink('img/buktiPembayaran/' . $fotoBukti);



unset($_SESSION["verifikasi"]);
header("Location: admin.verifikasi.list.php");


?>