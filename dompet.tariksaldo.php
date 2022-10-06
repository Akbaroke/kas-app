<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}               

if(isset($_POST["tarikSaldo"])){
  tarikSaldo($_POST);
}

// ambil data saldo awal
$tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));
$saldo = $tb_total['saldo'];
if($saldo <= 0){
  header("Location: dompet.php");
  exit;
}

?>

  <div class="container3">
    <div class="top-button">
      <a href="dompet.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-18.png" width="75">
        <h2>Penarikan Saldo</h2>
      </div>
      <form class="form-dompet" action="" method="post" autocomplete="off" enctype="multipart/form-data">
          <div>
            <label for="nominal">Jumlah Penarikan Rp :</label>
            <input type="text" name="nominal" placeholder="masukan nominal penarikan" required >
          </div>
          <div>
            <label for="ket">Ket :</label>
            <input type="text" name="ket" placeholder="keterangan" required >
          </div>
          <button type="submit" name="tarikSaldo">
              <span>Simpan</span>
          </button>
        </form>
    </div>
  </div>



<?php
include "footer.php";
?>