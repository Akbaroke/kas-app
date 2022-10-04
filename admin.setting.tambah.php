<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$tb_jadwal_tagihan = mysqli_query($conn, "SELECT * FROM jadwal_tagihan ORDER BY id DESC");
// unset($_SESSION["verifikasi"]);


if(isset($_POST["tambah-tagihan"])){
  jadwalTagihan($_POST);
}

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
      <form class="form-tambah" action="" method="post" autocomplete="off" enctype="multipart/form-data" required >
        <div>
          <label for="tanggal">Tanggal :</label>
          <input type="date" name="tanggal" required >
        </div>
        <div>
          <label for="nominal">Nominal Rp :</label>
          <select name="nominal" id="nominal" required>
            <option value="">Pilih Nominal</option>
            <option value="5000">5.000</option>
          </select>
        </div>
        <button type="submit" name="tambah-tagihan">
            <span>Simpan</span>
        </button>
      </form>
    </div>
  </div>


<?php
include "footer.php";
?>