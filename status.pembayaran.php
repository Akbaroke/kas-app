<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));

$tb_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan  ORDER BY id DESC LIMIT 1;"));


// cek lunas dan blm lunas
$tb_akun = mysqli_query($conn, "SELECT * FROM akun");
$blm_bayar = 0;
$lunas = 0;
$bnyak_user = 0;
while($data = mysqli_fetch_array($tb_akun)) {
  // cek banyak user yang belum bayar
  if($data['banyak_tunggakan'] > 0){
    $blm_bayar++;
  }else{
    $lunas++;
  }
  $bnyak_user++;
}

echo $lunas;
echo $blm_bayar;

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
          <h4><?=$bnyak_user?></h4>
          <p>Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
        </div>
      </div>
    <?php if ($lunas == 0){
      ?>
        <!-- <div class="statusPem-belum">
          <h4>Lunas <?=$lunas?> Orang</h4>
        </div> -->
      <?php
    }else{
      ?>
      <div class="statusPem-lunas">
        <h4>Lunas <?=$lunas?> Orang</h4>
      <?php
      $tb_akun = mysqli_query($conn, "SELECT * FROM akun");
      while($data = mysqli_fetch_array($tb_akun)) {
        // cek banyak user yang belum bayar
        if($data['banyak_tunggakan'] > 0){
        }else{
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
      <?php if($lunas > 5){
        ?>
          <div class="lihatSemua">
            <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua1">Lihat semua</p>
          </div>
        <?php
      } ?>
    <?php
    }
    ?>

    <?php if ($blm_bayar == 0){
        ?>
          <!-- <div class="statusPem-belum">
            <h4>Belum Lunas <?=$blm_bayar?> Orang</h4>
          </div> -->
        <?php
    }else{
      ?>
      <div class="statusPem-belum">
        <h4>Belum Lunas <?=$blm_bayar?> Orang</h4>
      <?php
      $tb_akun = mysqli_query($conn, "SELECT * FROM akun");
      while($data = mysqli_fetch_array($tb_akun)) {
        // cek banyak user yang belum bayar
        if($data['banyak_tunggakan'] > 0){
          ?>
          <div class="card-list">
            <div>
              <a href="<?=$data['foto']?>" data-lightbox="work"><img src="<?=$data['foto']?>" width="35"></a>
              <p><?=strtolower($data['nama'])?></p>
            </div>
            <div class="labelPem">
              <p>-Rp <?= number_format($data['total_tagihan'], 0, ',', '.'); ?></p>
              <h4>Belum Lunas</h4>
            </div>
          </div>
          <?php
        }else{
        }
      }
      ?>
      </div>
      <?php if($blm_bayar > 5){
        ?>
          <div class="lihatSemua">
            <i id="iconLihat2" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua2">Lihat semua</p>
          </div>
        <?php
      } ?>
    <?php
    }
    ?>
    </div>
  </div>



<?php
include "footer.php";
?>