//Defining Class
class Mahasiswa {
    var nim;
    
    var name;

    var age;

//Class function
tampilininfo(){
    print("NIM Mahasiswa : $nim");
    print("Nama Mahasiswa : $name");
    print("Umut Mahasiswa : $age");
    }
}

void main(){
    var mhs = new Mahasiswa();
    mhs.nim = "12201765";
    mhs.name = "Wahfiudin";
    mhs.age = "21";
    
    mhs.tampilininfo();
}