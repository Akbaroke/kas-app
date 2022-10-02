<?php
include "connect.php";
include "head.php";
include "session_cek.php";
include "function.php";

$nim = $_SESSION["nim"];
$id = $_SESSION["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));

if(isset($_POST["passwordUbah"])){
  ubahPassword($_POST);
}

?>


  <div class="container3">
    <div class="top-button">
      <a href="profil.php"><i class="fa-solid fa-angle-left"></i></a>
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
        <h2>Ubah Password</h2>
      </div>
      <form action="" method="post" autocomplete="off" required >
        <div>
          <label for="password_lama">Password Lama :</label>
          <input type="password" name="password_lama" autofocus required >
        </div>
        <div>
          <label for="password_baru">Password Baru :</label>
          <input type="password" name="password_baru" required>
        </div>
        <div>
          <label for="password_baru2">Konfiramasi Password :</label>
          <input type="password" name="password_baru2" required>
        </div>
        <button style="margin-top: 15px;" type="submit" name="passwordUbah">
            <span>Simpan</span>
        </button>
      </form>
    </div>
  </div>


<?php
include "footer.php";
?>