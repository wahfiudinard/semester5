import "dart:io";

void main() {
  stdout.write('Masukkan nilai : ');
  var nilai = num.parse(stdin.readLineSync()!);
  var nilai = stdin.readLineSync()!;
  var pesan;

  switch (nilai) {
    case "A":
      pesan = "Masya Allah, Luar Biasa";
      break;
    case "B":
      pesan = "Mantap, tingkatkan lagi ya";
      break;
    case "C":
      pesan = "Lumayan, tapi belajar lebih giat lagi";
      break;
    case "D":
      pesan = "Waduh harus lebih banyak belajar dan latihan lagi";
      break;
    case "E":
      pesan = "Anda Gagal Total";
      break;
    default:
      pesan = "Anda Error";
  }
  print(pesan);
}
