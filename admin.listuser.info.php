<?php
include "connect.php";
include "head.php";
include "session_cek.php";
require "function.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

unset($_SESSION["banned"]);
$id_user = $_GET["id"];
$profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_user'"));
$_SESSION["banned"] = $id_user;
$role_user = $profil['role'];


if(isset($_POST["editInfouser"])){
  if(editInfouser($_POST) > 0 ){
    echo "<div class='alert' data-alert='succesEdit'></div>";
  }else{
    echo mysqli_error($conn);
  }
}
if(isset($_POST["editInfouserSuper"])){
  if(editInfouserSuper($_POST) > 0 ){
    echo "<div class='alert' data-alert='succesEdit'></div>";
  }else{
    echo mysqli_error($conn);
  }
}

$id_admin = $_SESSION["id"];
$data_admin = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_admin'"));

if($role_user == 'admin' OR $role_user == 'superadmin'){
  if($data_admin['role']=='admin'){
    header("Location: admin.listuser.php");
    exit;
  }
}


?>


  <div class="container3">
    <div class="top-button">
      <a href="admin.listuser.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <?php
      if($data_admin['role'] == 'admin'){
        ?>
          <div class="card-infoUser">
            <div>
              <a href="<?=$profil["foto"]?>" data-lightbox="work"><img class="fotoProfil" src="<?=$profil["foto"]?>" width="75"></a>
              <h2><?=strtolower($profil["nama"])?></h2>
            </div>
            <form action="" method="post" autocomplete="off">
              <input style="display: none;" type="text" name="id_user" value="<?=$id_user?>" readonly >
              <div>
                <label for="nim">NIM :</label>
                <input style="background-color: #909090; border:1px solid #fff;" type="text" name="nim" value="<?=$profil["nim"]?>" required >
              </div>
              <div>
                <label for="nama">Nama :</label>
                <input type="text" name="nama" value="<?=$profil["nama"]?>" placeholder="masukan nama" required >
              </div>
              <div>
                <label for="no_wa">No.WhastApp :</label>
                <input type="text" name="no_wa" value="<?=$profil["no_wa"]?>" placeholder="+62" >
              </div>
              <div class="btn-userInfo">
                <?php
                  if($profil["status"] == "aktif"){
                    ?><p class="btn-banned">Banned</p><?php
                  }else{
                    ?><p class="btn-unbanned">Unbanned</p><?php
                  }
                ?>
                <button class="btn-simpan" type="submit" name="editInfouser">
                    <span>Simpan</span>
                </button>
              </div>
            </form>
          </div>
        <?php
      }elseif($data_admin['role'] == 'superadmin'){
        ?>
          <div class="card-infoUser">
            <div>
              <a href="<?=$profil["foto"]?>" data-lightbox="work"><img class="fotoProfil" src="<?=$profil["foto"]?>" width="75"></a>
              <h2><?=strtolower($profil["nama"])?></h2>
            </div>
            <form action="" method="post" autocomplete="off" required >
              <input style="display: none;" type="text" name="id_user" value="<?=$id_user?>" readonly >
              <div>
                <label for="nim">NIM :</label>
                <input type="text" name="nim" value="<?=$profil["nim"]?>" readonly>
              </div>
              <div>
                <label for="nama">Nama :</label>
                <input type="text" name="nama" value="<?=$profil["nama"]?>" placeholder="masukan nama" required >
              </div>
              <div>
                <label for="no_wa">No.WhastApp :</label>
                <input type="text" name="no_wa" value="<?=$profil["no_wa"]?>" placeholder="+62" >
              </div>
              <div>
                <label for="role">Role :</label>
                <select name="role" required>
                  <option value="">Pilih Role</option>
                  <option value="admin" <?php if($role_user=='admin'){echo'selected';}else{'';} ?> >Admin</option>
                  <option value="user"<?php if($role_user=='user'){echo'selected';}else{'';} ?> >User</option>
                </select>
              </div>
              <div class="btn-userInfo">
                <?php
                  if($profil["status"] == "aktif"){
                    ?><p class="btn-banned">Banned</p><?php
                  }else{
                    ?><p class="btn-unbanned">Unbanned</p><?php
                  }
                ?>
                <button class="btn-simpan" type="submit" name="editInfouserSuper">
                    <span>Simpan</span>
                </button>
              </div>
            </form>
          </div>
        <?php
      }
    ?>
  </div>


<?php
include "footer.php";
?>