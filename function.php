<?php
require "connect.php";
$id = $_SESSION["id"];

// Set lokasi
date_default_timezone_set("Asia/Jakarta");

function edit($data){
  global $conn;

  $id = $_SESSION["id"];
  $no_wa = htmlspecialchars(strtolower(stripslashes($data["no_wa"])));
  

  if(!($no_wa === "")){
    // validasi no_wa
    $no_wa = valNohp();
    if (!$no_wa) {
      return false;
    }
  }
  
  mysqli_query($conn, "UPDATE akun SET no_wa='$no_wa' WHERE id='$id'");
  return mysqli_affected_rows($conn);
}

function editInfouser($data){
  global $conn;

  $nama = htmlspecialchars(stripslashes($data["nama"]));
  $no_wa = htmlspecialchars(strtolower(stripslashes($data["no_wa"])));
  $id = htmlspecialchars(strtolower(stripslashes($data["id_user"])));

  // validasi nama
  if(!preg_match("/^[a-zA-Z0-9 ]*$/", $nama)){
    echo "<div class='alert' data-alert='errorNama'></div>";
    // Nama hanya boleh menggunakan Huruf dan angka
    return false;
  }

  if(!($no_wa === "")){
    // validasi no_wa
    $no_wa = valNohp();
    if (!$no_wa) {
      return false;
    }
  }
  
  mysqli_query($conn, "UPDATE akun SET nama='$nama', no_wa='$no_wa' WHERE id='$id'");
  return mysqli_affected_rows($conn);
}

function editInfouserSuper($data){
  global $conn;

  $nim = htmlspecialchars(stripslashes($data["nim"]));
  $nama = htmlspecialchars(stripslashes($data["nama"]));
  $no_wa = htmlspecialchars(strtolower(stripslashes($data["no_wa"])));
  $id = htmlspecialchars(strtolower(stripslashes($data["id_user"])));
  $role = htmlspecialchars(stripslashes($data["role"]));

  // validasi nim
  if(!preg_match("/^[0-9]*$/", $nim)){
    echo "<div class='alert' data-alert='errorNim'></div>";
    // Nim hanya boleh diisikan dengan angka
    return false;
  }

  if(!($no_wa === "")){
    // validasi no_wa
    $no_wa = valNohp();
    if (!$no_wa) {
      return false;
    }
  }
  
  mysqli_query($conn, "UPDATE akun SET nim='$nim', nama='$nama', role='$role', no_wa='$no_wa' WHERE id='$id'");
  return mysqli_affected_rows($conn);
}


function ubahPassword($data){
  global $conn;

  $password_lama = htmlspecialchars(mysqli_real_escape_string($conn, $data["password_lama"]));
  $password_baru = htmlspecialchars(mysqli_real_escape_string($conn, $data["password_baru"]));
  $password_baru2 = htmlspecialchars(mysqli_real_escape_string($conn, $data["password_baru2"]));
  $id = $_SESSION["id"];

  // mengambil password dari database
  $profil = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM akun WHERE id = '$id'"));
  $pwd = $profil['password'];

  // cek password lama sesuai atau tidak
  if(password_verify($password_lama,$pwd) OR $password_lama === $pwd){
    // cek apakah password baru sama dengan password lama
    if($password_lama !== $password_baru){
      // cek apakah password baru sama dengan konfirmasi
      if($password_baru === $password_baru2){
        $password = password_hash($password_baru, PASSWORD_DEFAULT);
        mysqli_query($conn, "UPDATE akun SET password='$password' WHERE id='$id'");
        echo "<div class='alert' data-alert='succsesPassword'></div>";
      }else{
        echo "<div class='alert' data-alert='errorPassword3'></div>";
      }
    }else{
      echo "<div class='alert' data-alert='errorPassword2'></div>";
    }
  }else{
    echo "<div class='alert' data-alert='errorPassword1'></div>";
  }
}


