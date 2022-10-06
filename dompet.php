<?php
include "connect.php";
include "head.php";
include "session_cek.php";

// ambil data saldo awal
$tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));
$saldo = $tb_total['saldo'];

?>

  <div class="container3">
    <div class="top-button">
      <a id="back" href="admin.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-20.png" width="75">
        <h2>Dompet Kas</h2>
      </div>
      <div class="con-dompet">
        <div class="card-saldo">
          <h3>Rp <?= number_format($saldo, 0, ',', '.'); ?></h3>
          <p>Total Saldo</p>
        </div>
        <div class="con-linkDompet">
          <?php
            if(isset($_SESSION["admin"])){
              if($saldo > 0){
                ?><a href="dompet.tariksaldo.php">Tarik Saldo <i class="fa-solid fa-angle-left"></i></a><?php
              }
            }
          ?>
          <?php
            if(isset($_SESSION["admin"])){
              ?><a href="dompet.depositsaldo.php">Deposit Saldo <i class="fa-solid fa-angle-left"></i></a><?php
            }
          ?>
          <a href="dompet.riwayatsaldo.php">Riwayat Saldo<i class="fa-solid fa-angle-left"></i></a>
        </div>
      </div>
    </div>
  </div>



<?php
include "footer.php";
?>