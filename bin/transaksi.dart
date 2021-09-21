import 'dart:io';
import 'atm_sederhana.dart';

class transaksi{
  double saldo = 1000000;
  List<String> pin = ['123456','654321'];
  // Map<String, dynamic> saldo = {'123456':'20000000','654321':'100000'};

  void main() {

    stdout.write('Masukan PIN anda : ');
    String pinn = stdin.readLineSync()!.trim();
    for(int a=0; a< pin.length;a++){
      String pinnn = pin[a];
      if (pinn == pinnn) {
        trnsmenu();
      }else {
        menu();
      }
    }
  }

  void trnsmenu(){
    print('==============================================');
    print('================Pilihan Menu==================');
    print('[1] Cek saldo');
    print('[2] Tarik Tunai');
    print('[3] Setor Tunai');
    print('[0] exit');
    print('==============================================');
    stdout.write('Pilih menu : ');
    var pilih = stdin.readLineSync();
    switch (pilih) {
      case '1':
        ceksaldo();
        break;
      case '2':
        tariktunai();
        break;
      case '3':
        setortunai();
        break;
      case '0':

        break;
      default:
        trnsmenu();
    }
  }

  void ceksaldo(){
    print('');
    stdout.write('Saldo Anda : ');
    stdout.write(this.saldo);
    print('');
    trnsmenu();
  }


  void setortunai(){
    stdout.write('Setor Tunai : ');
    var tambahsaldo = stdin.readLineSync();
    this.saldo = this.saldo + double.parse(tambahsaldo!);
    print('');
    stdout.write('Saldo anda Saat ini : ');
    stdout.write(this.saldo);
    print('');
    trnsmenu();
  }

  void tariktunai(){
    stdout.write('Tarik Tunai : ');
    var kurangsaldo = stdin.readLineSync();
    this.saldo = this.saldo - double.parse(kurangsaldo!);
    print('');
    stdout.write('Saldo anda Saat ini : ');
    stdout.write(this.saldo);
    print('');
    trnsmenu();
  }


}