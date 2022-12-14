<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["bayar"])){
  header("Location: login.php");
  exit;
}

$id_tunggakan = $_SESSION["bayar"];
$row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM list_tunggakan WHERE id='$id_tunggakan'"));


if(isset($_POST["verifikasi"])){
  verifikasi($_POST);
}else if(isset($_POST["verifikasiCash"])){
  verifikasiCash($_POST);
}


?>


  <div class="container3">
    <div class="top-button">
      <a href="list.tunggakan.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="Pembayaran">
      <div class="card-Carabayar">
        <div class="box">
          <img src="img/icon/icon-5.png" width="75">
          <h2>Cara Bayar</h2>
        </div>
        <div class="con-cara">
          <h3>Silahkan Lakukan Pembayaran Anda :</h3>
          <div class="cara">
            <li>Pembayaran Menggunakan DANA :</li>
            <p>Cara pembayaran menggunakan Dana yaitu dengan transfer uang pembayaran ke nomor tujuan yang telah kami sediakan. Lalu Screenshoot bukti transfer dan lakukan pengisian form verifikasi pembayaran serta upload buktinya.</p>
          </div>
          <table class="tujuan">
            <tr>
              <td>No.Tujuan Dana</td>
              <td> : </td>
              <td class="nmr">081310725348 <span id="copy-nomer"><i class="fa-regular fa-clipboard"></i></span></td>
            </tr>
            <tr>
              <td>Nominal Tagihan</td>
              <td>:</td>
              <td class="hrg">Rp <?= number_format($row['nominal'], 0, ',', '.'); ?></td>
            </tr>
          </table>
          <div class="cara">
            <li>Pembayaran Menggunakan CASH / Langsung :</li>
            <p>Cara pembayaran menggunakan Cash yaitu dengan langsung menemui admin yang bersangkutan dan memberikan uang pembayaran yang telah di tetapkan. Lalu foto bukti penyerahan uangnya dan lakukan pengisian form verifikasi pembayaran serta upload buktinya.</p>
          </div>
          <table class="tujuan">
            <tr>
              <td>Hub. Admin</td>
              <td>:</td>
              <td class="nmr">Sava <a class="link-wa" href="https://wa.me/+62895345747783" target="_blank"><i class="fa-brands fa-whatsapp"></i></a></td>
            </tr>
            <tr>
              <td>Nominal Tagihan</td>
              <td>:</td>
              <td class="hrg">Rp <?= number_format($row['nominal'], 0, ',', '.'); ?></td>
            </tr>
          </table>
          <a class="btn-verif">Verifikasi Pembayaran</a>
        </div>
      </div>

      <div class="card-verifikasi">
        <div class="box">
          <img src="img/icon/icon-5.png" width="75">
          <h2>Verifikasi Pembayaran</h2>
        </div>
        <form action="" method="post" autocomplete="off" enctype="multipart/form-data" required >
          <input type="text" name="id_tunggakan" value="<?=$id_tunggakan?>" style="display: none;">
          <div>
            <label for="metode">Metode Pembayaran :</label>
            <select name="metode" id="metode" required>
              <option class="op-metode" value="">Pilih Metode</option>
              <option class="op-metode" value="dana">DANA</option>
              <option class="op-metode" value="cash">CASH (Langsung)</option>
            </select>
          </div>
          <div>
            <label for="nama">Nama Pengirim :</label>
            <input type="text" name="nama" placeholder="masukan nama" required >
          </div>
          <div class="bukti">
            <label for="foto">Bukti Pembayaran :</label>
            <input type="file" name="foto" id="img-bukti" required >
          </div>
          <div id="selectedBanner"></div>
          <button type="submit" name="verifikasi" id="verif-btn">
              <span>Simpan</span>
          </button>
        </form>
      </div>
    </div>
  </div>


<?php
include "footer.php";
?>