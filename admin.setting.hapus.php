<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_jadwal_tagihan = $_GET["id"];

// mencari data (tanggal, nominal) dari tabel tagihan
$tb_jadwal_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan WHERE id = '$id_jadwal_tagihan'"));
$tanggal = $tb_jadwal_tagihan['tanggal'];
$nominal = $tb_jadwal_tagihan['nominal'];


// update tb_akun (banyak_tunggakan - 1) (total_tagihan - nominal)
$tb_akun = mysqli_query($conn, "SELECT * FROM akun");
$jumlah_user = 0;
while($data = mysqli_fetch_array($tb_akun)) {
  $id_akun = $data['id'];
  $banyak_tunggakan = $data['banyak_tunggakan']-1;
  $total_tagihan = $data['total_tagihan']-$nominal;
  mysqli_query($conn, "UPDATE akun SET banyak_tunggakan='$banyak_tunggakan', total_tagihan='$total_tagihan' WHERE id='$id_akun' ");
  $jumlah_user++;
}


// delete tb jadwal_tagihan 
mysqli_query($conn, "DELETE FROM jadwal_tagihan WHERE id=$id_jadwal_tagihan");


// // delete tb list_tunggakan
$id_akun = 1;
while($id_akun <= $jumlah_user) {
  mysqli_query($conn, "DELETE FROM list_tunggakan WHERE id_akun=$id_akun");
  $id_akun++;
}

header("Location: admin.setting.list.php");

