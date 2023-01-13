/// OOP itu adalah paradigma pemrograman di mana kita menganggap semua hal itu adalah object dan class

// class itu adalah blueprint dari suatu object => definisi suatu tipe
// object itu adalah instance dari kelas => hasil cetakan

// class - object
// manusia - ipul
// anjing - doge

// kingdom
class Animal {
  // property / member
  String namaPanggilan;
  int jumlahKaki;
  int jumlahMata;
  // constructor => digunakan ketika kita mau buat suatu instance class
  Animal(
      {required this.namaPanggilan,
      required this.jumlahKaki,
      required this.jumlahMata}); // inisasi properties dari class ini

  /// behavior => function
  bersuara(String suaranyaGimana) {
    print("Suaranya yaitu: $suaranyaGimana");
  }

  bergerak() {
    // jalan
  }

  makan() {}
}

class Human {
  String nama;
  String jenisKelamin;
  int umur;
  int tinggiBadan;
  String? hobi; // kalau ga diisi dia null
  String? pendidikan;
  // Constructor untuk pembuatan instance Human
  Human(this.nama, this.jenisKelamin, this.umur, this.tinggiBadan,
      {this.hobi, this.pendidikan});
}
// . => operator accesor

// class Vertebrata extends Animal {}
Animal? anjingPeliharaanIpul;
void main(List<String> args) {
  Animal? anjingPeliharaanIpul =
      Animal(namaPanggilan: "Doge", jumlahKaki: 4, jumlahMata: 2);
  anjingPeliharaanIpul.bersuara("Kwek Kwek");
  print(anjingPeliharaanIpul);
  print("Nama si anjing: ${anjingPeliharaanIpul.namaPanggilan}");
  print("Jumlah kaki si anjing: ${anjingPeliharaanIpul.jumlahKaki}");
  print("Jumlah mata si anjing: ${anjingPeliharaanIpul.jumlahMata}");

  var upin = Human("Upin ", "L", 5, 100,
      hobi: "Mancing",
      pendidikan:
          "SD"); // upin dan ipin adalah 2 instance yang berbeda dari class Human
  var ipin = Human("Ipin ", "L", 5, 100,
      pendidikan: "Tadika Mesra", hobi: "Mancing juga");
  ipin.hobi = "Mabar";
  var hobiIpin = ipin.hobi;
  print(hobiIpin);
}
