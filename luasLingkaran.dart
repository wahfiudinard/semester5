import "dart:io";
import "lingkaran_lib.dart";

void main(){
    stdout.write("Masukkan radius lingkaran : ");
    var r = num.parse(stdin.readLineSync()!);
    var lingkaran = new Lingkaran(r);
    
    //lingkaran.hitungLuas();
    print("Lingkaran dengan radius : "+lingkaran.getR().toString());
    print("Luas : "+lingkaran.luas);
    print("Keliling : "+lingkaran.keliling);
    //lingkaran.hitungKeliling();
}