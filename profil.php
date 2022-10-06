<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

$nim = $_SESSION["nim"];
$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));

if(isset($_POST["edit"])){
  if(edit($_POST) > 0 ){
    echo "<div class='alert' data-alert='succesEdit'></div>";
  }else{
    echo mysqli_error($conn);
  }
}

?>


  <div class="container3">
    <div class="top-button">
      <a href="./"><i class="fa-solid fa-angle-left"></i></a>
      <i id="logout" class="fa-solid fa-right-from-bracket"></i>
    </div>
    <div class="card-profil">
      <div>
        <?php
          if($profil["foto"] === 'foto_default.jpg'){
            echo ""?> <a href="img/profil/foto_default.jpg" data-lightbox="work"><img class="fotoProfil" src="img/profil/foto_default.jpg" width="75"></a> <?php "";
          }else{
            echo ""?> <a href="<?=$profil["foto"]?>" data-lightbox="work"><img class="fotoProfil" src="<?=$profil["foto"]?>" width="75"></a> <?php "";
          }
        ?>
        <h2><?=strtolower($profil["nama"])?></h2>
      </div>
      <form action="" method="post" autocomplete="off" required >
        <div>
          <label for="nim">NIM :</label>
          <input style="background-color: #909090; border:1px solid #fff;" type="text" name="nim" value="<?=$profil["nim"]?>" readonly >
        </div>
        <div>
          <label for="nama">Nama :</label>
          <input style="background-color: #909090; border:1px solid #fff;" type="text" name="nama" value="<?=$profil["nama"]?>" placeholder="masukan nama" readonly >
        </div>
        <div>
          <label for="no_wa">No.WhastApp :</label>
          <input type="text" name="no_wa" value="<?=$profil["no_wa"]?>" placeholder="+62" >
        </div>
        <a href="password.php">Ubah Password ?</a>
        <button type="submit" name="edit">
            <span>Simpan</span>
        </button>
      </form>
    </div>
  </div>


<?php
include "footer.php";
?>