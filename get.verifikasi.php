<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id_pembayaran = $_GET["id"];

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$_SESSION["verifikasi"] = $id_pembayaran;

header("Location: admin.verifikasi.info.php");
?>