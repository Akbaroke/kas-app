<?php

include 'connect.php';

$time_now = time();
$res = mysqli_query($conn, "SELECT * FROM akun");
$admin_online = 0;
while($row = mysqli_fetch_assoc($res)){
  $time = $row['time'];
  $status_akun = $row['status_akun'];
  if($time > $time_now){
    if($status_akun === 'admin'){
      $admin_online++;
    }
  }
}

echo $admin_online;

