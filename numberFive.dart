/*
  Simulasi Login Pengguna: Anda sedang membangun prototipe sistem login. 
  Buatlah program Dart yang meminta pengguna memasukkan username (String) dan password (String). 
  Gunakan kondisi if-else untuk memeriksa apakah username adalah "admin" dan password adalah "rahasia123". 
  Jika cocok, cetak "Login Berhasil!"; jika tidak, cetak "Username atau Password salah.".
*/
import 'dart:io';

void main(List<String> args) {
  var database = {
    {'user': 'admin', 'pass': 'rahasia123'},
    {'user': 'john', 'pass': 'john123'},
    {'user': 'bot', 'pass': 'bot123'},
  };

  stdout.write('masukan username anda: ');
  String? username = stdin.readLineSync() ?? '';

  stdout.write('masukan password: ');
  String? password = stdin.readLineSync() ?? '';

  bool isAuth = false;

  for (var data in database) {
    var user = data['user']!;
    var pass = data['pass']!;

    if (username == user && password == pass) {
      isAuth = true;
      break;
    }
  }

  if (isAuth) {
    print('anda berhasil Login');
  } else {
    print('username atau password anda salah');
  }
}
