import 'dart:io';
import 'transaksi.dart';

void main(){
  var obj = new menu();
  obj.main();
}

class menu{
  void main(){
    var pilih;
    print('================================');
    print('SELAMAT DATANG DI BANK CAMA');
    print('MENU');
    print('[1] Buat Account');
    print('[2] Transaksi');
    print('[3] EXIT');
    stdout.write('MASUKAN PILIHAN [1..3] : ');
    pilih = stdin.readLineSync();
    print('===============================');
    switch (pilih) {
      case '1':
        stdout.write('Silahkan Hubungi CS');
        break;
      case '2':
        transaksi().main();
        break;
      case '3':
        break;
      default:
        print('Menu Pilihan Tidak ada');
        main();
    }
  }
}