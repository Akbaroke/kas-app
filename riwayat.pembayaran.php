<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];
$tb_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan  ORDER BY id DESC LIMIT 1;"));


// menghitung jumlah yang blm lunas
$tb_riwayat_pembayaran = mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id_akun='$id'");
$berhasil = 0;
while($data = mysqli_fetch_array($tb_riwayat_pembayaran)) {
  // cek banyak user yang belum bayar
  if($data['status_pem'] == 'berhasil'){
    $berhasil++;
  }
}

?>

  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-riwayatPembayaran">
      <h3>Riwayat Pembayaran</h3>
      <div class="box">
        <img src="img/icon/icon-21.png" width="35">
        <div>
          <h4><?=$berhasil?></h4>
          <p>Pembayaran Berhasil, Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
        </div>
      </div>
      <div class="con-cardData">
        <?php
          $row = mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id_akun='$id'");
          while($data = mysqli_fetch_array($row)) {
            if($data['status_pem'] == 'berhasil'){
              ?>
                <div class="card-data">
                  <div>
                    <a><img src="img/icon/icon-5.png" width="35"></a>
                    <p>Bayar Kas Berhasil</p>
                  </div>
                  <h4 class="labelPem">27/09/2022</h4>
                </div>
              <?php
            }elseif($data['status_pem'] == 'pending'){
              ?>
                <div class="card-data">
                  <div>
                    <a><img src="img/icon/icon-11.png" width="35"></a>
                    <p>Bayar Kas Berhasil</p>
                  </div>
                  <h4 class="labelPem">27/09/2022</h4>
                </div>
              <?php
            }else{
              ?>
                <div class="card-data">
                  <div>
                    <a><img src="img/icon/icon-10.png" width="35"></a>
                    <p>Bayar Kas Berhasil</p>
                  </div>
                  <h4 class="labelPem">27/09/2022</h4>
                </div>
              <?php
            }
          }
        ?>
      </div>
    </div>
  </div>



<?php
include "footer.php";
?>