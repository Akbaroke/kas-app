<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));

$tb_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM tagihan  ORDER BY id DESC LIMIT 1;"));


$tb_akun = mysqli_query($conn, "SELECT * FROM akun"); 
$tb_akun1 = mysqli_query($conn, "SELECT * FROM akun"); 
$countLunas = 40 - $tb_tagihan['jumlah_tagihan'];

?>


  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-statusPembayaran">
      <h3>User Status</h3>
      <div class="box">
        <img src="img/icon/icon-3.png" width="35">
        <div>
          <h4><?=$tb_tagihan['jumlah_tagihan']?></h4>
          <p>Belum melunasi, Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
        </div>
      </div>
    <?php if ($countLunas == 0){
      exit;
    }else{
      ?>
      <div class="statusPem-lunas">
        <h4>Lunas <?=$countLunas?> Orang</h4>
      <?php
      while($data = mysqli_fetch_array($tb_akun)) {
        if($data['banyak_tunggakan'] == 0){
        ?>
          <div class="card-list">
            <div>
              <a href="<?=$data['foto']?>" data-lightbox="work"><img src="<?=$data['foto']?>" width="35"></a>
              <p><?=strtolower($data['nama'])?></p>
            </div>
            <h4 class="labelPem">Lunas</h4>
          </div>
        <?php
        }
      } 
      ?>
      </div>
      <div class="lihatSemua">
        <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
        <p class="liatSemua1">Lihat semua</p>
      </div>
    <?php
    }
    ?>

    <?php if ($tb_tagihan['jumlah_tagihan'] == 0){
        ?>
          <div class="statusPem-belum">
            <h4>Belum Lunas <?=$tb_tagihan['jumlah_tagihan']?> Orang</h4>
          </div>
        <?php
    }else{
      ?>
      <div class="statusPem-belum">
        <h4>Belum Lunas <?=$tb_tagihan['jumlah_tagihan']?> Orang</h4>
      <?php
      while($data1 = mysqli_fetch_array($tb_akun1)) {
        if($data1['banyak_tunggakan'] > 0){
        ?>
          <div class="card-list">
            <div>
              <a href="<?=$data1['foto']?>" data-lightbox="work"><img src="<?=$data1['foto']?>" width="35"></a>
              <p><?=strtolower($data1['nama'])?></p>
            </div>
            <div class="labelPem">
              <p>-Rp <?= number_format($data1['total_tagihan'], 0, ',', '.'); ?></p>
              <h4>Belum Lunas</h4>
            </div>
          </div>
        <?php
        }
      }
      ?>
      </div>
      <div class="lihatSemua">
        <i id="iconLihat2" class="fa-solid fa-angle-left"></i>
        <p class="liatSemua2">Lihat semua</p>
      </div>
    <?php
    }
    ?>
    </div>
  </div>



<?php
include "footer.php";
?>