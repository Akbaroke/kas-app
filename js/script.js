const alert = $('.alert').data('alert');
const alert1 = $('.alert').data('errorPassword1');
const alert2 = $('.alert').data('errorPassword2');
const alert3 = $('.alert').data('errorPassword3');
const alert4 = $('.alert').data('succsesPassword');
const alert5 = $('.alert').data('succesEdit');
const alert6 = $('.alert').data('successVerif');
const alert7 = $('.alert').data('errorUpload1');
const alert8 = $('.alert').data('errorUpload2');
const alert9 = $('.alert').data('errorUpload3');

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
  },3000);
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
  },2000);
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
}, 1000)

setInterval(function() {
  $.ajax({
    url: "cekStatusUser.php",
    success: function(data) {
      $("#user-aktif").html(data);
    }
  })
}, 1000)

setInterval(function () {
  $.ajax({
    url: 'UpdateStatus.php',
    success: function (data) {
    },
  });
}, 2000);


$('.cardHome-4').on('click',()=>{
  window.location.href = 'status.akun.php';
})


var isActive = false;
$('.liatSemua1').on('click', function () {
  if (isActive) {
    $('.statusPem-lunas').css('max-height', '290px');
    $(this).html('Lihat semua');
    $('#iconLihat1').css('transform', 'rotate(90deg)');
  } else {
    $('.statusPem-lunas').css('max-height', 'max-content');
    $(this).html('Lihat sebagian');
    $('#iconLihat1').css('transform', 'rotate(-90deg)');
  }
  isActive = !isActive;
});

var isActive = false;
$('.liatSemua2').on('click', function () {
  if (isActive) {
    $('.statusPem-belum').css('max-height', '290px');
    $(this).html('Lihat semua');
    $('#iconLihat2').css('transform', 'rotate(90deg)');
  } else {
    $('.statusPem-belum').css('max-height', 'max-content');
    $(this).html('Lihat sebagian');
    $('#iconLihat2').css('transform', 'rotate(-90deg)');
  }
  isActive = !isActive;
});

$('.cardList').on('click',function(){
  const dataId = $(this).attr('data-id');
  window.location.href = 'get.pembayaran.php?id='+dataId;
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

