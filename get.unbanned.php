<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_unbanned = $_SESSION["banned"];

if(!isset($_SESSION["banned"])){
  header("Location: login.php");
  exit;
}

mysqli_query($conn, "UPDATE akun SET status='aktif' WHERE id='$id_unbanned'");

header("Location: admin.listuser.info.php?id=".$id_unbanned);