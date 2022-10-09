<?php
include "connect.php";
include "session_cek.php";
require "function.php";


$time_now = time();
$res = mysqli_query($conn, "SELECT * FROM akun");
while($row = mysqli_fetch_assoc($res)){
  $time = $row['time'];
  if($time > $time_now){
    ?>
      <div class="foto">
        <img src="<?=$row['foto'];?>">
        <span></span>
      </div>
    <?php
  }
}