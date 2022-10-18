const alert = $('.alert').data('alert');


if(alert === 'error'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nim / Password Salah !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
}

else if(alert === 'errorPassword1'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Password Lama Salah !",
    showConfirmButton: true,
    timer: 4000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorPassword2'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Password Baru Tidak Boleh Sama Dengan Password Lama !",
    showConfirmButton: true,
    timer: 4000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorPassword3'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Password Baru Harus Sama dengan Konfirmasi Password !",
    showConfirmButton: true,
    timer: 4000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'succsesPassword'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Password Anda Berhasil diUbah !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    window.location.href = 'profil.php';
  },2000);
}
else if(alert === 'succesEdit'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Profil Berhasil Diperbarui !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    location.reload();
  },2000);
}
else if(alert === 'successVerif'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Data Verifikasi Berhasil Terinput !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    window.location.href = 'pembayaran.pending.php';
  },1000);
}
else if(alert === 'errorUpload1'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Gambar / Bukti Pembayaran Harus di Upload!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorUpload2'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "File harus berupa gambar (jpg, jpeg, png)!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorUpload3'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Ukuran gambar terlalu besar! (Max.1000kb)",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNominal'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nominal harus berupa angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorTanggal'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Tanggal sudah ada dalam list Jadwal!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'successJadwal'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Jadwal Tagihan Kas Berhasil di tambahkan !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    window.location.href = 'admin.setting.list.php';
  },2000);
}
else if(alert === 'SuksesPenarikan'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Data Penarikan Berhasil terSimpan !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    window.location.href = 'dompet.php';
  },2000);
}
else if(alert === 'SuksesDeposit'){
  Swal.fire({
    position: 'center',
    icon: 'success',
    title: 'Succses',
    text: "Data Deposit Berhasil terSimpan !",
    showConfirmButton: true,
    timer: 2000,
    confirmButtonColor: "#212635",
  })
  setTimeout(function(){
    window.location.href = 'dompet.php';
  },2000);
}
else if(alert === 'errorMelebihiSaldo'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nominal Melebihi Saldo saat ini!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNohp1'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nomor hanya boleh menggunakan angka dan diawali simbol +",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNohp2'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nomor harus diawali dengan kode negara +62",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNohp3'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nomor tidak boleh diikuti dengan angka 0 setelah kode negara",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNohp4'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nomor tidak boleh kurang dari 11 digit angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNohp5'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nomor tidak boleh lebih dari 13 digit angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNama'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nama pengirim hanya boleh Huruf dan Angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorKet1'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Keterangan hanya boleh menggunakan Huruf dan Angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorKet2'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "keterangan harus berupa kata min.8 huruf!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorMinimalPenarikan'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Penarikan Gagal, Jumlah minimum penarikan adalah Rp500 !",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorNim'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Nim hanya boleh diisikan dengan angka!",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}
else if(alert === 'errorTerbanned'){
  Swal.fire({
    position: 'center',
    icon: 'error',
    title: 'Oppss...',
    text: "Mohon maaf akun anda telah di Banned, Hub.admin !",
    showConfirmButton: true,
    timer: 5000,
    confirmButtonColor: "#212635",
  })
}

$('#logout').on('click', function () {
  Swal.fire({
    title: 'Yakin ingin keluar ?',
    text: "Semua sesi Anda yang tersimpan akan dihapus",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Keluar',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "Anda berhasil keluar.",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'logout.php';
      },1200);
    }
  })
});

// Verif Terima
$('#btn-verif a:nth-child(2)').on('click', function () {
  Swal.fire({
    title: 'Yakin ingin Terima ?',
    text: "Pastikan uang kas sudah diterima dan cocok dengan bukti yang sudah tertera.",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Ya, Sudah',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "Pembayaran Berhasil diterima!",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'admin.verifikasi.terima.php';
      },1200);
    }
  })
});

// Verif Tolak
$('#btn-verif a:nth-child(1)').on('click', function () {
  Swal.fire({
    title: 'Yakin ingin Tolak ?',
    text: "Data dan bukti pembayaran akan terHapus dari database !",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Ya, Hapus',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "Pembayaran Berhasil ditolak!",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'admin.verifikasi.tolak.php';
      },1200);
    }
  })
});

