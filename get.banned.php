<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_banned = $_SESSION["banned"];

if(!isset($_SESSION["banned"])){
  header("Location: login.php");
  exit;
}

mysqli_query($conn, "UPDATE akun SET status='banned' WHERE id='$id_banned'");

header("Location: admin.listuser.info.php?id=".$id_banned);