<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_jadwal_tagihan = $_GET["id"];




?>


  <div class="container3">
    <div class="top-button">
      <a href="admin.setting.list.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-18.png" width="75">
        <h2>Jadwal Tagihan Info</h2>
      </div>
      <div class="con-isi">
        <div class="box">
          <img src="img/icon/icon-4.png" width="35">
          <div>
            <h4>Rp 100.000</h4>
            <p>Pendapatan tanggal 01/01/0001</p>
          </div>
        </div>

        <div class="con-listLunas">
          <h4>Lunas 1 Orang</h4>
          <div class="card-list">
            <div>
              <a href="img/profil/foto_default.jpg" data-lightbox="work"><img src="img/profil/foto_default.jpg" width="35"></a>
              <p><?=strtolower("Muhammad Akbar")?></p>
            </div>
            <h4 class="labelPem">Lunas</h4>
          </div>
          <div class="lihatSemua">
            <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua1">Lihat semua</p>
          </div>
        </div>

        <div class="con-listBelum">
          <h4>Belum Lunas 1 Orang</h4>
          <div class="card-list">
            <div>
              <a href="img/profil/foto_default.jpg" data-lightbox="work"><img src="img/profil/foto_default.jpg" width="35"></a>
              <p><?=strtolower("Muhammad Akbar")?></p>
            </div>
            <div class="labelPem">
              <p>-Rp 5.000</p>
              <h4>Belum Lunas</h4>
            </div>
          </div>
          <div class="lihatSemua">
            <i id="iconLihat2" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua2">Lihat semua</p>
          </div>
        </div>

      </div>
    </div>
  </div>


<?php
include "footer.php";
?>