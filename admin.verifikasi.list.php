<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$tb_riwayatPembayaran = mysqli_query($conn, "SELECT * FROM riwayat_pembayaran"); 
unset($_SESSION["verifikasi"]);

?>

  <div class="container3">
    <div class="top-button">
      <a href="admin.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-17.png" width="75">
        <h2>Verifikasi Kas</h2>
      </div>
      <div class="con-list">
        <h3>List Pembayaran Pending :</h3>
        <?php $i=1; while($data = mysqli_fetch_array($tb_riwayatPembayaran)) {
          if($data['status_pem'] == 'pending'){ 
            $id_akun = $data['id_akun'];
            $profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
            ?>
            <div data-id="<?=$data['id']?>" class="card-listVerif">
              <div>
                <p class="nomor"><?=$i?></p>
                <div>
                  <h4><?=strtolower($profil['nama'])?></h4>
                  <p>Rp <?= number_format($data['nominal'], 0, ',', '.'); ?></p>
                </div>
              </div>
              <div class='info-list'>
                <?php
                if($data['metode_pem'] == 'dana'){
                  ?><div style='background-color: #0F87DD;' class="label-metodePem">dana</div><?php
                }else{
                  ?><div style='background-color: #64AB2B;' class="label-metodePem">cash</div><?php
                }
                ?>
                <p><?=$data['time']?></p>
              </div>
            </div>
        <?php $i++; }
        }?>
      </div>
    </div>
  </div>


<?php
include "footer.php";
?>