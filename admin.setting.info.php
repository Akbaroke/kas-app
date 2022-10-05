<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_jadwal_tagihan = $_GET["id"];
$tb_jadwal_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan WHERE id = '$id_jadwal_tagihan'"));
$tanggal = $tb_jadwal_tagihan["tanggal"];

// menghitung jumlah pendapatan pertanggal
$total = 0;
$blm_lunas = 0;
$tb_list_tunggakan = mysqli_query($conn, "SELECT * FROM list_tunggakan");
while($data = mysqli_fetch_array($tb_list_tunggakan)) {
  // cek banyak user yang belum bayar
  if($data['tanggal_tagihan'] == $tanggal){
    $blm_lunas++;
  }else{
    $total = $total + $data['nominal'];
  }
}


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
            <h4>Rp <?= number_format($total, 0, ',', '.'); ?></h4>
            <p>Pendapatan tanggal <?=$tanggal?></p>
          </div>
        </div>

        <div class="con-listBelum">
          <h4>Belum Lunas <?=$blm_lunas?> Orang</h4>
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

        <div class="btn-hapus">
          Hapus
        </div>

      </div>
    </div>
  </div>


<?php
include "footer.php";
?>