function upload()
{
  $namaFile = $_FILES['foto']['name'];
  $ukuranFile = $_FILES['foto']['size'];
  $error = $_FILES['foto']['error'];
  $tmpName = $_FILES['foto']['tmp_name'];

  // cek apakah tidak ada gambar yang diupload
  if ($error === 4) {
    echo "<div class='alert' data-alert='errorUpload1'></div>";
    return false;
  }

  // cek apakah yang diupload adalah gambar
  $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
  $ekstensiGambar = explode('.', $namaFile);
  $ekstensiGambar = strtolower(end($ekstensiGambar));
  if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
    echo "<div class='alert' data-alert='errorUpload2'></div>";
    return false;
  }

  // cek jika ukurannya terlalu besar
  if ($ukuranFile > 1000000) {
    echo "<div class='alert' data-alert='errorUpload3'></div>";
    return false;
  }

  // lolos pengecekan, gambar siap diupload
  // generate nama gambar baru (agar tidak tertukar di database)
  $namaFileBaru = uniqid();
  $namaFileBaru .= '.';
  $namaFileBaru .= $ekstensiGambar;
  move_uploaded_file($tmpName, 'img/buktiPembayaran/' . $namaFileBaru);
  return $namaFileBaru;
}


function verifikasi($data){
  global $conn, $id;
  
  // ambil data dari tiap elemen dalam form
  $id_tunggakan = htmlspecialchars($data["id_tunggakan"]);
  $metode = htmlspecialchars($data["metode"]);
  $nama = htmlspecialchars($data["nama"]);
  $time = date("H:i - d/m/Y");

  // validasi nama
  if(!preg_match("/^[a-zA-Z0-9 ]*$/", $nama)){
    echo "<div class='alert' data-alert='errorNama'></div>";
    // Nomor hanya boleh menggunakan angka dan diawali simbol +
    return false;
  }

  // get tgl_tagihan
  $row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM list_tunggakan WHERE id_akun='$id' AND id='$id_tunggakan' "));
  $tgl_tagihan = $row['tanggal_tagihan'];
  $nominal = $row['nominal'];

  // upload gambar
  $foto = upload();
  if (!$foto) {
    return false;
  }

  // query insert data
  mysqli_query($conn, "INSERT INTO riwayat_pembayaran VALUES ('','$id','$id_tunggakan','$tgl_tagihan','$time','$nominal','$nama','$metode','$foto','pending','','')");


  echo "<div class='alert' data-alert='successVerif'></div>";
}


function jadwalTagihan($data){
  global $conn;

  $tanggal = htmlspecialchars($data["tanggal"]);
  $nominal = htmlspecialchars($data["nominal"]);

  // ubah value tanggal
  $split_tgl = explode("-", $tanggal);
  $thn = $split_tgl[0];
  $bln = $split_tgl[1];
  $tgl = $split_tgl[2];
  $tanggal = $tgl."/".$bln."/".$thn;

  // cek apakah tanggal sudah terdaftar atau belum
  $tb_jadwal_tagihan = mysqli_query($conn, "SELECT * FROM jadwal_tagihan");
  while($data = mysqli_fetch_array($tb_jadwal_tagihan)) {
    if($data['tanggal'] == $tanggal){
      echo "<div class='alert' data-alert='errorTanggal'></div>";
      return false;
    }
  }

  // update tb_akun (banyak_tunggakan + 1) (total_tagihan + nominal)
  $tb_akun = mysqli_query($conn, "SELECT * FROM akun");
  $jumlah_user = 0;
  while($data = mysqli_fetch_array($tb_akun)) {
    $id_akun = $data['id'];
    $banyak_tunggakan = $data['banyak_tunggakan']+1;
    $total_tagihan = $data['total_tagihan']+$nominal;
    mysqli_query($conn, "UPDATE akun SET banyak_tunggakan='$banyak_tunggakan', total_tagihan='$total_tagihan' WHERE id='$id_akun' ");
    $jumlah_user++;
  }
  

  // insert tb jadwal_tagihan 
  mysqli_query($conn, "INSERT INTO jadwal_tagihan VALUES ('','$tanggal','$nominal','$jumlah_user')");


  // insert tb list_tunggakan
  $id_akun = 1;
  while($id_akun <= $jumlah_user) {
    mysqli_query($conn, "INSERT INTO list_tunggakan VALUES ('','$id_akun','$nominal','$tanggal')");
    $id_akun++;
  }

  echo "<div class='alert' data-alert='successJadwal'></div>";
}



