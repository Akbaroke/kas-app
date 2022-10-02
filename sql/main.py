def jalankan(data):
  nim_ = data[0]
  nama_ = data[1]
  foto_ = data[2]
  password_ = "123"
  status_ = "user"
  
  print(f"INSERT INTO `akun`(`id`, `nim`, `password`, `nama`, `foto`, `status_akun`) VALUES ('','{nim_}','{password_}','{nama_}','{foto_}','{status_}');", file=open("data_insert.txt", "a"))


file = open('akun.txt', 'r').readlines()
combo = [items.rstrip()for items in file]
for line in combo:
  data = line.split('|')
  
  jalankan(data)