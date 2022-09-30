void main() {
  var jamSekarang = 7.8;
  var jamBuka = 8;
  var statusToko =
      jamSekarang > jamBuka ? "Toko Sudah Buka" : "Toko Masih Tutup";

  print("Kondisi toko saat ini : $statusToko");

  var nama;
  var pembeli = nama ?? "Pembeli Umum";
  print("Nama Pembeli : $pembeli");
}
