<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$nim = $_SESSION["nim"];
$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));
$time_now = time();

$tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));

$tb_riwayatPem = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id_akun='$id' AND status_pem='pending' "));

$tb_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan  ORDER BY id DESC LIMIT 1;"));

// menghitung jumlah yang blm lunas
$tb_akun = mysqli_query($conn, "SELECT * FROM akun");
$blm_bayar = 0;
while($data = mysqli_fetch_array($tb_akun)) {
  // cek banyak user yang belum bayar
  if($data['banyak_tunggakan'] > 0){
    $blm_bayar++;
  }
}

unset($_SESSION["bayar"]);
unset($_SESSION["admin"]);


?>


  <div class="container2">
    <div class="cardHome-1">
      <div>
        <h2><?= strtolower($profil["nama"]) ?></h2>
        <p><?= $nim ?></p>
      </div>
      <a href="profil.php">
        <?php
        if($profil["foto"] === 'foto_default.jpg'){
          echo ""?> <img src="img/profil/foto_default.jpg"> <?php "";
        }else{
          echo ""?> <img src="<?=$profil["foto"]?>" > <?php "";
        }
        ?>
      </a>
    </div>
    <div class="cardHome-2">
      <h3>User Online</h3>
      <div class="box">
        <div>
          <img src="img/icon/icon-2.png" alt="icon" width="35">
          <div>
            <h4 id='admin-aktif'>0</h4>
            <p>Admin</p>
          </div>
        </div>
        <div>
          <img src="img/icon/icon-3.png" alt="icon" width="35">
          <div>
            <h4 id='user-aktif'>0</h4>
            <p>User</p>
          </div>
        </div>
      </div>
    </div>
    <div class="cardHome-3">
      <img src="img/icon/icon-4.png" alt="icon" width="35">
      <h2>Rp <?= number_format($tb_total['saldo'], 0, ',', '.'); ?></h2>
      <p>Saldo Total KAS Kelas TI.21.A3</p>
    </div>
    <div class="cardHome-4">
      <h3>User Status</h3>
      <div class="box">
        <div>
          <img src="img/icon/icon-3.png" alt="icon" width="35">
          <div>
            <h4><?=$blm_bayar?></h4>
            <p>Belum melunasi, Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
          </div>
        </div>
        <i class="fa-solid fa-chevron-right"></i>
      </div>
    </div>
    <?php
    if($profil['total_tagihan'] == 0){
    ?>
      <div class="cardHome-555">
        <a class="riwayat" href=""><img src="img/icon/icon-6.png" alt="icon" width="16"></a>
        <div class="box">
          <img src="img/icon/icon-5.png" alt="icon" width="35">
          <h3>Rp <?= number_format($profil['total_tagihan'], 0, ',', '.'); ?></h3>
          <h4>Terimakasih</h4>
          <div>
            <p>Anda Sudah Melunasi Uang Kas</p>
            <p>Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
          </div>
        </div>
      </div>
    <?php
    }else{
      if($tb_riwayatPem == true){
        ?>
          <div class="cardHome-55">
            <a class="riwayat" href=""><img src="img/icon/icon-6.png" alt="icon" width="16"></a>
            <div class="box">
              <img src="img/icon/icon-11.png" alt="icon" width="35">
              <h3>Rp <?= number_format($profil['total_tagihan'], 0, ',', '.'); ?></h3>
              <div>
                <p>Menunggu Verifikasi Dari Admin</p>
                <p>Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
              </div>
              <a class="button" href="cek.info.pending.php">Info</a>
            </div>
          </div>
        <?php
      }else{
        ?>
          <div class="cardHome-5">
            <a class="riwayat" href=""><img src="img/icon/icon-6.png" alt="icon" width="16"></a>
            <div class="box">
              <img src="img/icon/icon-10.png" alt="icon" width="35">
              <h3>Rp <?= number_format($profil['total_tagihan'], 0, ',', '.'); ?></h3>
              <div>
                <p>Anda Belum Melunasi Uang Kas</p>
                <p>Update Pertanggal <?=$tb_tagihan['tanggal'];?></p>
              </div>
              <a class="button" href="list.tunggakan.php">Bayar</a>
            </div>
          </div>
        <?php
      }
    }
    $status = $profil['role'];
    if($status == 'admin' OR $status == 'superadmin'){
      $_SESSION["admin"] = true;
      ?>
        <div class="cardHome-6">
          <div>
            <img src="img/icon/icon-12.png" alt="icon" width="35">
            <h4>Admin Menu</h4>
          </div>
          <i class="fa-solid fa-chevron-right"></i>
        </div>
      <?php
    }
    ?>
  </div>
<?php
include "footer.php";
?>