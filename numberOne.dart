/*
  Manajemen Inventaris Sederhana: Sebuah toko kecil ingin membuat sistem manajemen inventaris sederhana. 
  Mereka perlu menyimpan nama produk (String), jumlah stok (int), dan harga per unit (double). 
  Buatlah program Dart yang mendeklarasikan variabel untuk tiga produk berbeda dengan detail tersebut, 
  lalu cetak informasi lengkap untuk setiap produk ke konsol. 
  Jelaskan mengapa Anda memilih tipe data tertentu untuk setiap variabel.
*/
void main(List<String> args) {
  // alasan penggunaan tipe data Map untuk manajemen data karena mengakses data lebih cepat,
  // serta mencegah adanya duplikasi data, serta memudahkan dan memanipulasi data tersebut
  var product = {
    'Buku': {'jumlah': 10, 'harga': 10.000},
    'Pensil': {'jumlah': 5, 'harga': 2.000},
    'Pena': {'jumlah': 7, 'harga': 3.000},
  };
  print(product);
  // Manipulasi data sistem manajemen inventaris
  // Mengambil data Buku dengan jumlah
  print(product['Buku']!['jumlah']);
  // Mengambil data Pensil dengan harga
  print(product['Pensil']!['harga']);
  // Menambahkan data pada variabel product
  product['Penghapus'] = {'jumlah': 12, 'harga': 1.000};
}