// hapus jadwal
$('.btn-hapus').on('click', function () {
  const dataId = $(this).attr('data-id');
  Swal.fire({
    title: 'Yakin ingin Hapus ?',
    text: "Jadwal Tagihan Akan terhapus secara permanen!",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Ya, Hapus',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "Pembayaran Berhasil mengHapus Tagihan!",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'admin.setting.hapus.php?id='+dataId;
      },1200);
    }
  })
});

// banned akun user
$('.btn-banned').on('click', function () {
  Swal.fire({
    title: 'Yakin ingin Banned ?',
    text: "Setelah user di banned maka user tidak bisa login kembali sebelum di unbanned!",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Ya, Banned',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "User berhasil di Banned!",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'get.banned.php';
      },1200);
    }
  })
});


// unbanned akun user
$('.btn-unbanned').on('click', function () {
  Swal.fire({
    title: 'Yakin ingin Unbanned ?',
    text: "Setelah user di Unbanned maka user dapat login kembali!",
    icon: 'question',
    showCancelButton: true,
    confirmButtonColor: '#089A7C',
    cancelButtonColor: '#EA5455',
    confirmButtonText: 'Ya, Unbanned',
    cancelButtonText: 'Batal',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Yeay!',
        text: "User berhasil di Unbanned!",
        showConfirmButton: true,
        confirmButtonColor: "#089A7C",
        confirmButtonText: 'Okay',
      })
      setTimeout(function(){
        window.location.href = 'get.unbanned.php';
      },1200);
    }
  })
});




// hover foto profil
$(".fotoProfil").hover(
	function () {
		// $(this).addClass('hover');
		$(this,"img").css("filter", "brightness(50%)");
	}, 
	function () {
		// $(this).removeClass('hover');
		$(this,"img").css("filter", "brightness(100%)");
	}
);


// cek status aktif
setInterval(function() {
  $.ajax({
    url: "cekStatusAdmin.php",
    success: function(data) {
      $("#admin-aktif").html(data);
    }
  })
}, 500)

setInterval(function() {
  $.ajax({
    url: "cekStatusUser.php",
    success: function(data) {
      $("#user-aktif").html(data);
    }
  })
}, 500)

setInterval(function () {
  $.ajax({
    url: 'UpdateStatus.php',
    success: function (data) {
    },
  });
}, 500);


$('.cardHome-4').on('click',()=>{
  window.location.href = 'status.pembayaran.php';
})
$('.cardHome-6').on('click',()=>{
  window.location.href = 'admin.php';
})


var isActive = false;
$('.liatSemua1').on('click', function () {
  if (isActive) {
    $('.statusPem-lunas').css('max-height', '290px');
    $('.card-admin2 > .con-listUser > div').css('max-height', '300px');
    $(this).html('Lihat semua');
    $('#iconLihat1').css('transform', 'rotate(90deg)');
  } else {
    $('.statusPem-lunas').css('max-height', 'max-content');
    $('.card-admin2 > .con-listUser > div').css('max-height', 'max-content');
    $(this).html('Lihat sebagian');
    $('#iconLihat1').css('transform', 'rotate(-90deg)');
  }
  isActive = !isActive;
});

var isActive = false;
$('.liatSemua2').on('click', function () {
  if (isActive) {
    $('.statusPem-belum').css('max-height', '290px');
    $('.con-isi > .con-listBelum').css('max-height', '300px');
    $('.card-admin2 > .con-listUser > div').css('max-height', '300px');
    $(this).html('Lihat semua');
    $('#iconLihat2').css('transform', 'rotate(90deg)');
  } else {
    $('.statusPem-belum').css('max-height', 'max-content');
    $('.con-isi > .con-listBelum').css('max-height', 'max-content');
    $('.card-admin2 > .con-listUser > div').css('max-height', 'max-content');
    $(this).html('Lihat sebagian');
    $('#iconLihat2').css('transform', 'rotate(-90deg)');
  }
  isActive = !isActive;
});

$('.cardList').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'get.pembayaran.php?id='+dataId;
})

