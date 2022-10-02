<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));
$status = $profil['status_akun'];

if($status === 'admin'){
  header("Location: status.pembayaran.admin.php");
  exit;
}else{
  header("Location: status.pembayaran.php");
  exit;
}