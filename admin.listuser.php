<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}
unset($_SESSION["banned"]);

?>


  <div class="container3">
    <div class="top-button">
      <a href="admin.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-19.png" width="75">
        <h2>List User</h2>
      </div>
      <div class="con-listUser">
        <div>
          <h3>Admin :</h3>
          <?php
            $profil = mysqli_query($conn, "SELECT * FROM akun");
            $i=1; while($data = mysqli_fetch_array($profil)) {
            if($data['role'] == 'admin' OR $data['role'] == 'superadmin'){ 
              $id_akun = $data['id'];
              $row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
              ?>
              <div data-id="<?=$data['id']?>" class="card-listAdmin">
                <div>
                  <p class="nomor"><?=$i?></p>
                  <div>
                    <h4><?=strtolower($row['nama'])?></h4>
                    <p><?=$data['banyak_tunggakan']?> Tunggakan</p>
                  </div>
                </div>
                <?php
                  if($data['status']=='aktif'){
                    ?><p style="color: #089A7C;"><?=$data['status']?></p><?php
                  }else{
                    ?><p style="color: #EA5455;"><?=$data['status']?></p><?php
                  }
                ?>
              </div>
          <?php $i++; }
          }?>
        </div>
        <?php if($i >= 4){ ?>
          <div class="lihatSemua" id="btn-lihatAdmin" >
            <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua1">Lihat semua</p>
          </div>
        <?php
        }
        ?>
      </div>
      <div class="con-listUser">
        <div>
          <h3>User :</h3>
          <?php
            $profil = mysqli_query($conn, "SELECT * FROM akun");
            $i=1; while($data = mysqli_fetch_array($profil)) {
            if($data['role'] == 'user'){ 
              $id_akun = $data['id'];
              $row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
              ?>
              <div data-id="<?=$data['id']?>" class="card-listUser">
                <div>
                  <p class="nomor"><?=$i?></p>
                  <div>
                    <h4><?=strtolower($row['nama'])?></h4>
                    <p><?=$data['banyak_tunggakan']?> Tunggakan</p>
                  </div>
                </div>
                <?php
                  if($data['status']=='aktif'){
                    ?><p style="color: #089A7C;"><?=$data['status']?></p><?php
                  }else{
                    ?><p style="color: #EA5455;"><?=$data['status']?></p><?php
                  }
                ?>
              </div>
          <?php $i++; }
          }?>
        </div>
        <?php if($i >= 4){ ?>
          <div class="lihatSemua" id="btn-lihatAdmin" >
            <i id="iconLihat1" class="fa-solid fa-angle-left"></i>
            <p class="liatSemua1">Lihat semua</p>
          </div>
        <?php
        }
        ?>
      </div>
    </div>
  </div>

<?php
include "footer.php";
?>