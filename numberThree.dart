/*
  Sistem Penilaian Mahasiswa: Sebagai asisten dosen, Anda perlu mengelola nilai mahasiswa. 
  Buatlah sebuah List di Dart yang berisi nama-nama mata kuliah (String). 
  Kemudian, gunakan Map untuk menyimpan nilai mahasiswa, 
  di mana kunci adalah nama mata kuliah dan nilainya adalah nilai angka (double). 
  Demonstrasikan cara menambahkan mata kuliah baru ke List dan menambahkan nilai untuk mata kuliah tersebut ke Map. 
  Jelaskan juga bagaimana Anda akan mencari nilai mata kuliah tertentu menggunakan Map.
*/

void main(List<String> args) {
  // Menggunakan nested MAP
  var mataKuliah = {
    1.0: {
      'algoritma pemrograman': {'nama': 'John doe', 'nilai': 80},
      'pemrograman web': {'nama': 'John doe', 'nilai': 85},
      'struktur data': {'nama': 'John doe', 'nilai': 87},
    },
    2.0: {
      'algoritma pemrograman': {'nama': 'Stevan', 'nilai': 90},
      'pemrograman web': {'nama': 'Stevan', 'nilai': 88},
      'struktur data': {'nama': 'Stevan', 'nilai': 80},
    },
  };
  // print(mataKuliah);
  // untuk mengambil nama kata kuliah tertentu nama dan nilainya
  print(mataKuliah[1.0]?['algoritma pemrograman']?['nama']);
  print(mataKuliah[1.0]?['algoritma pemrograman']?['nilai']);

  print(mataKuliah[2.0]?['algoritma pemrograman']?['nama']);
  print(mataKuliah[2.0]?['algoritma pemrograman']?['nilai']);

  // untuk menambahkan data sebagai berikut:
  mataKuliah[1.0]?['matematika diskrit'] = {'nama': 'john doe', 'nilai': 79};
  print(mataKuliah);

  // untuk mengapus data sebagai berikut:
  mataKuliah[1.0]?.remove('matematika diskrit');
  print(mataKuliah[1.0]);
}
