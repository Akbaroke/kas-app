<?php
include "connect.php";
include "session_cek.php";
require "function.php";


$time_now = time();
$res = mysqli_query($conn, "SELECT * FROM akun");
$online = 0;
while($row = mysqli_fetch_assoc($res)){
  $time = $row['time'];
  if($time > $time_now){
    $online++;
  }
}

echo $online;