function tarikSaldo($data){
  global $conn;

  $nominal = htmlspecialchars($data["nominal"]);
  $ket = htmlspecialchars($data["ket"]);
  $tanggal = date("H:i - d/m/Y");

  // validasi nominal harus angka
  if(!preg_match("/^[0-9]*$/", $nominal)){
    echo "<div class='alert' data-alert='errorNominal'></div>";
    return false;
  }

  // validasi minimal penarikan
  if($nominal <= 499){
    echo "<div class='alert' data-alert='errorMinimalPenarikan'></div>";
    return false;
  }

  // validasi nama
  if(!preg_match("/^[a-zA-Z0-9]*$/", $ket)){
    echo "<div class='alert' data-alert='errorKet1'></div>";
    // Keterangan hanya boleh menggunakan Huruf dan Angka!
    return false;
  }
  $jumlah_ket = strlen(substr($ket, 3));
  if ($jumlah_ket <= 8) {
    echo "<div class='alert' data-alert='errorKet2'></div>";
    // keterangan harus berupa kata min.8 huruf!
    return false;
  }

  // ambil data saldo awal
  $tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));
  
  // cek apakah nominal melebihi saldo
  if($nominal > $tb_total['saldo']){
    echo "<div class='alert' data-alert='errorMelebihiSaldo'></div>";
    return false;
  }
  
  // insert riwayat saldo
  mysqli_query($conn, "INSERT INTO riwayat_saldokas VALUES ('','$nominal','penarikan','$ket', '$tanggal')");
  
  // update total
  $saldo_total = $tb_total['saldo'] - $nominal;
  mysqli_query($conn, "UPDATE total SET saldo='$saldo_total', s_keluar='$nominal' WHERE id=1 ");

  echo "<div class='alert' data-alert='SuksesPenarikan'></div>";
}

function depositSaldo($data){
  global $conn;

  $nominal = htmlspecialchars($data["nominal"]);
  $ket = htmlspecialchars($data["ket"]);
  $tanggal = date("H:i - d/m/Y");

  // validasi nominal harus angka
  if(!preg_match("/^[0-9]*$/", $nominal)){
    echo "<div class='alert' data-alert='errorNominal'></div>";
  }

  // insert riwayat saldo
  mysqli_query($conn, "INSERT INTO riwayat_saldokas VALUES ('','$nominal','deposit','$ket', '$tanggal')");

  // ambil data saldo awal
  $tb_total = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM total WHERE id=1"));
  $saldo_total = $tb_total['saldo'] + $nominal;

  // update total
  mysqli_query($conn, "UPDATE total SET saldo='$saldo_total', s_masuk='$nominal' WHERE id=1 ");

  echo "<div class='alert' data-alert='SuksesDeposit'></div>";
}


function valNohp(){

  $handphone = htmlspecialchars(strtolower(stripslashes($_POST["no_wa"])));

  // validasi inputan nomor handphone
  if (!preg_match("/^[0-9|(\+|)]*$/", $handphone) OR strlen(strpos($handphone, "+", 1)) > 0) {
    echo "<div class='alert' data-alert='errorNohp1'></div>";
    // Nomor hanya boleh menggunakan angka dan diawali simbol +
    return false;
  }
  else if (substr($handphone, 0, 3) != "+62" ) {
    echo "<div class='alert' data-alert='errorNohp2'></div>";
    // Nomor harus diawali dengan kode negara +62
    return false;
  }
  else if (substr($handphone, 3, 1) == "0" ) {
    echo "<div class='alert' data-alert='errorNohp3'></div>";
    // Nomor tidak boleh diikuti dengan angka 0 setelah kode negara
    return false;
  }
  
  $jumlah_digit_handphone = strlen(substr($handphone, 3));
  
  if ($jumlah_digit_handphone <= 11) {
    echo "<div class='alert' data-alert='errorNohp4'></div>";
    // nomor handphone tidak boleh kurang dari 11 digit
    return false;
  }
  else if ($jumlah_digit_handphone >= 13) {
    echo "<div class='alert' data-alert='errorNohp5'></div>";
    // nomor handphone tidak boleh lebih dari dari 12 digit
    return false;
  }
  return $handphone;
}