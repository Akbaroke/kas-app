<?php
include "connect.php";
include "head.php";
include "session_cek.php";


$tb_riwayat_saldokas = mysqli_query($conn, "SELECT * FROM riwayat_saldokas"); 

?>

  <div class="container3">
    <div class="top-button">
      <a href="dompet.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-20.png" width="75">
        <h2>Dompet Kas</h2>
      </div>
      <div class="con-KasMasuk">
        <div>
          <h3>Riwayat Kas :</h3>
          <?php $i=1; while($data = mysqli_fetch_array($tb_riwayat_saldokas)) {
          ?>
          <div data-id="<?=$data['id']?>" class="card-listRiwayat">
            <div>
              <p class="nomor"><?=$i?></p>
              <div>
                <h4><?=strtolower($data['jenis'])?></h4>
                <p>Rp <?= number_format($data['nominal'], 0, ',', '.'); ?></p>
              </div>
            </div>
            <p><?=$data['tanggal']?></p>
          </div>
        <?php $i++; 
        }?>
        </div>
        <?php if($i >= 4){ ?>
          <div class="lihatSemua" id="btn-lihatAdmin" >
            <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua1">Lihat semua</p>
          </div>
        <?php
        }
        ?>
      </div>
    </div>
  </div>



<?php
include "footer.php";
?>