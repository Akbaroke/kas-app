<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];

$tb_riwayatPem = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id_akun='$id' AND status_pem='pending' "));

$_SESSION["bayar"] = $tb_riwayatPem;
header("Location: pembayaran.pending.php");
