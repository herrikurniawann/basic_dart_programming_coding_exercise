/*
  Analisis Data Pengguna: Sebuah aplikasi baru mengumpulkan data pengguna. 
  Anda memiliki sekumpulan data ID pengguna (int) yang mungkin memiliki duplikasi karena kesalahan sistem. 
  Buatlah sebuah Set di Dart untuk menyimpan ID pengguna unik dari kumpulan data awal yang berisi duplikasi. 
  Setelah itu, tambahkan beberapa ID pengguna baru ke Set tersebut dan cetak semua ID unik yang tersimpan.
*/

void main(List<String> args) {
  var numberId = [01, 01, 02, 03, 02, 04, 05, 06, 07, 08, 09, 10, 11];
  // konversi ke Set untuk mencegah duplikasi data
  var _numberId = {...numberId};
  _numberId.add(11);
  print(_numberId);
}
