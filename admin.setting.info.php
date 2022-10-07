<?php
include "connect.php";
include "head.php";
include "session_cek.php";

if(!isset($_SESSION["admin"])){
  header("Location: login.php");
  exit;
}

$id_jadwal_tagihan = $_GET["id"];
$tb_jadwal_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan WHERE id = '$id_jadwal_tagihan'"));
$tanggal = $tb_jadwal_tagihan["tanggal"];
$nominal = $tb_jadwal_tagihan["nominal"];

$blm_lunas = 0;
$tb_list_tunggakan = mysqli_query($conn, "SELECT * FROM list_tunggakan");
while($data = mysqli_fetch_array($tb_list_tunggakan)) {
  // cek banyak user yang belum bayar
  if($data['tanggal_tagihan'] == $tanggal){
    $blm_lunas++;
  }
}

// menghitung jumlah pendapatan pertanggal
$total = 0;
$lunas = 0;
$tb_riwayat_pembayaran = mysqli_query($conn, "SELECT * FROM riwayat_pembayaran");
while($data = mysqli_fetch_array($tb_riwayat_pembayaran)) {
  // cek banyak user yang belum bayar
  if($data['tgl_tagihan'] == $tanggal AND $data['status_pem'] == 'berhasil'){
    $total = $total + $data['nominal'];
    $lunas++;
  }
}

// menghitung jumlah user
$tb_akun = mysqli_query($conn, "SELECT * FROM akun");
$jumlah_user = 0;
while($data = mysqli_fetch_array($tb_akun)) {
  $jumlah_user++;
}

?>


  <div class="container3">
    <div class="top-button">
      <a href="admin.setting.list.php"><i class="fa-solid fa-angle-left"></i></a>
    </div>
    <div class="card-admin2">
      <div>
        <img src="img/icon/icon-18.png" width="75">
        <h2>Jadwal Tagihan Info</h2>
      </div>
      <div class="con-isi">
        <div class="box">
          <img src="img/icon/icon-4.png" width="35">
          <div>
            <h4>Rp <?= number_format($total, 0, ',', '.'); ?></h4>
            <p>Pendapatan tanggal <?=$tanggal?></p>
          </div>
        </div>

        <div class="con-listBelum">
          <h4>Belum Lunas <?=$blm_lunas?> Orang</h4>
          <?php
          $tb_list_tunggakan = mysqli_query($conn, "SELECT * FROM list_tunggakan");
          while($data = mysqli_fetch_array($tb_list_tunggakan)) {
            // generate user yang belum bayar
            if($data['tanggal_tagihan'] == $tanggal){
              $id_akun = $data['id_akun'];
              $profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
              ?>
                <div class="card-list">
                  <div>
                    <a href="<?=$profil['foto']?>" data-lightbox="work"><img class="foto" src="<?=$profil['foto']?>" width="35"></a>
                    <p><?=strtolower($profil['nama'])?></p>
                  </div>
                  <div class="labelPem">
                    <p>-Rp <?= number_format($nominal, 0, ',', '.'); ?></p>
                    <h4>Belum Lunas</h4>
                  </div>
                </div>
              <?php
            }
          }?>
        </div>
        <?php
        if($blm_lunas >= 4){
          ?>
            <div class="lihatSemua">
              <i id="iconLihat2" class="fa-solid fa-angle-left"></i>
              <p class="liatSemua2">Lihat semua</p>
            </div>
          <?php
        }
        if($blm_lunas == $jumlah_user){ ?>
          <div data-id="<?=$id_jadwal_tagihan?>" class="btn-hapus">
            Hapus
          </div>
        <?php
        }else{?>
          <a href="pdf.php?id=<?=$id_jadwal_tagihan?>" class="btn-print">
            Download
          </a>
        <?php
        }
        ?>

      </div>
    </div>
  </div>


<?php
include "footer.php";
?>