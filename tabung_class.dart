import "dart:io";

class Tabung{
    num? tinggi;
    Tabung(num? tinggi){
        this.tinggi=tinggi;
    }

    num? r_alas;
    Lingkaran(num? r_alas){
        this.r_alas=r_alas;
    }

    setR(num? r_alas) => r_alas = r_alas;
    num? getR() => r_alas;

    get luas_alas {
        var luasAlas = 22/7 * r_alas! * r_alas!;
        return luasAlas.toStringAsFixed(2);
    }

    get kel_alas {
        var kelAlas = 2 * 22/7 * r_alas!;
        return kelAlas.toStringAsFixed(2);
    }

    get volume {
        var v = luas_alas * tinggi!;
        return v.toStringAsFixed(2);
    }

    get luas_penampang_luar {
        var luasPenampangLuar = 2 * (luas_alas + kel_alas) * tinggi!;
        return luasPenampangLuar.toStringAsFixed(2);
    }
}

void main(){
    stdout.write("Masukkan radius lingkaran : ");
    var r_alas = num.parse(stdin.readLineSync()!);
    var tabung = new Tabung(tinggi);
    var lingkaran = new Lingkaran(r_alas);

    print("Lingkaran dengan radius : "+tabung.getR().toString());
    print("Luas alas : "+tabung.luas_alas);
    print("Keliling alas : "+tabung.kel_alas);
}