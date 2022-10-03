<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

if(!isset($_SESSION["verifikasi"])){
  header("Location: login.php");
  exit;
}

$id_pembayaran = $_SESSION["verifikasi"];

$row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id='$id_pembayaran' AND status_pem='pending' "));

?>

  <!-- style = pending.css -->
  <div class="container3">
    <div class="top-button">
      <a href="admin.verifikasi.list.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-pending">
      <div class="box">
        <img src="img/icon/icon-17.png" width="75">
        <h2>Menunggu Terverifikasi</h2>
      </div>
      <div class="con-dataPem">
        <div class="ket">
          <p>Status Pembayaran</p>
          <p>Metode Pembayaran</p>
          <p>Nominal</p>
          <p>Nama Pengirim</p>
          <p>Tanggal Tagihan</p>
          <p>Waktu Pembayaran</p>
          <p>Bukti Pembayaran</p>
        </div>
        <div class="titik">
          <p>:</p>
          <p>:</p>
          <p>:</p>
          <p>:</p>
          <p>:</p>
          <p>:</p>
          <p>:</p>
        </div>
        <div class="value">
          <p>Pending</p>
          <p><?=$row['metode_pem']?></p>
          <p>Rp <?= number_format($row['nominal'], 0, ',', '.'); ?></p>
          <p><?=$row['nama_pengirim']?></p>
          <p><?=$row['tgl_tagihan']?></p>
          <p><?=$row['time']?></p>
          <a href="img/buktiPembayaran/<?=$row['bukti']?>" data-lightbox="work"><img  src="img/buktiPembayaran/<?=$row['bukti']?>" width="100" style="border-radius: 5px;"></a>
        </div>
      </div>
      <div id="btn-verif">
        <a>Tolak</a>
        <a>Terima</a>
      </div>
    </div>
  </div>



<?php
include "footer.php";
?>