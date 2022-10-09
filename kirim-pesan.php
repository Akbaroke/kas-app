<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

$pesan = $_POST['pesan'];
$id = $_SESSION["id"];

$tanggal = date("d/m/Y");
$waktu = date("H:i");

if($pesan == "" OR $pesan == " "){
  return false;
}

$pesan = htmlspecialchars($pesan);
mysqli_query($conn, "INSERT INTO chatt VALUES ('','$id','$pesan','$tanggal','$waktu')");

