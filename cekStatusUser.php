<?php

include 'connect.php';

$time_now = time();
$res = mysqli_query($conn, "SELECT * FROM akun");
$user_online = 0;
while($row = mysqli_fetch_assoc($res)){
  $time = $row['time'];
  $role = $row['role'];
  if($time > $time_now){
    if($role === 'user'){
      $user_online++;
    }
  }
}

echo $user_online;

