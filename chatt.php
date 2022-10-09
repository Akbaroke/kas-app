<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";
$id = $_SESSION["id"];

$tb_chatt = mysqli_query($conn, "SELECT * FROM chatt");

// menghapus chatt hari sebelumnya
$tanggal = date("d/m/Y");
$res = mysqli_query($conn, "SELECT * FROM chatt");
while($row = mysqli_fetch_assoc($res)){
  if($row['tanggal'] != $tanggal){
    $id_chatt = $row['id'];
    mysqli_query($conn, "DELETE FROM chatt WHERE id='$id_chatt'");
  }
}


?>

  <div class="container4">
    <div class="top-bar">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
      <div class="online">
        <p>Online <b id="count-online">0</b></p>
        <div class="profil-online"></div>
      </div>
    </div>
    <div class="layar-pesan" id="textPesan"></div>
    <div class="fix">
      <div class="kotak-pesan">
        <input type="text" id="textbox" onkeydown="cekInput()" placeholder="Ketik pesan">
        <a id="btn-kirim"><i class="fa-solid fa-paper-plane"></i></a>
      </div>
    </div>
  </div>


<?php
include "footer.php";
?>