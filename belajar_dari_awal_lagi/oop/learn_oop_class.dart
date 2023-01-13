/// OOP itu adalah paradigma pemrograman di mana kita menganggap semua hal itu adalah object dan class

// class itu adalah blueprint dari suatu object => definisi suatu tipe
// object itu adalah instance dari kelas => hasil cetakan

// class - object
// manusia - ipul
// anjing - doge

// kingdom
class Animal {
  // property / Instance variables / member
  String namaPanggilan;
  int jumlahKaki;
  int jumlahMata;
  // constructor => digunakan ketika kita mau buat suatu instance class
  Animal(
      {required this.namaPanggilan,
      required this.jumlahKaki,
      required this.jumlahMata}); // inisasi properties dari class ini

  /// behavior / method => function / ini juga member
  bersuara(String suaranyaGimana) {
    print("Suaranya yaitu: $suaranyaGimana");
  }

  bergerak() {
    // jalan
  }

  makan() {}
}

// var contohAnimal = Animal(namaPanggilan: namaPanggilan, jumlahKaki: jumlahKaki, jumlahMata: jumlahMata)
var contohDataDariInternet = Human.asian("Majid");

class Human {
  final String nama;
  final String jenisKelamin;
  final int umur;
  final int tinggiBadan;
  final String? hobi; // kalau ga diisi dia null
  final String? pendidikan;
  // Constructor untuk pembuatan instance Human
  // kita buat constructor const, supaya nanti bisa kita bandingin datanya kalau sama
  // tapi pas inisialisasi, kita tetep harus manggil constructor nya dengan keyword const juga
  const Human(this.nama, this.jenisKelamin, this.umur, this.tinggiBadan,
      {this.hobi, this.pendidikan});

  /// named constructor
  Human.european()
      : nama = "",
        jenisKelamin = "L",
        umur = 0,
        tinggiBadan = 190,
        hobi = "Mabar",
        pendidikan = "SD";
  Human.asian(String a)
      : nama = a,
        jenisKelamin = "L",
        umur = 0,
        tinggiBadan = 190,
        hobi = "Healing",
        pendidikan = "TK";

  factory Human.african() {
    return contohDataDariInternet;
  }
}
// . => operator accesor

// class Vertebrata extends Animal {}
late Animal? anjingPeliharaanIpul;
void main(List<String> args) {
  anjingPeliharaanIpul =
      Animal(namaPanggilan: "Doge", jumlahKaki: 4, jumlahMata: 2);
  anjingPeliharaanIpul?.bersuara("Kwek Kwek");
  // bersuara();
  print(anjingPeliharaanIpul);
  print("Nama si anjing: ${anjingPeliharaanIpul?.namaPanggilan}");
  print("Jumlah kaki si anjing: ${anjingPeliharaanIpul?.jumlahKaki}");
  print("Jumlah mata si anjing: ${anjingPeliharaanIpul?.jumlahMata}");

  var upin = Human("Upin ", "L", 5, 100,
      hobi: "Mancing",
      pendidikan:
          "SD"); // upin dan ipin adalah 2 instance yang berbeda dari class Human
  var ipin = const Human("Ipin ", "L", 5, 100,
      pendidikan: "Tadika Mesra", hobi: "Mancing juga");
  var ipin2 = const Human("Ipin ", "L", 5, 100,
      pendidikan: "Tadika Mesra", hobi: "Mancing juga");
  print("Apakah orang yang sama: ${ipin == ipin2}");
  // ipin.hobi = "Mabar";
  var hobiIpin = ipin.hobi;
  print(hobiIpin);

  print("Tipe data variabel upin: ${upin.runtimeType}");

  /// type casting
  String a = "02abshsbd3";
  int? b = int.tryParse(a);

  var orangBule = Human.european();
  var orangCina = Human.asian("Aldi");

  if (ipin is Human) {
    print("Ya, benar");
  }
}
