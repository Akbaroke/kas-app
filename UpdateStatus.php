<?php
session_start();
include "connect.php";

$id = $_SESSION['id'];
$time = time() + 3;
mysqli_query($conn, "UPDATE akun SET time='$time' WHERE id='$id'");

?>