import "dart:io";

void main() {
  stdout.write("Masukkan Banyaknya Bilangan : ");
  var n = int.parse(stdin.readLineSync()!);
  int terbesar = 0;
  int terkecil = 0;
  int jumlah = 0;
  int rerata = 0;

  for (int i = 1; i <= n; i++) {
    stdout.write("Masukkan Bilangan ke$i: ");
    int bil = int.parse(stdin.readLineSync()!);
    if (i == 1) {
      terbesar = bil;
      terkecil = bil;
    } else {
      if (terbesar < bil) terbesar = bil;
      if (terkecil > bil) terkecil = bil;
    }
    jumlah = jumlah + bil;
  }

  print("Bilangan Terbesar = $terbesar");
  print("Bilangan Terkecil = $terkecil");
  print("Jumlah Bilangan = $jumlah");
  print("Rata - rata Bilangan = ${jumlah / 2}");
}
