<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$tb_jadwal_tagihan = mysqli_query($conn, "SELECT * FROM jadwal_tagihan ORDER BY id DESC");
// unset($_SESSION["verifikasi"]);


?>
<!-- css gabung dengan admin.verifikasi.list.css -->
  <div class="container3">
    <div class="top-button">
      <a href="admin.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-18.png" width="75">
        <h2>Jadwal Tagihan</h2>
      </div>
      <a href="admin.setting.tambah.php" id="buat-tagihan">Buat Tagihan</a>
      <div class="con-list">
        <h3>List Jadwal :</h3>
        <?php $i=1; while($data = mysqli_fetch_array($tb_jadwal_tagihan)) {
          ?>
          <div data-id="<?=$data['id']?>" class="card-listJadwal">
            <div>
              <p class="nomor"><?=$i?></p>
              <div>
                <h4><?=$data['tanggal']?></h4>
                <p>Rp <?= number_format($data['nominal'], 0, ',', '.'); ?></p>
              </div>
            </div>
            <p>Belum Bayar <?=$data['belum_bayar']?> Orang</p>
          </div>
        <?php $i++;
        }?>
      </div>
    </div>
  </div>


<?php
include "footer.php";
?>