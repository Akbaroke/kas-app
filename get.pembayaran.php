<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id_tunggakan = $_GET["id"];

$_SESSION["bayar"] = $id_tunggakan;

header("Location: pembayaran.php");
?>