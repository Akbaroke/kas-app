<?php
include "connect.php";
include "head.php";
include "session_cek.php";

$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));

$tb_tunggakan = mysqli_query($conn, "SELECT * FROM list_tunggakan WHERE id_akun='$id'"); 

?>

  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-listTung">
      <div class="box">
        <img src="img/icon/icon-10.png" width="75">
        <h2>List Tunggakan</h2>
      </div>
      <div class="conList">
        <?php
        $i = 1;
        while($data = mysqli_fetch_array($tb_tunggakan)) {
        ?>
          <div data-id="<?=$data['id']?>" class="cardList">
            <div>
              <p><?=$i?></p>
              <h4>Rp <?= number_format($data['nominal'], 0, ',', '.') ?></h4>
            </div>
            <p><?=$data['tanggal_tagihan']?></p>
          </div>
        <?php
        $i++;
        }
        ?>
      </div>
    </div>
  </div>



<?php
include "footer.php";
?>