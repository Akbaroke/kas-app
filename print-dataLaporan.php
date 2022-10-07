<?php
include "connect.php";
date_default_timezone_set("Asia/Jakarta");

$id_jadwal_tagihan = $_GET["id"];
$tb_jadwal_tagihan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM jadwal_tagihan WHERE id = '$id_jadwal_tagihan'"));
$tanggal = $tb_jadwal_tagihan["tanggal"];
$nominal = $tb_jadwal_tagihan["nominal"];

// cek user blm lunas
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

<body>
  <h2 style="margin: 0 auto; text-align:center;">LAPORAN PEMBAYARAN KAS MINGGUAN</h2>
  <h2 style="margin: 0 auto; text-align:center;">KELAS TI.21.A3</h2>

  <p><strong>Waktu Download : </strong><?=date("H:i - d/m/Y")?></p>
  <table border="1" style="width: 100%; border-collapse: collapse; border: 2px solid #000;">
    <thead>
      <tr style="border: 2px solid #000; background-color: #d3d3d3;">
        <th style="width: 10%; text-align: center;">No.</th>
        <th style="width: 40%; text-align: center;">Nama</th>
        <th style="width: 15%; text-align: center;">Status</th>
        <th style="width: 15%; text-align: center;">Metode</th>
        <th style="width: 20%; text-align: center;">Waktu</th>
      </tr>
    </thead>
    <tbody>
      <?php
      // menampilkan yang lunas
      $tb_riwayat_pembayaran = mysqli_query($conn, "SELECT * FROM riwayat_pembayaran");
      $i = 1;
      while($row = mysqli_fetch_assoc($tb_riwayat_pembayaran)){
        if($row['tgl_tagihan'] == $tanggal AND $row['status_pem'] == 'berhasil'){
          $id_akun = $row['id_akun'];
          $row_akun = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
          ?>
          <tr>
            <td style="width: 10%; text-align: center;"><?=$i++;?>.</td>
            <td style="width: 40%; text-align: center;"><?=strtoupper($row_akun['nama'])?></td>
            <td style="width: 15%; text-align: center;">Lunas</td>
            <td style="width: 15%; text-align: center;"><?=strtoupper($row['metode_pem'])?></td>
            <td style="width: 20%; text-align: center;"><?=$row['time']?></td>
          </tr>
          <?php
        }
        ?>
        <?php
      }
      // menampilkan yang belum lunas
      $tb_list_tunggakan = mysqli_query($conn, "SELECT * FROM list_tunggakan");
      while($row = mysqli_fetch_assoc($tb_list_tunggakan)){
        if($row['tanggal_tagihan'] == $tanggal){
          $id_akun = $row['id_akun'];
          $row_akun = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id_akun'"));
          ?>
          <tr>
            <td style="width: 10%; text-align: center;"><?=$i++;?>.</td>
            <td style="width: 40%; text-align: center;"><?=strtoupper($row_akun['nama'])?></td>
            <td style="width: 15%; text-align: center;"></td>
            <td style="width: 15%; text-align: center;"></td>
            <td style="width: 20%; text-align: center;"></td>
          </tr>
          <?php
        }
        ?>
        <?php
      }
      ?>
    </tbody>
  </table>
  <p></p>
  <table border="1" class="table2" style="width: 100%; border-collapse: collapse; border: 2px solid #000;">
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Nominal Tagihan</td>
      <td style="width: 60%; text-align: center; ">Rp <?= number_format($nominal, 0, ',', '.');?></td>
    </tr>
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Jadwal Penagihan</td>
      <td style="width: 60%; text-align: center; "><?=$tanggal?></td>
    </tr>
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Total Pendapatan</td>
      <td style="width: 60%; text-align: center; ">Rp <?= number_format($total, 0, ',', '.'); ?></td>
    </tr>
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Jumalah Anggota</td>
      <td style="width: 60%; text-align: center; "><?=$jumlah_user?></td>
    </tr>
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Lunas</td>
      <td style="width: 60%; text-align: center; "><?=$lunas?></td>
    </tr>
    <tr>
      <td style="width: 40%; text-align: center; background-color: #d3d3d3;">Belum Lunas</td>
      <td style="width: 60%; text-align: center;"><?=$blm_lunas?></td>
    </tr>
  </table>
</body>