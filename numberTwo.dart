/*
  Kalkulator Angka Aman: Anda sedang mengembangkan kalkulator mini yang hanya memproses angka positif. 
  Buatlah fungsi Dart yang menerima dua angka (double). Sebelum melakukan operasi aritmatika (misalnya, penjumlahan atau perkalian), 
  periksa apakah kedua angka tersebut bukan null dan positif. Jika salah satu angka null atau negatif, 
  berikan pesan kesalahan yang sesuai. Tunjukkan penggunaan null safety dalam implementasi Anda.
*/
import 'dart:io';

double penjumlahan(double a, double b) => a + b;
double pengurangan(double a, double b) => a - b;
double perkalian(double a, double b) => a * b;
double pembagian(double a, double b) => a / b;

void main(List<String> args) {
  print('Selamat Datang diKalkulator Mini!');

  stdout.write('Masukan Angka Pertama: ');
  double? value1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Masukan Operasi Aritmatika: ');
  String? operasi = stdin.readLineSync() ?? '';

  stdout.write('Masukan Angka Kedua: ');
  double? value2 = double.tryParse(stdin.readLineSync() ?? '');

  // didalam pengkondisian pertama terdapat pengecekan sebuah variabel value1 & value2
  // apakah kedua nilai atau salah 1 bernilai null jika bernilai null akan menampilkan pesan kesalahan
  if (value1 == null || value2 == null) {
    print('nilai yang anda masukan bernilai NULL');
    return; // menghentikan program
  }

  // didalam kondisi kedua juga memberikan penegasan bahwa variabel value tidak memiliki angka null
  if (value1 < 0 || value2 < 0) {
    print('nilai yang anda masukan negatif');
    return; // menghentikan program
  }

  if (operasi == '+') {
    print('Hasil: ${penjumlahan(value1, value2)}');
  } else if (operasi == '-') {
    print('Hasil: ${pengurangan(value1, value2)}');
  } else if (operasi == '*') {
    print('Hasil: ${perkalian(value1, value2)}');
  } else if (operasi == '/') {
    print('Hasil: ${pembagian(value1, value2)}');
  } else {
    print('format tersebut tidak ada');
  }
}
