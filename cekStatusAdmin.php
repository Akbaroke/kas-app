<?php

include 'connect.php';

$time_now = time();
$res = mysqli_query($conn, "SELECT * FROM akun");
$admin_online = 0;
while($row = mysqli_fetch_assoc($res)){
  $time = $row['time'];
  $role = $row['role'];
  if($time > $time_now){
    if($role === 'admin' OR $role === 'superadmin'){
      $admin_online++;
    }
  }
}

echo $admin_online;

