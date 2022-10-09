<?php

include 'connect.php';
include "session_cek.php";
require "function.php";
$id = $_SESSION["id"];

$res = mysqli_query($conn, "SELECT * FROM chatt");
while($row = mysqli_fetch_assoc($res)){
  if($id != $row['id_akun']){
    $id_akun = $row['id_akun'];
    $profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
    ?>
      <div class="con-pesan1">
        <div class="pesan-kiri" id="<?=$row['id']?>">
          <p class="nama"><?=strtolower($profil['nama'])?></p>
          <p class="isi"><?=$row['pesan']?></p>
          <p class="waktu"><?=$row['waktu']?></p>
        </div>
      </div>
    <?php
  }else{
    ?>
      <div class="con-pesan2">
        <div class="pesan-kanan" id="<?=$row['id']?>">
          <p class="isi"><?=$row['pesan']?></p>
          <p class="waktu"><?=$row['waktu']?></p>
        </div>
      </div>
    <?php
  }
}

?>