$('.card-listVerif').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'get.verifikasi.php?id='+dataId;
})

// handel klik Jadwal Tagihan info
$('.card-listJadwal').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'admin.setting.info.php?id='+dataId;
})

// handel klik admin listuser info
$('.card-listUser').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'admin.listuser.info.php?id='+dataId;
})

// handel klik admin listAdmin info
$('.card-listAdmin').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'admin.listuser.info.php?id='+dataId;
})

// handel klik cardHome-2
$('.cardHome-2').on('click',function(){
  window.location.href = 'chatt.php';
})

// handel klik cardHome-3
$('.cardHome-3').on('click',function(){
  window.location.href = 'dompet.php';
})

// handel klik Verifikasi Pembayaran
$('.btn-verif').on('click',()=>{
  $('.card-Carabayar').css('display', 'none')
  $('.card-verifikasi').css('display', 'block')
})


// preview upload bukti ss
var selDiv = "";
var storedFiles = [];
$(document).ready(function () {
  $("#img-bukti").on("change", handleFileSelect);
  selDiv = $("#selectedBanner");
});

function handleFileSelect(e) {
  var files = e.target.files;
  var filesArr = Array.prototype.slice.call(files);
  filesArr.forEach(function (f) {
    if (!f.type.match("image.*")) {
      return;
    }
    storedFiles.push(f);

    var reader = new FileReader();
    reader.onload = function (e) {
      var html =
        '<img src="' +
        e.target.result +
        "\" data-file='" +
        f.name +
        "' height='max-content' width='200px'>";
      selDiv.html(html);
    };
    reader.readAsDataURL(f);
  });
}


function cekInput(){
  let inputan = document.getElementById('textbox');
  if(inputan.selectionStart === 0 && window.event.code === "Space"){
    window.event.preventDefault();
  }
}


$('#textbox').on('keypress', function (e) {
if(e.which === 13){
    let value = $(this).val();
    $.ajax({
      type: "POST",
      url: "kirim-pesan.php",
      data: "pesan="+value
    })
    $(this).val('');
    setTimeout(function(){
      let textPesan = document.getElementById('textPesan');
      textPesan.scrollTop = textPesan.scrollHeight;
    },500);
  }
});

$('#btn-kirim').on('click',()=>{
  let input = $('#textbox')
  let value = $(input).val();
  $.ajax({
    type: "POST",
    url: "kirim-pesan.php",
    data: "pesan="+value
  })
  $(input).val('');
  setTimeout(function(){
    let textPesan = document.getElementById('textPesan');
    textPesan.scrollTop = textPesan.scrollHeight;
  },500);
})

setInterval(function () {
  $.ajax({
    url: 'cekPesanBaru.php',
    success: function (data) {
      $('#textPesan').html(data);
    },
  });
}, 500);

setInterval(function() {
  $.ajax({
    url: "cekOnlineChatt.php",
    success: function(data) {
      $("#count-online").html(data);
    }
  })
}, 500)
setInterval(function() {
  $.ajax({
    url: "cekOnlineChattProfil.php",
    success: function(data) {
      $(".profil-online").html(data);
    }
  })
}, 500)


// copy nomer
$("#copy-nomer").click(function () { 
  const nomer = "081310725348";
  const textArea = document.createElement("textarea");
  textArea.value = nomer;
  document.body.appendChild(textArea);
  textArea.focus();
  textArea.select();
  try {
    document.execCommand('copy');
  } catch (err) {
    console.error('Unable to copy to clipboard', err);
  }
  document.body.removeChild(textArea);

  $(this).html('<i class="fa-solid fa-clipboard-check"></i>');
  setTimeout(function(){
    $("#copy-nomer").html('<i class="fa-regular fa-clipboard"></i>');
  },5000);
});


// pembayaran cash tidak perlu melampirkan bukti foto
$('#metode').on('change', function() {
  if($(this).val() === 'cash'){
    $('.bukti').css('display','none');
    $('#verif-btn').attr("name","verifikasiCash");
    $('.bukti > input').attr("required",false);
  }else{
    $('.bukti').css('display','flex');
    $('#verif-btn').attr("name","verifikasi");
    $('.bukti > input').attr("required",true);
  }
});