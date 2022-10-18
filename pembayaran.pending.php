<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["bayar"])){
  header("Location: login.php");
  exit;
}

$id = $_SESSION["id"];
$id_tunggakan = $_SESSION["bayar"];
unset($_SESSION["bayar"]);

$row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM riwayat_pembayaran WHERE id_akun='$id' AND status_pem='pending' "));

?>


  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-pending">
      <div class="box">
        <img src="img/icon/icon-5.png" width="75">
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
          <a href="img/buktiPembayaran/<?php 
          if($row['bukti'] == ''){
            echo 'kosong.jpg';
          }else{
            echo $row['bukti'];
          }
          ?>" data-lightbox="work"><img  src="img/buktiPembayaran/<?=$row['bukti']?>" width="100" style="border-radius: 5px;"></a>
        </div>
      </div>
      <a href="./">Selesai</a>
    </div>
  </div>


<?php
include "footer.php";
?>