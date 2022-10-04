<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

?>


  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin">
      <div>
        <img src="img/icon/icon-12.png" width="75">
        <h2>Admin Menu</h2>
      </div>
      <div class="menu">
        <div class="cardIcon">
          <a href="admin.verifikasi.list.php"><img src="img/icon/icon-13.png" width="71"></a>
          <p>Verifikasi Kas</p>
        </div>
        <div class="cardIcon">
          <a href="admin.setting.list.php"><img src="img/icon/icon-14.png" width="71"></a>
          <p>Setting Jadwal</p>
        </div>
        <div class="cardIcon">
          <a href=""><img src="img/icon/icon-15.png" width="71"></a>
          <p>List User</p>
        </div>
        <div class="cardIcon">
          <a href=""><img src="img/icon/icon-16.png" width="71"></a>
          <p>Dompet Kas</p>
        </div>
      </div>
    </div>
  </div>


<?php
include "footer.php";
?>